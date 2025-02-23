// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'update_post.data.gql.g.dart';

abstract class GUpdatePostData
    implements Built<GUpdatePostData, GUpdatePostDataBuilder> {
  GUpdatePostData._();

  factory GUpdatePostData([void Function(GUpdatePostDataBuilder b) updates]) =
      _$GUpdatePostData;

  static void _initializeBuilder(GUpdatePostDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdatePostData_postUpdate get postUpdate;
  static Serializer<GUpdatePostData> get serializer =>
      _$gUpdatePostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostData.serializer,
        json,
      );
}

abstract class GUpdatePostData_postUpdate
    implements
        Built<GUpdatePostData_postUpdate, GUpdatePostData_postUpdateBuilder> {
  GUpdatePostData_postUpdate._();

  factory GUpdatePostData_postUpdate(
          [void Function(GUpdatePostData_postUpdateBuilder b) updates]) =
      _$GUpdatePostData_postUpdate;

  static void _initializeBuilder(GUpdatePostData_postUpdateBuilder b) =>
      b..G__typename = 'PostUpdatePayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdatePostData_postUpdate_post? get post;
  GUpdatePostData_postUpdate_error? get error;
  static Serializer<GUpdatePostData_postUpdate> get serializer =>
      _$gUpdatePostDataPostUpdateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostData_postUpdate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostData_postUpdate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostData_postUpdate.serializer,
        json,
      );
}

abstract class GUpdatePostData_postUpdate_post
    implements
        Built<GUpdatePostData_postUpdate_post,
            GUpdatePostData_postUpdate_postBuilder> {
  GUpdatePostData_postUpdate_post._();

  factory GUpdatePostData_postUpdate_post(
          [void Function(GUpdatePostData_postUpdate_postBuilder b) updates]) =
      _$GUpdatePostData_postUpdate_post;

  static void _initializeBuilder(GUpdatePostData_postUpdate_postBuilder b) =>
      b..G__typename = 'Post';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GTime get updatedAt;
  String get title;
  String get content;
  static Serializer<GUpdatePostData_postUpdate_post> get serializer =>
      _$gUpdatePostDataPostUpdatePostSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostData_postUpdate_post.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostData_postUpdate_post? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostData_postUpdate_post.serializer,
        json,
      );
}

abstract class GUpdatePostData_postUpdate_error
    implements
        Built<GUpdatePostData_postUpdate_error,
            GUpdatePostData_postUpdate_errorBuilder> {
  GUpdatePostData_postUpdate_error._();

  factory GUpdatePostData_postUpdate_error(
          [void Function(GUpdatePostData_postUpdate_errorBuilder b) updates]) =
      _$GUpdatePostData_postUpdate_error;

  static void _initializeBuilder(GUpdatePostData_postUpdate_errorBuilder b) =>
      b..G__typename = 'Error';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  static Serializer<GUpdatePostData_postUpdate_error> get serializer =>
      _$gUpdatePostDataPostUpdateErrorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostData_postUpdate_error.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostData_postUpdate_error? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostData_postUpdate_error.serializer,
        json,
      );
}
