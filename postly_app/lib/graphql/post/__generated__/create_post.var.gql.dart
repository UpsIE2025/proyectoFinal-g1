// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i2;

part 'create_post.var.gql.g.dart';

abstract class GCreatePostVars
    implements Built<GCreatePostVars, GCreatePostVarsBuilder> {
  GCreatePostVars._();

  factory GCreatePostVars([void Function(GCreatePostVarsBuilder b) updates]) =
      _$GCreatePostVars;

  _i1.GPostCreateInput? get input;
  static Serializer<GCreatePostVars> get serializer =>
      _$gCreatePostVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreatePostVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreatePostVars.serializer,
        json,
      );
}
