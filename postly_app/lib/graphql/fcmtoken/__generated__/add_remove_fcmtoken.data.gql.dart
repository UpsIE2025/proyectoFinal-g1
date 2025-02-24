// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'add_remove_fcmtoken.data.gql.g.dart';

abstract class GFCMTokenAddOrRemoveData
    implements
        Built<GFCMTokenAddOrRemoveData, GFCMTokenAddOrRemoveDataBuilder> {
  GFCMTokenAddOrRemoveData._();

  factory GFCMTokenAddOrRemoveData(
          [void Function(GFCMTokenAddOrRemoveDataBuilder b) updates]) =
      _$GFCMTokenAddOrRemoveData;

  static void _initializeBuilder(GFCMTokenAddOrRemoveDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken get addOrRemoveFCMToken;
  static Serializer<GFCMTokenAddOrRemoveData> get serializer =>
      _$gFCMTokenAddOrRemoveDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFCMTokenAddOrRemoveData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFCMTokenAddOrRemoveData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFCMTokenAddOrRemoveData.serializer,
        json,
      );
}

abstract class GFCMTokenAddOrRemoveData_addOrRemoveFCMToken
    implements
        Built<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken,
            GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder> {
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken._();

  factory GFCMTokenAddOrRemoveData_addOrRemoveFCMToken(
      [void Function(GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder b)
          updates]) = _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken;

  static void _initializeBuilder(
          GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder b) =>
      b..G__typename = 'FCMTokenAddOrRemovePayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error? get error;
  static Serializer<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken>
      get serializer => _$gFCMTokenAddOrRemoveDataAddOrRemoveFCMTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFCMTokenAddOrRemoveData_addOrRemoveFCMToken.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFCMTokenAddOrRemoveData_addOrRemoveFCMToken? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFCMTokenAddOrRemoveData_addOrRemoveFCMToken.serializer,
        json,
      );
}

abstract class GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error
    implements
        Built<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error,
            GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder> {
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error._();

  factory GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error(
      [void Function(
              GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder b)
          updates]) = _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error;

  static void _initializeBuilder(
          GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder b) =>
      b..G__typename = 'Error';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  static Serializer<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error>
      get serializer =>
          _$gFCMTokenAddOrRemoveDataAddOrRemoveFCMTokenErrorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error.serializer,
        json,
      );
}
