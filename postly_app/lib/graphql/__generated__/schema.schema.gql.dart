// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    as _i2;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCommentCreateInput
    implements Built<GCommentCreateInput, GCommentCreateInputBuilder> {
  GCommentCreateInput._();

  factory GCommentCreateInput(
          [void Function(GCommentCreateInputBuilder b) updates]) =
      _$GCommentCreateInput;

  String get postId;
  String get content;
  static Serializer<GCommentCreateInput> get serializer =>
      _$gCommentCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCommentCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCommentCreateInput.serializer,
        json,
      );
}

abstract class GCommentUpdateInput
    implements Built<GCommentUpdateInput, GCommentUpdateInputBuilder> {
  GCommentUpdateInput._();

  factory GCommentUpdateInput(
          [void Function(GCommentUpdateInputBuilder b) updates]) =
      _$GCommentUpdateInput;

  String get content;
  static Serializer<GCommentUpdateInput> get serializer =>
      _$gCommentUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCommentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCommentUpdateInput.serializer,
        json,
      );
}

abstract class GPostCreateInput
    implements Built<GPostCreateInput, GPostCreateInputBuilder> {
  GPostCreateInput._();

  factory GPostCreateInput([void Function(GPostCreateInputBuilder b) updates]) =
      _$GPostCreateInput;

  String get title;
  String get content;
  static Serializer<GPostCreateInput> get serializer =>
      _$gPostCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostCreateInput.serializer,
        json,
      );
}

abstract class GPostUpdateInput
    implements Built<GPostUpdateInput, GPostUpdateInputBuilder> {
  GPostUpdateInput._();

  factory GPostUpdateInput([void Function(GPostUpdateInputBuilder b) updates]) =
      _$GPostUpdateInput;

  String get title;
  String get content;
  static Serializer<GPostUpdateInput> get serializer =>
      _$gPostUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostUpdateInput.serializer,
        json,
      );
}

abstract class GTime implements Built<GTime, GTimeBuilder> {
  GTime._();

  factory GTime([String? value]) =>
      _$GTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GTime> get serializer => _i2.DefaultScalarSerializer<GTime>(
      (Object serialized) => GTime((serialized as String?)));
}

const Map<String, Set<String>> possibleTypesMap = {};
