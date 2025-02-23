// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_post_comments.var.gql.g.dart';

abstract class GGetPostCommentsVars
    implements Built<GGetPostCommentsVars, GGetPostCommentsVarsBuilder> {
  GGetPostCommentsVars._();

  factory GGetPostCommentsVars(
          [void Function(GGetPostCommentsVarsBuilder b) updates]) =
      _$GGetPostCommentsVars;

  int get postId;
  static Serializer<GGetPostCommentsVars> get serializer =>
      _$gGetPostCommentsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostCommentsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostCommentsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostCommentsVars.serializer,
        json,
      );
}
