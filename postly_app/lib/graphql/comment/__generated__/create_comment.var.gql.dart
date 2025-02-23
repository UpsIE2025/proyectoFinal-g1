// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i2;

part 'create_comment.var.gql.g.dart';

abstract class GCreateCommentVars
    implements Built<GCreateCommentVars, GCreateCommentVarsBuilder> {
  GCreateCommentVars._();

  factory GCreateCommentVars(
          [void Function(GCreateCommentVarsBuilder b) updates]) =
      _$GCreateCommentVars;

  _i1.GCommentCreateInput get input;
  static Serializer<GCreateCommentVars> get serializer =>
      _$gCreateCommentVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateCommentVars.serializer,
        json,
      );
}
