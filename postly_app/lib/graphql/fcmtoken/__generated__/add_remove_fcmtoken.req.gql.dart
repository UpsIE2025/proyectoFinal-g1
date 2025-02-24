// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:postly_app/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:postly_app/graphql/fcmtoken/__generated__/add_remove_fcmtoken.ast.gql.dart'
    as _i5;
import 'package:postly_app/graphql/fcmtoken/__generated__/add_remove_fcmtoken.data.gql.dart'
    as _i2;
import 'package:postly_app/graphql/fcmtoken/__generated__/add_remove_fcmtoken.var.gql.dart'
    as _i3;

part 'add_remove_fcmtoken.req.gql.g.dart';

abstract class GFCMTokenAddOrRemoveReq
    implements
        Built<GFCMTokenAddOrRemoveReq, GFCMTokenAddOrRemoveReqBuilder>,
        _i1.OperationRequest<_i2.GFCMTokenAddOrRemoveData,
            _i3.GFCMTokenAddOrRemoveVars> {
  GFCMTokenAddOrRemoveReq._();

  factory GFCMTokenAddOrRemoveReq(
          [void Function(GFCMTokenAddOrRemoveReqBuilder b) updates]) =
      _$GFCMTokenAddOrRemoveReq;

  static void _initializeBuilder(GFCMTokenAddOrRemoveReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'FCMTokenAddOrRemove',
    )
    ..executeOnListen = true;

  @override
  _i3.GFCMTokenAddOrRemoveVars get vars;
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
  _i2.GFCMTokenAddOrRemoveData? Function(
    _i2.GFCMTokenAddOrRemoveData?,
    _i2.GFCMTokenAddOrRemoveData?,
  )? get updateResult;
  @override
  _i2.GFCMTokenAddOrRemoveData? get optimisticResponse;
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
  _i2.GFCMTokenAddOrRemoveData? parseData(Map<String, dynamic> json) =>
      _i2.GFCMTokenAddOrRemoveData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GFCMTokenAddOrRemoveData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GFCMTokenAddOrRemoveData,
      _i3.GFCMTokenAddOrRemoveVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GFCMTokenAddOrRemoveReq> get serializer =>
      _$gFCMTokenAddOrRemoveReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFCMTokenAddOrRemoveReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFCMTokenAddOrRemoveReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFCMTokenAddOrRemoveReq.serializer,
        json,
      );
}
