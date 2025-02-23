// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i2;

part 'update_post.var.gql.g.dart';

abstract class GUpdatePostVars
    implements Built<GUpdatePostVars, GUpdatePostVarsBuilder> {
  GUpdatePostVars._();

  factory GUpdatePostVars([void Function(GUpdatePostVarsBuilder b) updates]) =
      _$GUpdatePostVars;

  int get id;
  _i1.GPostUpdateInput get input;
  static Serializer<GUpdatePostVars> get serializer =>
      _$gUpdatePostVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdatePostVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdatePostVars.serializer,
        json,
      );
}
