// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_all_posts.data.gql.g.dart';

abstract class GGetAllPostsData
    implements Built<GGetAllPostsData, GGetAllPostsDataBuilder> {
  GGetAllPostsData._();

  factory GGetAllPostsData([void Function(GGetAllPostsDataBuilder b) updates]) =
      _$GGetAllPostsData;

  static void _initializeBuilder(GGetAllPostsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAllPostsData_posts> get posts;
  static Serializer<GGetAllPostsData> get serializer =>
      _$gGetAllPostsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllPostsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllPostsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllPostsData.serializer,
        json,
      );
}

abstract class GGetAllPostsData_posts
    implements Built<GGetAllPostsData_posts, GGetAllPostsData_postsBuilder> {
  GGetAllPostsData_posts._();

  factory GGetAllPostsData_posts(
          [void Function(GGetAllPostsData_postsBuilder b) updates]) =
      _$GGetAllPostsData_posts;

  static void _initializeBuilder(GGetAllPostsData_postsBuilder b) =>
      b..G__typename = 'Post';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get title;
  String get content;
  _i2.GTime get updatedAt;
  String get authorId;
  int get commentCount;
  GGetAllPostsData_posts_authorInfo get authorInfo;
  static Serializer<GGetAllPostsData_posts> get serializer =>
      _$gGetAllPostsDataPostsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllPostsData_posts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllPostsData_posts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllPostsData_posts.serializer,
        json,
      );
}

abstract class GGetAllPostsData_posts_authorInfo
    implements
        Built<GGetAllPostsData_posts_authorInfo,
            GGetAllPostsData_posts_authorInfoBuilder> {
  GGetAllPostsData_posts_authorInfo._();

  factory GGetAllPostsData_posts_authorInfo(
          [void Function(GGetAllPostsData_posts_authorInfoBuilder b) updates]) =
      _$GGetAllPostsData_posts_authorInfo;

  static void _initializeBuilder(GGetAllPostsData_posts_authorInfoBuilder b) =>
      b..G__typename = 'AuthorInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get pictureUrl;
  static Serializer<GGetAllPostsData_posts_authorInfo> get serializer =>
      _$gGetAllPostsDataPostsAuthorInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllPostsData_posts_authorInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllPostsData_posts_authorInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllPostsData_posts_authorInfo.serializer,
        json,
      );
}
