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
import 'package:postly_app/graphql/post/__generated__/get_all_posts.data.gql.dart'
    show GGetAllPostsData, GGetAllPostsData_posts;
import 'package:postly_app/graphql/post/__generated__/get_all_posts.req.gql.dart'
    show GGetAllPostsReq;
import 'package:postly_app/graphql/post/__generated__/get_all_posts.var.gql.dart'
    show GGetAllPostsVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCommentCreateInput,
  GCommentUpdateInput,
  GGetAllPostsData,
  GGetAllPostsData_posts,
  GGetAllPostsReq,
  GGetAllPostsVars,
  GPostCreateInput,
  GPostUpdateInput,
  GTime,
])
final Serializers serializers = _serializersBuilder.build();
