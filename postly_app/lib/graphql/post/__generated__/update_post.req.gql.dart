// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:postly_app/graphql/post/__generated__/update_post.ast.gql.dart'
    as _i5;
import 'package:postly_app/graphql/post/__generated__/update_post.data.gql.dart'
    as _i2;
import 'package:postly_app/graphql/post/__generated__/update_post.var.gql.dart'
    as _i3;

part 'update_post.req.gql.g.dart';

abstract class GUpdatePostReq
    implements
        Built<GUpdatePostReq, GUpdatePostReqBuilder>,
        _i1.OperationRequest<_i2.GUpdatePostData, _i3.GUpdatePostVars> {
  GUpdatePostReq._();

  factory GUpdatePostReq([void Function(GUpdatePostReqBuilder b) updates]) =
      _$GUpdatePostReq;

  static void _initializeBuilder(GUpdatePostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdatePost',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdatePostVars get vars;
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
  _i2.GUpdatePostData? Function(
    _i2.GUpdatePostData?,
    _i2.GUpdatePostData?,
  )? get updateResult;
  @override
  _i2.GUpdatePostData? get optimisticResponse;
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
  _i2.GUpdatePostData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdatePostData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdatePostData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdatePostData, _i3.GUpdatePostVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdatePostReq> get serializer =>
      _$gUpdatePostReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdatePostReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdatePostReq.serializer,
        json,
      );
}
