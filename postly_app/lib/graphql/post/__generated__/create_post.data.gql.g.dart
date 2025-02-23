// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreatePostData> _$gCreatePostDataSerializer =
    new _$GCreatePostDataSerializer();
Serializer<GCreatePostData_postCreate> _$gCreatePostDataPostCreateSerializer =
    new _$GCreatePostData_postCreateSerializer();
Serializer<GCreatePostData_postCreate_post>
    _$gCreatePostDataPostCreatePostSerializer =
    new _$GCreatePostData_postCreate_postSerializer();
Serializer<GCreatePostData_postCreate_error>
    _$gCreatePostDataPostCreateErrorSerializer =
    new _$GCreatePostData_postCreate_errorSerializer();

class _$GCreatePostDataSerializer
    implements StructuredSerializer<GCreatePostData> {
  @override
  final Iterable<Type> types = const [GCreatePostData, _$GCreatePostData];
  @override
  final String wireName = 'GCreatePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postCreate',
      serializers.serialize(object.postCreate,
          specifiedType: const FullType(GCreatePostData_postCreate)),
    ];

    return result;
  }

  @override
  GCreatePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostDataBuilder();

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
        case 'postCreate':
          result.postCreate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreatePostData_postCreate))!
              as GCreatePostData_postCreate);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData_postCreateSerializer
    implements StructuredSerializer<GCreatePostData_postCreate> {
  @override
  final Iterable<Type> types = const [
    GCreatePostData_postCreate,
    _$GCreatePostData_postCreate
  ];
  @override
  final String wireName = 'GCreatePostData_postCreate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePostData_postCreate object,
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
            specifiedType: const FullType(GCreatePostData_postCreate_post)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreatePostData_postCreate_error)));
    }
    return result;
  }

  @override
  GCreatePostData_postCreate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostData_postCreateBuilder();

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
                  specifiedType:
                      const FullType(GCreatePostData_postCreate_post))!
              as GCreatePostData_postCreate_post);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreatePostData_postCreate_error))!
              as GCreatePostData_postCreate_error);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData_postCreate_postSerializer
    implements StructuredSerializer<GCreatePostData_postCreate_post> {
  @override
  final Iterable<Type> types = const [
    GCreatePostData_postCreate_post,
    _$GCreatePostData_postCreate_post
  ];
  @override
  final String wireName = 'GCreatePostData_postCreate_post';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePostData_postCreate_post object,
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
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreatePostData_postCreate_post deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostData_postCreate_postBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData_postCreate_errorSerializer
    implements StructuredSerializer<GCreatePostData_postCreate_error> {
  @override
  final Iterable<Type> types = const [
    GCreatePostData_postCreate_error,
    _$GCreatePostData_postCreate_error
  ];
  @override
  final String wireName = 'GCreatePostData_postCreate_error';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePostData_postCreate_error object,
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
  GCreatePostData_postCreate_error deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostData_postCreate_errorBuilder();

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

class _$GCreatePostData extends GCreatePostData {
  @override
  final String G__typename;
  @override
  final GCreatePostData_postCreate postCreate;

  factory _$GCreatePostData([void Function(GCreatePostDataBuilder)? updates]) =>
      (new GCreatePostDataBuilder()..update(updates))._build();

  _$GCreatePostData._({required this.G__typename, required this.postCreate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePostData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postCreate, r'GCreatePostData', 'postCreate');
  }

  @override
  GCreatePostData rebuild(void Function(GCreatePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostDataBuilder toBuilder() =>
      new GCreatePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData &&
        G__typename == other.G__typename &&
        postCreate == other.postCreate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postCreate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostData')
          ..add('G__typename', G__typename)
          ..add('postCreate', postCreate))
        .toString();
  }
}

class GCreatePostDataBuilder
    implements Builder<GCreatePostData, GCreatePostDataBuilder> {
  _$GCreatePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreatePostData_postCreateBuilder? _postCreate;
  GCreatePostData_postCreateBuilder get postCreate =>
      _$this._postCreate ??= new GCreatePostData_postCreateBuilder();
  set postCreate(GCreatePostData_postCreateBuilder? postCreate) =>
      _$this._postCreate = postCreate;

  GCreatePostDataBuilder() {
    GCreatePostData._initializeBuilder(this);
  }

  GCreatePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postCreate = $v.postCreate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData;
  }

  @override
  void update(void Function(GCreatePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostData build() => _build();

  _$GCreatePostData _build() {
    _$GCreatePostData _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreatePostData', 'G__typename'),
            postCreate: postCreate.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postCreate';
        postCreate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostData_postCreate extends GCreatePostData_postCreate {
  @override
  final String G__typename;
  @override
  final GCreatePostData_postCreate_post? post;
  @override
  final GCreatePostData_postCreate_error? error;

  factory _$GCreatePostData_postCreate(
          [void Function(GCreatePostData_postCreateBuilder)? updates]) =>
      (new GCreatePostData_postCreateBuilder()..update(updates))._build();

  _$GCreatePostData_postCreate._(
      {required this.G__typename, this.post, this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePostData_postCreate', 'G__typename');
  }

  @override
  GCreatePostData_postCreate rebuild(
          void Function(GCreatePostData_postCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostData_postCreateBuilder toBuilder() =>
      new GCreatePostData_postCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData_postCreate &&
        G__typename == other.G__typename &&
        post == other.post &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostData_postCreate')
          ..add('G__typename', G__typename)
          ..add('post', post)
          ..add('error', error))
        .toString();
  }
}

class GCreatePostData_postCreateBuilder
    implements
        Builder<GCreatePostData_postCreate, GCreatePostData_postCreateBuilder> {
  _$GCreatePostData_postCreate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreatePostData_postCreate_postBuilder? _post;
  GCreatePostData_postCreate_postBuilder get post =>
      _$this._post ??= new GCreatePostData_postCreate_postBuilder();
  set post(GCreatePostData_postCreate_postBuilder? post) => _$this._post = post;

  GCreatePostData_postCreate_errorBuilder? _error;
  GCreatePostData_postCreate_errorBuilder get error =>
      _$this._error ??= new GCreatePostData_postCreate_errorBuilder();
  set error(GCreatePostData_postCreate_errorBuilder? error) =>
      _$this._error = error;

  GCreatePostData_postCreateBuilder() {
    GCreatePostData_postCreate._initializeBuilder(this);
  }

  GCreatePostData_postCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _post = $v.post?.toBuilder();
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData_postCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData_postCreate;
  }

  @override
  void update(void Function(GCreatePostData_postCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostData_postCreate build() => _build();

  _$GCreatePostData_postCreate _build() {
    _$GCreatePostData_postCreate _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostData_postCreate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreatePostData_postCreate', 'G__typename'),
            post: _post?.build(),
            error: _error?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'post';
        _post?.build();
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostData_postCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostData_postCreate_post
    extends GCreatePostData_postCreate_post {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i2.GTime updatedAt;
  @override
  final String title;
  @override
  final String content;

  factory _$GCreatePostData_postCreate_post(
          [void Function(GCreatePostData_postCreate_postBuilder)? updates]) =>
      (new GCreatePostData_postCreate_postBuilder()..update(updates))._build();

  _$GCreatePostData_postCreate_post._(
      {required this.G__typename,
      required this.id,
      required this.updatedAt,
      required this.title,
      required this.content})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePostData_postCreate_post', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreatePostData_postCreate_post', 'id');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GCreatePostData_postCreate_post', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GCreatePostData_postCreate_post', 'title');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GCreatePostData_postCreate_post', 'content');
  }

  @override
  GCreatePostData_postCreate_post rebuild(
          void Function(GCreatePostData_postCreate_postBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostData_postCreate_postBuilder toBuilder() =>
      new GCreatePostData_postCreate_postBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData_postCreate_post &&
        G__typename == other.G__typename &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        title == other.title &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostData_postCreate_post')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class GCreatePostData_postCreate_postBuilder
    implements
        Builder<GCreatePostData_postCreate_post,
            GCreatePostData_postCreate_postBuilder> {
  _$GCreatePostData_postCreate_post? _$v;

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

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  GCreatePostData_postCreate_postBuilder() {
    GCreatePostData_postCreate_post._initializeBuilder(this);
  }

  GCreatePostData_postCreate_postBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _updatedAt = $v.updatedAt.toBuilder();
      _title = $v.title;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData_postCreate_post other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData_postCreate_post;
  }

  @override
  void update(void Function(GCreatePostData_postCreate_postBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostData_postCreate_post build() => _build();

  _$GCreatePostData_postCreate_post _build() {
    _$GCreatePostData_postCreate_post _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostData_postCreate_post._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreatePostData_postCreate_post', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GCreatePostData_postCreate_post', 'id'),
            updatedAt: updatedAt.build(),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GCreatePostData_postCreate_post', 'title'),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'GCreatePostData_postCreate_post', 'content'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostData_postCreate_post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostData_postCreate_error
    extends GCreatePostData_postCreate_error {
  @override
  final String G__typename;
  @override
  final String message;

  factory _$GCreatePostData_postCreate_error(
          [void Function(GCreatePostData_postCreate_errorBuilder)? updates]) =>
      (new GCreatePostData_postCreate_errorBuilder()..update(updates))._build();

  _$GCreatePostData_postCreate_error._(
      {required this.G__typename, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePostData_postCreate_error', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GCreatePostData_postCreate_error', 'message');
  }

  @override
  GCreatePostData_postCreate_error rebuild(
          void Function(GCreatePostData_postCreate_errorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostData_postCreate_errorBuilder toBuilder() =>
      new GCreatePostData_postCreate_errorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData_postCreate_error &&
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
    return (newBuiltValueToStringHelper(r'GCreatePostData_postCreate_error')
          ..add('G__typename', G__typename)
          ..add('message', message))
        .toString();
  }
}

class GCreatePostData_postCreate_errorBuilder
    implements
        Builder<GCreatePostData_postCreate_error,
            GCreatePostData_postCreate_errorBuilder> {
  _$GCreatePostData_postCreate_error? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GCreatePostData_postCreate_errorBuilder() {
    GCreatePostData_postCreate_error._initializeBuilder(this);
  }

  GCreatePostData_postCreate_errorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData_postCreate_error other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData_postCreate_error;
  }

  @override
  void update(void Function(GCreatePostData_postCreate_errorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostData_postCreate_error build() => _build();

  _$GCreatePostData_postCreate_error _build() {
    final _$result = _$v ??
        new _$GCreatePostData_postCreate_error._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GCreatePostData_postCreate_error', 'G__typename'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'GCreatePostData_postCreate_error', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
