// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get authorPictureUrl => throw _privateConstructorUsedError;
  bool get creatorIsAuthUser => throw _privateConstructorUsedError;
  int get commentsCount => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      DateTime updatedAt,
      String authorId,
      String authorName,
      String authorPictureUrl,
      bool creatorIsAuthUser,
      int commentsCount});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? updatedAt = null,
    Object? authorId = null,
    Object? authorName = null,
    Object? authorPictureUrl = null,
    Object? creatorIsAuthUser = null,
    Object? commentsCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorPictureUrl: null == authorPictureUrl
          ? _value.authorPictureUrl
          : authorPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creatorIsAuthUser: null == creatorIsAuthUser
          ? _value.creatorIsAuthUser
          : creatorIsAuthUser // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      DateTime updatedAt,
      String authorId,
      String authorName,
      String authorPictureUrl,
      bool creatorIsAuthUser,
      int commentsCount});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? updatedAt = null,
    Object? authorId = null,
    Object? authorName = null,
    Object? authorPictureUrl = null,
    Object? creatorIsAuthUser = null,
    Object? commentsCount = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorPictureUrl: null == authorPictureUrl
          ? _value.authorPictureUrl
          : authorPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creatorIsAuthUser: null == creatorIsAuthUser
          ? _value.creatorIsAuthUser
          : creatorIsAuthUser // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PostImpl extends _Post {
  const _$PostImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.updatedAt,
      required this.authorId,
      required this.authorName,
      required this.authorPictureUrl,
      required this.creatorIsAuthUser,
      required this.commentsCount})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime updatedAt;
  @override
  final String authorId;
  @override
  final String authorName;
  @override
  final String authorPictureUrl;
  @override
  final bool creatorIsAuthUser;
  @override
  final int commentsCount;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, content: $content, updatedAt: $updatedAt, authorId: $authorId, authorName: $authorName, authorPictureUrl: $authorPictureUrl, creatorIsAuthUser: $creatorIsAuthUser, commentsCount: $commentsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.authorPictureUrl, authorPictureUrl) ||
                other.authorPictureUrl == authorPictureUrl) &&
            (identical(other.creatorIsAuthUser, creatorIsAuthUser) ||
                other.creatorIsAuthUser == creatorIsAuthUser) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, updatedAt,
      authorId, authorName, authorPictureUrl, creatorIsAuthUser, commentsCount);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);
}

abstract class _Post extends Post {
  const factory _Post(
      {required final int id,
      required final String title,
      required final String content,
      required final DateTime updatedAt,
      required final String authorId,
      required final String authorName,
      required final String authorPictureUrl,
      required final bool creatorIsAuthUser,
      required final int commentsCount}) = _$PostImpl;
  const _Post._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get updatedAt;
  @override
  String get authorId;
  @override
  String get authorName;
  @override
  String get authorPictureUrl;
  @override
  bool get creatorIsAuthUser;
  @override
  int get commentsCount;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
