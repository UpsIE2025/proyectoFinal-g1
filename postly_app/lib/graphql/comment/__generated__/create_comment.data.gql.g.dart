// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateCommentData> _$gCreateCommentDataSerializer =
    new _$GCreateCommentDataSerializer();
Serializer<GCreateCommentData_commentCreate>
    _$gCreateCommentDataCommentCreateSerializer =
    new _$GCreateCommentData_commentCreateSerializer();
Serializer<GCreateCommentData_commentCreate_comment>
    _$gCreateCommentDataCommentCreateCommentSerializer =
    new _$GCreateCommentData_commentCreate_commentSerializer();
Serializer<GCreateCommentData_commentCreate_error>
    _$gCreateCommentDataCommentCreateErrorSerializer =
    new _$GCreateCommentData_commentCreate_errorSerializer();

class _$GCreateCommentDataSerializer
    implements StructuredSerializer<GCreateCommentData> {
  @override
  final Iterable<Type> types = const [GCreateCommentData, _$GCreateCommentData];
  @override
  final String wireName = 'GCreateCommentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'commentCreate',
      serializers.serialize(object.commentCreate,
          specifiedType: const FullType(GCreateCommentData_commentCreate)),
    ];

    return result;
  }

  @override
  GCreateCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentDataBuilder();

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
        case 'commentCreate':
          result.commentCreate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateCommentData_commentCreate))!
              as GCreateCommentData_commentCreate);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentData_commentCreateSerializer
    implements StructuredSerializer<GCreateCommentData_commentCreate> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentData_commentCreate,
    _$GCreateCommentData_commentCreate
  ];
  @override
  final String wireName = 'GCreateCommentData_commentCreate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentData_commentCreate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCreateCommentData_commentCreate_comment)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCreateCommentData_commentCreate_error)));
    }
    return result;
  }

  @override
  GCreateCommentData_commentCreate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentData_commentCreateBuilder();

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
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateCommentData_commentCreate_comment))!
              as GCreateCommentData_commentCreate_comment);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateCommentData_commentCreate_error))!
              as GCreateCommentData_commentCreate_error);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentData_commentCreate_commentSerializer
    implements StructuredSerializer<GCreateCommentData_commentCreate_comment> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentData_commentCreate_comment,
    _$GCreateCommentData_commentCreate_comment
  ];
  @override
  final String wireName = 'GCreateCommentData_commentCreate_comment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentData_commentCreate_comment object,
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
  GCreateCommentData_commentCreate_comment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentData_commentCreate_commentBuilder();

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

class _$GCreateCommentData_commentCreate_errorSerializer
    implements StructuredSerializer<GCreateCommentData_commentCreate_error> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentData_commentCreate_error,
    _$GCreateCommentData_commentCreate_error
  ];
  @override
  final String wireName = 'GCreateCommentData_commentCreate_error';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentData_commentCreate_error object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateCommentData_commentCreate_error deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentData_commentCreate_errorBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentData extends GCreateCommentData {
  @override
  final String G__typename;
  @override
  final GCreateCommentData_commentCreate commentCreate;

  factory _$GCreateCommentData(
          [void Function(GCreateCommentDataBuilder)? updates]) =>
      (new GCreateCommentDataBuilder()..update(updates))._build();

  _$GCreateCommentData._(
      {required this.G__typename, required this.commentCreate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateCommentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        commentCreate, r'GCreateCommentData', 'commentCreate');
  }

  @override
  GCreateCommentData rebuild(
          void Function(GCreateCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentDataBuilder toBuilder() =>
      new GCreateCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentData &&
        G__typename == other.G__typename &&
        commentCreate == other.commentCreate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, commentCreate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCommentData')
          ..add('G__typename', G__typename)
          ..add('commentCreate', commentCreate))
        .toString();
  }
}

class GCreateCommentDataBuilder
    implements Builder<GCreateCommentData, GCreateCommentDataBuilder> {
  _$GCreateCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateCommentData_commentCreateBuilder? _commentCreate;
  GCreateCommentData_commentCreateBuilder get commentCreate =>
      _$this._commentCreate ??= new GCreateCommentData_commentCreateBuilder();
  set commentCreate(GCreateCommentData_commentCreateBuilder? commentCreate) =>
      _$this._commentCreate = commentCreate;

  GCreateCommentDataBuilder() {
    GCreateCommentData._initializeBuilder(this);
  }

  GCreateCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _commentCreate = $v.commentCreate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentData;
  }

  @override
  void update(void Function(GCreateCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentData build() => _build();

  _$GCreateCommentData _build() {
    _$GCreateCommentData _$result;
    try {
      _$result = _$v ??
          new _$GCreateCommentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreateCommentData', 'G__typename'),
            commentCreate: commentCreate.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'commentCreate';
        commentCreate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentData_commentCreate
    extends GCreateCommentData_commentCreate {
  @override
  final String G__typename;
  @override
  final GCreateCommentData_commentCreate_comment? comment;
  @override
  final GCreateCommentData_commentCreate_error? error;

  factory _$GCreateCommentData_commentCreate(
          [void Function(GCreateCommentData_commentCreateBuilder)? updates]) =>
      (new GCreateCommentData_commentCreateBuilder()..update(updates))._build();

  _$GCreateCommentData_commentCreate._(
      {required this.G__typename, this.comment, this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateCommentData_commentCreate', 'G__typename');
  }

  @override
  GCreateCommentData_commentCreate rebuild(
          void Function(GCreateCommentData_commentCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentData_commentCreateBuilder toBuilder() =>
      new GCreateCommentData_commentCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentData_commentCreate &&
        G__typename == other.G__typename &&
        comment == other.comment &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCommentData_commentCreate')
          ..add('G__typename', G__typename)
          ..add('comment', comment)
          ..add('error', error))
        .toString();
  }
}

class GCreateCommentData_commentCreateBuilder
    implements
        Builder<GCreateCommentData_commentCreate,
            GCreateCommentData_commentCreateBuilder> {
  _$GCreateCommentData_commentCreate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateCommentData_commentCreate_commentBuilder? _comment;
  GCreateCommentData_commentCreate_commentBuilder get comment =>
      _$this._comment ??= new GCreateCommentData_commentCreate_commentBuilder();
  set comment(GCreateCommentData_commentCreate_commentBuilder? comment) =>
      _$this._comment = comment;

  GCreateCommentData_commentCreate_errorBuilder? _error;
  GCreateCommentData_commentCreate_errorBuilder get error =>
      _$this._error ??= new GCreateCommentData_commentCreate_errorBuilder();
  set error(GCreateCommentData_commentCreate_errorBuilder? error) =>
      _$this._error = error;

  GCreateCommentData_commentCreateBuilder() {
    GCreateCommentData_commentCreate._initializeBuilder(this);
  }

  GCreateCommentData_commentCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _comment = $v.comment?.toBuilder();
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentData_commentCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentData_commentCreate;
  }

  @override
  void update(void Function(GCreateCommentData_commentCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentData_commentCreate build() => _build();

  _$GCreateCommentData_commentCreate _build() {
    _$GCreateCommentData_commentCreate _$result;
    try {
      _$result = _$v ??
          new _$GCreateCommentData_commentCreate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCreateCommentData_commentCreate', 'G__typename'),
            comment: _comment?.build(),
            error: _error?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comment';
        _comment?.build();
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateCommentData_commentCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentData_commentCreate_comment
    extends GCreateCommentData_commentCreate_comment {
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

  factory _$GCreateCommentData_commentCreate_comment(
          [void Function(GCreateCommentData_commentCreate_commentBuilder)?
              updates]) =>
      (new GCreateCommentData_commentCreate_commentBuilder()..update(updates))
          ._build();

  _$GCreateCommentData_commentCreate_comment._(
      {required this.G__typename,
      required this.id,
      required this.updatedAt,
      required this.content,
      required this.postId,
      required this.authorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCreateCommentData_commentCreate_comment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreateCommentData_commentCreate_comment', 'id');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GCreateCommentData_commentCreate_comment', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GCreateCommentData_commentCreate_comment', 'content');
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GCreateCommentData_commentCreate_comment', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        authorId, r'GCreateCommentData_commentCreate_comment', 'authorId');
  }

  @override
  GCreateCommentData_commentCreate_comment rebuild(
          void Function(GCreateCommentData_commentCreate_commentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentData_commentCreate_commentBuilder toBuilder() =>
      new GCreateCommentData_commentCreate_commentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentData_commentCreate_comment &&
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
    return (newBuiltValueToStringHelper(
            r'GCreateCommentData_commentCreate_comment')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('content', content)
          ..add('postId', postId)
          ..add('authorId', authorId))
        .toString();
  }
}

class GCreateCommentData_commentCreate_commentBuilder
    implements
        Builder<GCreateCommentData_commentCreate_comment,
            GCreateCommentData_commentCreate_commentBuilder> {
  _$GCreateCommentData_commentCreate_comment? _$v;

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

  GCreateCommentData_commentCreate_commentBuilder() {
    GCreateCommentData_commentCreate_comment._initializeBuilder(this);
  }

  GCreateCommentData_commentCreate_commentBuilder get _$this {
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
  void replace(GCreateCommentData_commentCreate_comment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentData_commentCreate_comment;
  }

  @override
  void update(
      void Function(GCreateCommentData_commentCreate_commentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentData_commentCreate_comment build() => _build();

  _$GCreateCommentData_commentCreate_comment _build() {
    _$GCreateCommentData_commentCreate_comment _$result;
    try {
      _$result = _$v ??
          new _$GCreateCommentData_commentCreate_comment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCreateCommentData_commentCreate_comment', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GCreateCommentData_commentCreate_comment', 'id'),
            updatedAt: updatedAt.build(),
            content: BuiltValueNullFieldError.checkNotNull(content,
                r'GCreateCommentData_commentCreate_comment', 'content'),
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'GCreateCommentData_commentCreate_comment', 'postId'),
            authorId: BuiltValueNullFieldError.checkNotNull(authorId,
                r'GCreateCommentData_commentCreate_comment', 'authorId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateCommentData_commentCreate_comment',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentData_commentCreate_error
    extends GCreateCommentData_commentCreate_error {
  @override
  final String G__typename;
  @override
  final String message;

  factory _$GCreateCommentData_commentCreate_error(
          [void Function(GCreateCommentData_commentCreate_errorBuilder)?
              updates]) =>
      (new GCreateCommentData_commentCreate_errorBuilder()..update(updates))
          ._build();

  _$GCreateCommentData_commentCreate_error._(
      {required this.G__typename, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateCommentData_commentCreate_error', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GCreateCommentData_commentCreate_error', 'message');
  }

  @override
  GCreateCommentData_commentCreate_error rebuild(
          void Function(GCreateCommentData_commentCreate_errorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentData_commentCreate_errorBuilder toBuilder() =>
      new GCreateCommentData_commentCreate_errorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentData_commentCreate_error &&
        G__typename == other.G__typename &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCreateCommentData_commentCreate_error')
          ..add('G__typename', G__typename)
          ..add('message', message))
        .toString();
  }
}

class GCreateCommentData_commentCreate_errorBuilder
    implements
        Builder<GCreateCommentData_commentCreate_error,
            GCreateCommentData_commentCreate_errorBuilder> {
  _$GCreateCommentData_commentCreate_error? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GCreateCommentData_commentCreate_errorBuilder() {
    GCreateCommentData_commentCreate_error._initializeBuilder(this);
  }

  GCreateCommentData_commentCreate_errorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentData_commentCreate_error other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentData_commentCreate_error;
  }

  @override
  void update(
      void Function(GCreateCommentData_commentCreate_errorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentData_commentCreate_error build() => _build();

  _$GCreateCommentData_commentCreate_error _build() {
    final _$result = _$v ??
        new _$GCreateCommentData_commentCreate_error._(
          G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
              r'GCreateCommentData_commentCreate_error', 'G__typename'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'GCreateCommentData_commentCreate_error', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
