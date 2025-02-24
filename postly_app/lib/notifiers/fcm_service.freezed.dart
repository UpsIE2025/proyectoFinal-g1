// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FCMData _$FCMDataFromJson(Map<String, dynamic> json) {
  return _FCMDataNewComment.fromJson(json);
}

/// @nodoc
mixin _$FCMData {
  String get postId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, String commentId) newComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, String commentId)? newComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, String commentId)? newComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FCMDataNewComment value) newComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FCMDataNewComment value)? newComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FCMDataNewComment value)? newComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FCMData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FCMDataCopyWith<FCMData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMDataCopyWith<$Res> {
  factory $FCMDataCopyWith(FCMData value, $Res Function(FCMData) then) =
      _$FCMDataCopyWithImpl<$Res, FCMData>;
  @useResult
  $Res call({String postId, String commentId});
}

/// @nodoc
class _$FCMDataCopyWithImpl<$Res, $Val extends FCMData>
    implements $FCMDataCopyWith<$Res> {
  _$FCMDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? commentId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FCMDataNewCommentImplCopyWith<$Res>
    implements $FCMDataCopyWith<$Res> {
  factory _$$FCMDataNewCommentImplCopyWith(_$FCMDataNewCommentImpl value,
          $Res Function(_$FCMDataNewCommentImpl) then) =
      __$$FCMDataNewCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId, String commentId});
}

/// @nodoc
class __$$FCMDataNewCommentImplCopyWithImpl<$Res>
    extends _$FCMDataCopyWithImpl<$Res, _$FCMDataNewCommentImpl>
    implements _$$FCMDataNewCommentImplCopyWith<$Res> {
  __$$FCMDataNewCommentImplCopyWithImpl(_$FCMDataNewCommentImpl _value,
      $Res Function(_$FCMDataNewCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? commentId = null,
  }) {
    return _then(_$FCMDataNewCommentImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMDataNewCommentImpl
    with DiagnosticableTreeMixin
    implements _FCMDataNewComment {
  const _$FCMDataNewCommentImpl(
      {required this.postId, required this.commentId});

  factory _$FCMDataNewCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMDataNewCommentImplFromJson(json);

  @override
  final String postId;
  @override
  final String commentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FCMData.newComment(postId: $postId, commentId: $commentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FCMData.newComment'))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('commentId', commentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMDataNewCommentImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postId, commentId);

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMDataNewCommentImplCopyWith<_$FCMDataNewCommentImpl> get copyWith =>
      __$$FCMDataNewCommentImplCopyWithImpl<_$FCMDataNewCommentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, String commentId) newComment,
  }) {
    return newComment(postId, commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, String commentId)? newComment,
  }) {
    return newComment?.call(postId, commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, String commentId)? newComment,
    required TResult orElse(),
  }) {
    if (newComment != null) {
      return newComment(postId, commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FCMDataNewComment value) newComment,
  }) {
    return newComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FCMDataNewComment value)? newComment,
  }) {
    return newComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FCMDataNewComment value)? newComment,
    required TResult orElse(),
  }) {
    if (newComment != null) {
      return newComment(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMDataNewCommentImplToJson(
      this,
    );
  }
}

abstract class _FCMDataNewComment implements FCMData {
  const factory _FCMDataNewComment(
      {required final String postId,
      required final String commentId}) = _$FCMDataNewCommentImpl;

  factory _FCMDataNewComment.fromJson(Map<String, dynamic> json) =
      _$FCMDataNewCommentImpl.fromJson;

  @override
  String get postId;
  @override
  String get commentId;

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FCMDataNewCommentImplCopyWith<_$FCMDataNewCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
