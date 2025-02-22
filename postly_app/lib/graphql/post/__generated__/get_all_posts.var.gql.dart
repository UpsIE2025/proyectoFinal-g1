// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_all_posts.var.gql.g.dart';

abstract class GGetAllPostsVars
    implements Built<GGetAllPostsVars, GGetAllPostsVarsBuilder> {
  GGetAllPostsVars._();

  factory GGetAllPostsVars([void Function(GGetAllPostsVarsBuilder b) updates]) =
      _$GGetAllPostsVars;

  static Serializer<GGetAllPostsVars> get serializer =>
      _$gGetAllPostsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetAllPostsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllPostsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetAllPostsVars.serializer,
        json,
      );
}
