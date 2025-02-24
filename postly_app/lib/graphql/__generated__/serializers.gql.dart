// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart'
    show
        GCommentCreateInput,
        GCommentUpdateInput,
        GPostCreateInput,
        GPostUpdateInput,
        GTime;
import 'package:postly_app/graphql/comment/__generated__/create_comment.data.gql.dart'
    show
        GCreateCommentData,
        GCreateCommentData_commentCreate,
        GCreateCommentData_commentCreate_comment,
        GCreateCommentData_commentCreate_comment_authorInfo,
        GCreateCommentData_commentCreate_error;
import 'package:postly_app/graphql/comment/__generated__/create_comment.req.gql.dart'
    show GCreateCommentReq;
import 'package:postly_app/graphql/comment/__generated__/create_comment.var.gql.dart'
    show GCreateCommentVars;
import 'package:postly_app/graphql/fcmtoken/__generated__/add_remove_fcmtoken.data.gql.dart'
    show
        GFCMTokenAddOrRemoveData,
        GFCMTokenAddOrRemoveData_addOrRemoveFCMToken,
        GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error;
import 'package:postly_app/graphql/fcmtoken/__generated__/add_remove_fcmtoken.req.gql.dart'
    show GFCMTokenAddOrRemoveReq;
import 'package:postly_app/graphql/fcmtoken/__generated__/add_remove_fcmtoken.var.gql.dart'
    show GFCMTokenAddOrRemoveVars;
import 'package:postly_app/graphql/post/__generated__/create_post.data.gql.dart'
    show
        GCreatePostData,
        GCreatePostData_postCreate,
        GCreatePostData_postCreate_error,
        GCreatePostData_postCreate_post,
        GCreatePostData_postCreate_post_authorInfo;
import 'package:postly_app/graphql/post/__generated__/create_post.req.gql.dart'
    show GCreatePostReq;
import 'package:postly_app/graphql/post/__generated__/create_post.var.gql.dart'
    show GCreatePostVars;
import 'package:postly_app/graphql/post/__generated__/get_all_posts.data.gql.dart'
    show
        GGetAllPostsData,
        GGetAllPostsData_posts,
        GGetAllPostsData_posts_authorInfo;
import 'package:postly_app/graphql/post/__generated__/get_all_posts.req.gql.dart'
    show GGetAllPostsReq;
import 'package:postly_app/graphql/post/__generated__/get_all_posts.var.gql.dart'
    show GGetAllPostsVars;
import 'package:postly_app/graphql/post/__generated__/get_post_comments.data.gql.dart'
    show
        GGetPostCommentsData,
        GGetPostCommentsData_post,
        GGetPostCommentsData_post_comments,
        GGetPostCommentsData_post_comments_authorInfo;
import 'package:postly_app/graphql/post/__generated__/get_post_comments.req.gql.dart'
    show GGetPostCommentsReq;
import 'package:postly_app/graphql/post/__generated__/get_post_comments.var.gql.dart'
    show GGetPostCommentsVars;
import 'package:postly_app/graphql/post/__generated__/update_post.data.gql.dart'
    show
        GUpdatePostData,
        GUpdatePostData_postUpdate,
        GUpdatePostData_postUpdate_error,
        GUpdatePostData_postUpdate_post;
import 'package:postly_app/graphql/post/__generated__/update_post.req.gql.dart'
    show GUpdatePostReq;
import 'package:postly_app/graphql/post/__generated__/update_post.var.gql.dart'
    show GUpdatePostVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCommentCreateInput,
  GCommentUpdateInput,
  GCreateCommentData,
  GCreateCommentData_commentCreate,
  GCreateCommentData_commentCreate_comment,
  GCreateCommentData_commentCreate_comment_authorInfo,
  GCreateCommentData_commentCreate_error,
  GCreateCommentReq,
  GCreateCommentVars,
  GCreatePostData,
  GCreatePostData_postCreate,
  GCreatePostData_postCreate_error,
  GCreatePostData_postCreate_post,
  GCreatePostData_postCreate_post_authorInfo,
  GCreatePostReq,
  GCreatePostVars,
  GFCMTokenAddOrRemoveData,
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken,
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error,
  GFCMTokenAddOrRemoveReq,
  GFCMTokenAddOrRemoveVars,
  GGetAllPostsData,
  GGetAllPostsData_posts,
  GGetAllPostsData_posts_authorInfo,
  GGetAllPostsReq,
  GGetAllPostsVars,
  GGetPostCommentsData,
  GGetPostCommentsData_post,
  GGetPostCommentsData_post_comments,
  GGetPostCommentsData_post_comments_authorInfo,
  GGetPostCommentsReq,
  GGetPostCommentsVars,
  GPostCreateInput,
  GPostUpdateInput,
  GTime,
  GUpdatePostData,
  GUpdatePostData_postUpdate,
  GUpdatePostData_postUpdate_error,
  GUpdatePostData_postUpdate_post,
  GUpdatePostReq,
  GUpdatePostVars,
])
final Serializers serializers = _serializersBuilder.build();
