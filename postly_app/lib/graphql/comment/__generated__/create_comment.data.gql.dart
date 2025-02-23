// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'create_comment.data.gql.g.dart';

abstract class GCreateCommentData
    implements Built<GCreateCommentData, GCreateCommentDataBuilder> {
  GCreateCommentData._();

  factory GCreateCommentData(
          [void Function(GCreateCommentDataBuilder b) updates]) =
      _$GCreateCommentData;

  static void _initializeBuilder(GCreateCommentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateCommentData_commentCreate get commentCreate;
  static Serializer<GCreateCommentData> get serializer =>
      _$gCreateCommentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData.serializer,
        json,
      );
}

abstract class GCreateCommentData_commentCreate
    implements
        Built<GCreateCommentData_commentCreate,
            GCreateCommentData_commentCreateBuilder> {
  GCreateCommentData_commentCreate._();

  factory GCreateCommentData_commentCreate(
          [void Function(GCreateCommentData_commentCreateBuilder b) updates]) =
      _$GCreateCommentData_commentCreate;

  static void _initializeBuilder(GCreateCommentData_commentCreateBuilder b) =>
      b..G__typename = 'CommentCreatePayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateCommentData_commentCreate_comment? get comment;
  GCreateCommentData_commentCreate_error? get error;
  static Serializer<GCreateCommentData_commentCreate> get serializer =>
      _$gCreateCommentDataCommentCreateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_commentCreate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentData_commentCreate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_commentCreate.serializer,
        json,
      );
}

abstract class GCreateCommentData_commentCreate_comment
    implements
        Built<GCreateCommentData_commentCreate_comment,
            GCreateCommentData_commentCreate_commentBuilder> {
  GCreateCommentData_commentCreate_comment._();

  factory GCreateCommentData_commentCreate_comment(
      [void Function(GCreateCommentData_commentCreate_commentBuilder b)
          updates]) = _$GCreateCommentData_commentCreate_comment;

  static void _initializeBuilder(
          GCreateCommentData_commentCreate_commentBuilder b) =>
      b..G__typename = 'Comment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GTime get updatedAt;
  String get content;
  int get postId;
  String get authorId;
  GCreateCommentData_commentCreate_comment_authorInfo get authorInfo;
  static Serializer<GCreateCommentData_commentCreate_comment> get serializer =>
      _$gCreateCommentDataCommentCreateCommentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_commentCreate_comment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentData_commentCreate_comment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_commentCreate_comment.serializer,
        json,
      );
}

abstract class GCreateCommentData_commentCreate_comment_authorInfo
    implements
        Built<GCreateCommentData_commentCreate_comment_authorInfo,
            GCreateCommentData_commentCreate_comment_authorInfoBuilder> {
  GCreateCommentData_commentCreate_comment_authorInfo._();

  factory GCreateCommentData_commentCreate_comment_authorInfo(
      [void Function(
              GCreateCommentData_commentCreate_comment_authorInfoBuilder b)
          updates]) = _$GCreateCommentData_commentCreate_comment_authorInfo;

  static void _initializeBuilder(
          GCreateCommentData_commentCreate_comment_authorInfoBuilder b) =>
      b..G__typename = 'AuthorInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get pictureUrl;
  static Serializer<GCreateCommentData_commentCreate_comment_authorInfo>
      get serializer =>
          _$gCreateCommentDataCommentCreateCommentAuthorInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_commentCreate_comment_authorInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentData_commentCreate_comment_authorInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_commentCreate_comment_authorInfo.serializer,
        json,
      );
}

abstract class GCreateCommentData_commentCreate_error
    implements
        Built<GCreateCommentData_commentCreate_error,
            GCreateCommentData_commentCreate_errorBuilder> {
  GCreateCommentData_commentCreate_error._();

  factory GCreateCommentData_commentCreate_error(
      [void Function(GCreateCommentData_commentCreate_errorBuilder b)
          updates]) = _$GCreateCommentData_commentCreate_error;

  static void _initializeBuilder(
          GCreateCommentData_commentCreate_errorBuilder b) =>
      b..G__typename = 'Error';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  static Serializer<GCreateCommentData_commentCreate_error> get serializer =>
      _$gCreateCommentDataCommentCreateErrorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentData_commentCreate_error.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentData_commentCreate_error? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentData_commentCreate_error.serializer,
        json,
      );
}
