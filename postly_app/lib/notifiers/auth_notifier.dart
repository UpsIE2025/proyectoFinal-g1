import 'dart:async';

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:ferry/ferry.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:postly_app/graphql/fcmtoken/__generated__/add_remove_fcmtoken.req.gql.dart';
import 'package:postly_app/models/user.dart';
import 'package:postly_app/notifiers/_consts.dart';

part 'auth_notifier.freezed.dart';

const _fcmTokenStorageKey = "fcmToken";

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    User? user,
  }) = _AuthState;

  bool get isLoggedIn => user != null;
}

class AuthNotifier extends AsyncNotifier<AuthState> {
  StreamSubscription<String?>? _fcmTokenSub;
  static final _storage = FlutterSecureStorage();
  static final _auth0 = Auth0(auth0Domain, auth0ClientId);

  @override
  FutureOr<AuthState> build() async {
    final isValid = await _auth0.credentialsManager.hasValidCredentials();
    if (isValid) {
      final creds = await _auth0.credentialsManager.credentials();
      return AuthState(user: _userFromCreds(creds));
    }
    return const AuthState();
  }

  Future<void> login() async {
    final curState = await future;
    if (curState.isLoggedIn) return;
    final creds = await _auth0.webAuthentication(scheme: auth0Scheme).login();
    await _auth0.credentialsManager.storeCredentials(creds);
    _listenFCMTokens();
    state = AsyncValue.data(AuthState(
      user: _userFromCreds(creds),
    ));
  }

  Future<String> getAccessToken() async {
    try {
      final creds = await _auth0.credentialsManager.credentials();
      return creds.accessToken;
    } catch (_) {
      return "";
    }
  }

  Future<void> logout() async {
    await future;
    await _clearFCMOnLogout();
    await _auth0.webAuthentication(scheme: auth0Scheme).logout();
    await _auth0.credentialsManager.clearCredentials();
    state = AsyncValue.data(const AuthState());
  }

  User _userFromCreds(Credentials creds) {
    String name = "Sin Nombre";
    if (creds.user.name != null) {
      name = creds.user.name!;
    } else if (creds.user.nickname != null) {
      name = creds.user.nickname!;
    }
    return User(
      id: creds.user.sub,
      name: name,
      email: creds.user.email ?? "no-email@email.com",
      pictureUrl: creds.user.pictureUrl?.toString() ?? "",
    );
  }

  // ===============================================================
  // FCM Token management
  // ===============================================================

  void _listenFCMTokens() async {
    final tk = await FirebaseMessaging.instance.getToken();
    await _saveFCMToken(tk);
    if (_fcmTokenSub != null) return;
    _fcmTokenSub = FirebaseMessaging.instance.onTokenRefresh.listen(_saveFCMToken);
  }

  Future<void> _saveFCMToken(String? token) async {
    if (token == null) return;
    final curTk = await _storage.read(key: _fcmTokenStorageKey);
    await _addRemoveFCMTokenInServer(token, curTk != token ? curTk : null);
    await _storage.write(key: _fcmTokenStorageKey, value: token);
  }

  Future<void> _clearFCMOnLogout() async {
    if (_fcmTokenSub != null) {
      await _fcmTokenSub!.cancel();
      _fcmTokenSub = null;
    }
    final token = await _storage.read(key: _fcmTokenStorageKey);
    await _addRemoveFCMTokenInServer(null, token);
    await _storage.delete(key: _fcmTokenStorageKey);
  }

  Future<void> _addRemoveFCMTokenInServer(
    String? addedToken,
    String? removedToken,
  ) async {
    try {
      final token = await getAccessToken();
      final client = Client(
          link: HttpLink(graphApiUrl, defaultHeaders: {"Authorization": "Bearer $token"}),
          defaultFetchPolicies: {
            OperationType.query: FetchPolicy.NoCache,
          });
      final resp = await client
          .request(GFCMTokenAddOrRemoveReq(
            (b) => b
              ..vars.addToken = addedToken
              ..vars.removeToken = removedToken,
          ))
          .first;
      if (resp.hasErrors) {
        throw 'graphql errors';
      }
      if (resp.data!.addOrRemoveFCMToken.error != null) {
        throw resp.data!.addOrRemoveFCMToken.error!.message;
      }
    } catch (e) {
      print(e);
    }
  }
}

final authNotifierProvider =
    AsyncNotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

final authUserProvider = Provider<User>((ref) {
  final s = ref.watch(authNotifierProvider);
  const empty = User(id: "", name: "", email: "", pictureUrl: "");
  return s.maybeWhen(
    data: (authState) => authState.user ?? empty,
    orElse: () => empty,
  );
});
