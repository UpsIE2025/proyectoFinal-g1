// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:postly_app/graphql/post/__generated__/get_post_comments.ast.gql.dart'
    as _i5;
import 'package:postly_app/graphql/post/__generated__/get_post_comments.data.gql.dart'
    as _i2;
import 'package:postly_app/graphql/post/__generated__/get_post_comments.var.gql.dart'
    as _i3;

part 'get_post_comments.req.gql.g.dart';

abstract class GGetPostCommentsReq
    implements
        Built<GGetPostCommentsReq, GGetPostCommentsReqBuilder>,
        _i1
        .OperationRequest<_i2.GGetPostCommentsData, _i3.GGetPostCommentsVars> {
  GGetPostCommentsReq._();

  factory GGetPostCommentsReq(
          [void Function(GGetPostCommentsReqBuilder b) updates]) =
      _$GGetPostCommentsReq;

  static void _initializeBuilder(GGetPostCommentsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetPostComments',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetPostCommentsVars get vars;
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
  _i2.GGetPostCommentsData? Function(
    _i2.GGetPostCommentsData?,
    _i2.GGetPostCommentsData?,
  )? get updateResult;
  @override
  _i2.GGetPostCommentsData? get optimisticResponse;
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
  _i2.GGetPostCommentsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetPostCommentsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetPostCommentsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetPostCommentsData, _i3.GGetPostCommentsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetPostCommentsReq> get serializer =>
      _$gGetPostCommentsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetPostCommentsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostCommentsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetPostCommentsReq.serializer,
        json,
      );
}
