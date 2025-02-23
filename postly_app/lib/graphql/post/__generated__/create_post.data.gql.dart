// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'create_post.data.gql.g.dart';

abstract class GCreatePostData
    implements Built<GCreatePostData, GCreatePostDataBuilder> {
  GCreatePostData._();

  factory GCreatePostData([void Function(GCreatePostDataBuilder b) updates]) =
      _$GCreatePostData;

  static void _initializeBuilder(GCreatePostDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreatePostData_postCreate get postCreate;
  static Serializer<GCreatePostData> get serializer =>
      _$gCreatePostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostData.serializer,
        json,
      );
}

abstract class GCreatePostData_postCreate
    implements
        Built<GCreatePostData_postCreate, GCreatePostData_postCreateBuilder> {
  GCreatePostData_postCreate._();

  factory GCreatePostData_postCreate(
          [void Function(GCreatePostData_postCreateBuilder b) updates]) =
      _$GCreatePostData_postCreate;

  static void _initializeBuilder(GCreatePostData_postCreateBuilder b) =>
      b..G__typename = 'PostCreatePayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreatePostData_postCreate_post? get post;
  GCreatePostData_postCreate_error? get error;
  static Serializer<GCreatePostData_postCreate> get serializer =>
      _$gCreatePostDataPostCreateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostData_postCreate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostData_postCreate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostData_postCreate.serializer,
        json,
      );
}

abstract class GCreatePostData_postCreate_post
    implements
        Built<GCreatePostData_postCreate_post,
            GCreatePostData_postCreate_postBuilder> {
  GCreatePostData_postCreate_post._();

  factory GCreatePostData_postCreate_post(
          [void Function(GCreatePostData_postCreate_postBuilder b) updates]) =
      _$GCreatePostData_postCreate_post;

  static void _initializeBuilder(GCreatePostData_postCreate_postBuilder b) =>
      b..G__typename = 'Post';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GTime get updatedAt;
  String get title;
  String get content;
  static Serializer<GCreatePostData_postCreate_post> get serializer =>
      _$gCreatePostDataPostCreatePostSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostData_postCreate_post.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostData_postCreate_post? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostData_postCreate_post.serializer,
        json,
      );
}

abstract class GCreatePostData_postCreate_error
    implements
        Built<GCreatePostData_postCreate_error,
            GCreatePostData_postCreate_errorBuilder> {
  GCreatePostData_postCreate_error._();

  factory GCreatePostData_postCreate_error(
          [void Function(GCreatePostData_postCreate_errorBuilder b) updates]) =
      _$GCreatePostData_postCreate_error;

  static void _initializeBuilder(GCreatePostData_postCreate_errorBuilder b) =>
      b..G__typename = 'Error';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  static Serializer<GCreatePostData_postCreate_error> get serializer =>
      _$gCreatePostDataPostCreateErrorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostData_postCreate_error.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostData_postCreate_error? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostData_postCreate_error.serializer,
        json,
      );
}
