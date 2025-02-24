// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i1;

part 'add_remove_fcmtoken.var.gql.g.dart';

abstract class GFCMTokenAddOrRemoveVars
    implements
        Built<GFCMTokenAddOrRemoveVars, GFCMTokenAddOrRemoveVarsBuilder> {
  GFCMTokenAddOrRemoveVars._();

  factory GFCMTokenAddOrRemoveVars(
          [void Function(GFCMTokenAddOrRemoveVarsBuilder b) updates]) =
      _$GFCMTokenAddOrRemoveVars;

  String? get addToken;
  String? get removeToken;
  static Serializer<GFCMTokenAddOrRemoveVars> get serializer =>
      _$gFCMTokenAddOrRemoveVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFCMTokenAddOrRemoveVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFCMTokenAddOrRemoveVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFCMTokenAddOrRemoveVars.serializer,
        json,
      );
}
