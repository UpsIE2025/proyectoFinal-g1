// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:postly_app/graphql/comment/__generated__/create_comment.ast.gql.dart'
    as _i5;
import 'package:postly_app/graphql/comment/__generated__/create_comment.data.gql.dart'
    as _i2;
import 'package:postly_app/graphql/comment/__generated__/create_comment.var.gql.dart'
    as _i3;

part 'create_comment.req.gql.g.dart';

abstract class GCreateCommentReq
    implements
        Built<GCreateCommentReq, GCreateCommentReqBuilder>,
        _i1.OperationRequest<_i2.GCreateCommentData, _i3.GCreateCommentVars> {
  GCreateCommentReq._();

  factory GCreateCommentReq(
          [void Function(GCreateCommentReqBuilder b) updates]) =
      _$GCreateCommentReq;

  static void _initializeBuilder(GCreateCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateComment',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateCommentVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCreateCommentData? Function(
    _i2.GCreateCommentData?,
    _i2.GCreateCommentData?,
  )? get updateResult;
  @override
  _i2.GCreateCommentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GCreateCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateCommentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateCommentData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateCommentData, _i3.GCreateCommentVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateCommentReq> get serializer =>
      _$gCreateCommentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateCommentReq.serializer,
        json,
      );
}
