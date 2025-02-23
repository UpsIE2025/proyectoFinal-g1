// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_post_comments.data.gql.g.dart';

abstract class GGetPostCommentsData
    implements Built<GGetPostCommentsData, GGetPostCommentsDataBuilder> {
  GGetPostCommentsData._();

  factory GGetPostCommentsData(
          [void Function(GGetPostCommentsDataBuilder b) updates]) =
      _$GGetPostCommentsData;

  static void _initializeBuilder(GGetPostCommentsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetPostCommentsData_post? get post;
  static Serializer<GGetPostCommentsData> get serializer =>
      _$gGetPostCommentsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostCommentsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostCommentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostCommentsData.serializer,
        json,
      );
}

abstract class GGetPostCommentsData_post
    implements
        Built<GGetPostCommentsData_post, GGetPostCommentsData_postBuilder> {
  GGetPostCommentsData_post._();

  factory GGetPostCommentsData_post(
          [void Function(GGetPostCommentsData_postBuilder b) updates]) =
      _$GGetPostCommentsData_post;

  static void _initializeBuilder(GGetPostCommentsData_postBuilder b) =>
      b..G__typename = 'Post';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetPostCommentsData_post_comments> get comments;
  static Serializer<GGetPostCommentsData_post> get serializer =>
      _$gGetPostCommentsDataPostSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostCommentsData_post.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostCommentsData_post? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostCommentsData_post.serializer,
        json,
      );
}

abstract class GGetPostCommentsData_post_comments
    implements
        Built<GGetPostCommentsData_post_comments,
            GGetPostCommentsData_post_commentsBuilder> {
  GGetPostCommentsData_post_comments._();

  factory GGetPostCommentsData_post_comments(
      [void Function(GGetPostCommentsData_post_commentsBuilder b)
          updates]) = _$GGetPostCommentsData_post_comments;

  static void _initializeBuilder(GGetPostCommentsData_post_commentsBuilder b) =>
      b..G__typename = 'Comment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GTime get updatedAt;
  String get content;
  int get postId;
  String get authorId;
  GGetPostCommentsData_post_comments_authorInfo get authorInfo;
  static Serializer<GGetPostCommentsData_post_comments> get serializer =>
      _$gGetPostCommentsDataPostCommentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostCommentsData_post_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostCommentsData_post_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostCommentsData_post_comments.serializer,
        json,
      );
}

abstract class GGetPostCommentsData_post_comments_authorInfo
    implements
        Built<GGetPostCommentsData_post_comments_authorInfo,
            GGetPostCommentsData_post_comments_authorInfoBuilder> {
  GGetPostCommentsData_post_comments_authorInfo._();

  factory GGetPostCommentsData_post_comments_authorInfo(
      [void Function(GGetPostCommentsData_post_comments_authorInfoBuilder b)
          updates]) = _$GGetPostCommentsData_post_comments_authorInfo;

  static void _initializeBuilder(
          GGetPostCommentsData_post_comments_authorInfoBuilder b) =>
      b..G__typename = 'AuthorInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get pictureUrl;
  static Serializer<GGetPostCommentsData_post_comments_authorInfo>
      get serializer => _$gGetPostCommentsDataPostCommentsAuthorInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostCommentsData_post_comments_authorInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostCommentsData_post_comments_authorInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostCommentsData_post_comments_authorInfo.serializer,
        json,
      );
}
