// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_comments.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPostCommentsData> _$gGetPostCommentsDataSerializer =
    new _$GGetPostCommentsDataSerializer();
Serializer<GGetPostCommentsData_post> _$gGetPostCommentsDataPostSerializer =
    new _$GGetPostCommentsData_postSerializer();
Serializer<GGetPostCommentsData_post_comments>
    _$gGetPostCommentsDataPostCommentsSerializer =
    new _$GGetPostCommentsData_post_commentsSerializer();

class _$GGetPostCommentsDataSerializer
    implements StructuredSerializer<GGetPostCommentsData> {
  @override
  final Iterable<Type> types = const [
    GGetPostCommentsData,
    _$GGetPostCommentsData
  ];
  @override
  final String wireName = 'GGetPostCommentsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPostCommentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.post;
    if (value != null) {
      result
        ..add('post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetPostCommentsData_post)));
    }
    return result;
  }

  @override
  GGetPostCommentsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostCommentsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'post':
          result.post.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetPostCommentsData_post))!
              as GGetPostCommentsData_post);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPostCommentsData_postSerializer
    implements StructuredSerializer<GGetPostCommentsData_post> {
  @override
  final Iterable<Type> types = const [
    GGetPostCommentsData_post,
    _$GGetPostCommentsData_post
  ];
  @override
  final String wireName = 'GGetPostCommentsData_post';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPostCommentsData_post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetPostCommentsData_post_comments)])),
    ];

    return result;
  }

  @override
  GGetPostCommentsData_post deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostCommentsData_postBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetPostCommentsData_post_comments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPostCommentsData_post_commentsSerializer
    implements StructuredSerializer<GGetPostCommentsData_post_comments> {
  @override
  final Iterable<Type> types = const [
    GGetPostCommentsData_post_comments,
    _$GGetPostCommentsData_post_comments
  ];
  @override
  final String wireName = 'GGetPostCommentsData_post_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPostCommentsData_post_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GTime)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'postId',
      serializers.serialize(object.postId, specifiedType: const FullType(int)),
      'authorId',
      serializers.serialize(object.authorId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetPostCommentsData_post_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostCommentsData_post_commentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GTime))! as _i2.GTime);
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'authorId':
          result.authorId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPostCommentsData extends GGetPostCommentsData {
  @override
  final String G__typename;
  @override
  final GGetPostCommentsData_post? post;

  factory _$GGetPostCommentsData(
          [void Function(GGetPostCommentsDataBuilder)? updates]) =>
      (new GGetPostCommentsDataBuilder()..update(updates))._build();

  _$GGetPostCommentsData._({required this.G__typename, this.post}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetPostCommentsData', 'G__typename');
  }

  @override
  GGetPostCommentsData rebuild(
          void Function(GGetPostCommentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostCommentsDataBuilder toBuilder() =>
      new GGetPostCommentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostCommentsData &&
        G__typename == other.G__typename &&
        post == other.post;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostCommentsData')
          ..add('G__typename', G__typename)
          ..add('post', post))
        .toString();
  }
}

class GGetPostCommentsDataBuilder
    implements Builder<GGetPostCommentsData, GGetPostCommentsDataBuilder> {
  _$GGetPostCommentsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetPostCommentsData_postBuilder? _post;
  GGetPostCommentsData_postBuilder get post =>
      _$this._post ??= new GGetPostCommentsData_postBuilder();
  set post(GGetPostCommentsData_postBuilder? post) => _$this._post = post;

  GGetPostCommentsDataBuilder() {
    GGetPostCommentsData._initializeBuilder(this);
  }

  GGetPostCommentsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _post = $v.post?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostCommentsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostCommentsData;
  }

  @override
  void update(void Function(GGetPostCommentsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostCommentsData build() => _build();

  _$GGetPostCommentsData _build() {
    _$GGetPostCommentsData _$result;
    try {
      _$result = _$v ??
          new _$GGetPostCommentsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetPostCommentsData', 'G__typename'),
            post: _post?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'post';
        _post?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetPostCommentsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetPostCommentsData_post extends GGetPostCommentsData_post {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetPostCommentsData_post_comments> comments;

  factory _$GGetPostCommentsData_post(
          [void Function(GGetPostCommentsData_postBuilder)? updates]) =>
      (new GGetPostCommentsData_postBuilder()..update(updates))._build();

  _$GGetPostCommentsData_post._(
      {required this.G__typename, required this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetPostCommentsData_post', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        comments, r'GGetPostCommentsData_post', 'comments');
  }

  @override
  GGetPostCommentsData_post rebuild(
          void Function(GGetPostCommentsData_postBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostCommentsData_postBuilder toBuilder() =>
      new GGetPostCommentsData_postBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostCommentsData_post &&
        G__typename == other.G__typename &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostCommentsData_post')
          ..add('G__typename', G__typename)
          ..add('comments', comments))
        .toString();
  }
}

class GGetPostCommentsData_postBuilder
    implements
        Builder<GGetPostCommentsData_post, GGetPostCommentsData_postBuilder> {
  _$GGetPostCommentsData_post? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetPostCommentsData_post_comments>? _comments;
  ListBuilder<GGetPostCommentsData_post_comments> get comments =>
      _$this._comments ??=
          new ListBuilder<GGetPostCommentsData_post_comments>();
  set comments(ListBuilder<GGetPostCommentsData_post_comments>? comments) =>
      _$this._comments = comments;

  GGetPostCommentsData_postBuilder() {
    GGetPostCommentsData_post._initializeBuilder(this);
  }

  GGetPostCommentsData_postBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _comments = $v.comments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostCommentsData_post other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostCommentsData_post;
  }

  @override
  void update(void Function(GGetPostCommentsData_postBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostCommentsData_post build() => _build();

  _$GGetPostCommentsData_post _build() {
    _$GGetPostCommentsData_post _$result;
    try {
      _$result = _$v ??
          new _$GGetPostCommentsData_post._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetPostCommentsData_post', 'G__typename'),
            comments: comments.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetPostCommentsData_post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetPostCommentsData_post_comments
    extends GGetPostCommentsData_post_comments {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i2.GTime updatedAt;
  @override
  final String content;
  @override
  final int postId;
  @override
  final String authorId;

  factory _$GGetPostCommentsData_post_comments(
          [void Function(GGetPostCommentsData_post_commentsBuilder)?
              updates]) =>
      (new GGetPostCommentsData_post_commentsBuilder()..update(updates))
          ._build();

  _$GGetPostCommentsData_post_comments._(
      {required this.G__typename,
      required this.id,
      required this.updatedAt,
      required this.content,
      required this.postId,
      required this.authorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetPostCommentsData_post_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GGetPostCommentsData_post_comments', 'id');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GGetPostCommentsData_post_comments', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GGetPostCommentsData_post_comments', 'content');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GGetPostCommentsData_post_comments', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        authorId, r'GGetPostCommentsData_post_comments', 'authorId');
  }

  @override
  GGetPostCommentsData_post_comments rebuild(
          void Function(GGetPostCommentsData_post_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostCommentsData_post_commentsBuilder toBuilder() =>
      new GGetPostCommentsData_post_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostCommentsData_post_comments &&
        G__typename == other.G__typename &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        content == other.content &&
        postId == other.postId &&
        authorId == other.authorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, authorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostCommentsData_post_comments')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('content', content)
          ..add('postId', postId)
          ..add('authorId', authorId))
        .toString();
  }
}

class GGetPostCommentsData_post_commentsBuilder
    implements
        Builder<GGetPostCommentsData_post_comments,
            GGetPostCommentsData_post_commentsBuilder> {
  _$GGetPostCommentsData_post_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GTimeBuilder? _updatedAt;
  _i2.GTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GTimeBuilder();
  set updatedAt(_i2.GTimeBuilder? updatedAt) => _$this._updatedAt = updatedAt;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  int? _postId;
  int? get postId => _$this._postId;
  set postId(int? postId) => _$this._postId = postId;

  String? _authorId;
  String? get authorId => _$this._authorId;
  set authorId(String? authorId) => _$this._authorId = authorId;

  GGetPostCommentsData_post_commentsBuilder() {
    GGetPostCommentsData_post_comments._initializeBuilder(this);
  }

  GGetPostCommentsData_post_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _updatedAt = $v.updatedAt.toBuilder();
      _content = $v.content;
      _postId = $v.postId;
      _authorId = $v.authorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostCommentsData_post_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostCommentsData_post_comments;
  }

  @override
  void update(
      void Function(GGetPostCommentsData_post_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostCommentsData_post_comments build() => _build();

  _$GGetPostCommentsData_post_comments _build() {
    _$GGetPostCommentsData_post_comments _$result;
    try {
      _$result = _$v ??
          new _$GGetPostCommentsData_post_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetPostCommentsData_post_comments', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GGetPostCommentsData_post_comments', 'id'),
            updatedAt: updatedAt.build(),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'GGetPostCommentsData_post_comments', 'content'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GGetPostCommentsData_post_comments', 'postId'),
            authorId: BuiltValueNullFieldError.checkNotNull(
                authorId, r'GGetPostCommentsData_post_comments', 'authorId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetPostCommentsData_post_comments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
