import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart' show BehaviorSubject;

part 'fcm_service.freezed.dart';
part 'fcm_service.g.dart';

@Freezed(unionKey: "type")
class FCMData with _$FCMData {
  @FreezedUnionValue("newComment")
  const factory FCMData.newComment({required String postId, required String commentId}) =
      _FCMDataNewComment;

  factory FCMData.fromJson(Map<String, dynamic> json) => _$FCMDataFromJson(json);
}

const _androidChannel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description: 'This channel is used for important notifications.', // description
  importance: Importance.high,
);

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

class FCMService {
  static bool _isFlutterLocalNotificationsInitialized = false;
  static final _lnotiPlugin = FlutterLocalNotificationsPlugin();
  static final _notiStreamController = BehaviorSubject<FCMData>();
  static Stream<FCMData> get notiStream => _notiStreamController;

  static Future<void> appInit() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    if (!kIsWeb) await _setupLocalNotifications();
  }

  static Future<void> rootWidgetOnInit(BuildContext context) async {
    /// Request permissions
    if (Platform.isAndroid) {
      await _lnotiPlugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }
    if (Platform.isIOS) {
      await _lnotiPlugin
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(alert: true, badge: true, sound: true);
    }
    // -- capture the message received from terminated state
    final initMsg = await FirebaseMessaging.instance.getInitialMessage();
    if (initMsg != null) _addToStream(initMsg.data);
    // -- capture the message received from background state
    FirebaseMessaging.onMessageOpenedApp.listen((m) => _addToStream(m.data));
    // -- capture the message received from foreground state
    FirebaseMessaging.onMessage.listen(_showLocalNotification);
  }

  static Future<void> _onLocalNotificationTapped(NotificationResponse resp) async {
    if (resp.payload == null) return;
    _addToStream(jsonDecode(resp.payload!));
  }

  static void _addToStream(Map<String, dynamic> json) {
    try {
      final data = FCMData.fromJson(json);
      _notiStreamController.add(data);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  // ===============================================================
  // Configuration privates
  // ===============================================================

  static Future<void> _setupLocalNotifications() async {
    if (_isFlutterLocalNotificationsInitialized) return;
    _isFlutterLocalNotificationsInitialized = true;

    /// Android Settings
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('mipmap/ic_noti');

    /// IOS Settings
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      // these are set when requesting permissions
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    /// Initialize local notification plugin
    await _lnotiPlugin.initialize(
      InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin,
      ),
      onDidReceiveNotificationResponse: _onLocalNotificationTapped,
    );

    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await _lnotiPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_androidChannel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  static void _showLocalNotification(RemoteMessage message) {
    final notification = message.notification;
    if (notification == null || kIsWeb) return;
    final details = NotificationDetails(
      android: AndroidNotificationDetails(
        _androidChannel.id,
        _androidChannel.name,
        channelDescription: _androidChannel.description,
      ),
    );
    _lnotiPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      details,
      payload: jsonEncode(message.data),
    );
  }
}

// ===============================================================
// Providers
// ===============================================================

final fcmNotiStreamProvider = StreamProvider((_) => FCMService.notiStream);
