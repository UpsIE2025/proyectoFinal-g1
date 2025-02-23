// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdatePostData> _$gUpdatePostDataSerializer =
    new _$GUpdatePostDataSerializer();
Serializer<GUpdatePostData_postUpdate> _$gUpdatePostDataPostUpdateSerializer =
    new _$GUpdatePostData_postUpdateSerializer();
Serializer<GUpdatePostData_postUpdate_post>
    _$gUpdatePostDataPostUpdatePostSerializer =
    new _$GUpdatePostData_postUpdate_postSerializer();
Serializer<GUpdatePostData_postUpdate_error>
    _$gUpdatePostDataPostUpdateErrorSerializer =
    new _$GUpdatePostData_postUpdate_errorSerializer();

class _$GUpdatePostDataSerializer
    implements StructuredSerializer<GUpdatePostData> {
  @override
  final Iterable<Type> types = const [GUpdatePostData, _$GUpdatePostData];
  @override
  final String wireName = 'GUpdatePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postUpdate',
      serializers.serialize(object.postUpdate,
          specifiedType: const FullType(GUpdatePostData_postUpdate)),
    ];

    return result;
  }

  @override
  GUpdatePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostDataBuilder();

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
        case 'postUpdate':
          result.postUpdate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdatePostData_postUpdate))!
              as GUpdatePostData_postUpdate);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostData_postUpdateSerializer
    implements StructuredSerializer<GUpdatePostData_postUpdate> {
  @override
  final Iterable<Type> types = const [
    GUpdatePostData_postUpdate,
    _$GUpdatePostData_postUpdate
  ];
  @override
  final String wireName = 'GUpdatePostData_postUpdate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePostData_postUpdate object,
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
            specifiedType: const FullType(GUpdatePostData_postUpdate_post)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdatePostData_postUpdate_error)));
    }
    return result;
  }

  @override
  GUpdatePostData_postUpdate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostData_postUpdateBuilder();

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
                      const FullType(GUpdatePostData_postUpdate_post))!
              as GUpdatePostData_postUpdate_post);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdatePostData_postUpdate_error))!
              as GUpdatePostData_postUpdate_error);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostData_postUpdate_postSerializer
    implements StructuredSerializer<GUpdatePostData_postUpdate_post> {
  @override
  final Iterable<Type> types = const [
    GUpdatePostData_postUpdate_post,
    _$GUpdatePostData_postUpdate_post
  ];
  @override
  final String wireName = 'GUpdatePostData_postUpdate_post';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePostData_postUpdate_post object,
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
  GUpdatePostData_postUpdate_post deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostData_postUpdate_postBuilder();

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

class _$GUpdatePostData_postUpdate_errorSerializer
    implements StructuredSerializer<GUpdatePostData_postUpdate_error> {
  @override
  final Iterable<Type> types = const [
    GUpdatePostData_postUpdate_error,
    _$GUpdatePostData_postUpdate_error
  ];
  @override
  final String wireName = 'GUpdatePostData_postUpdate_error';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePostData_postUpdate_error object,
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
  GUpdatePostData_postUpdate_error deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostData_postUpdate_errorBuilder();

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

class _$GUpdatePostData extends GUpdatePostData {
  @override
  final String G__typename;
  @override
  final GUpdatePostData_postUpdate postUpdate;

  factory _$GUpdatePostData([void Function(GUpdatePostDataBuilder)? updates]) =>
      (new GUpdatePostDataBuilder()..update(updates))._build();

  _$GUpdatePostData._({required this.G__typename, required this.postUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePostData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postUpdate, r'GUpdatePostData', 'postUpdate');
  }

  @override
  GUpdatePostData rebuild(void Function(GUpdatePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostDataBuilder toBuilder() =>
      new GUpdatePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostData &&
        G__typename == other.G__typename &&
        postUpdate == other.postUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePostData')
          ..add('G__typename', G__typename)
          ..add('postUpdate', postUpdate))
        .toString();
  }
}

class GUpdatePostDataBuilder
    implements Builder<GUpdatePostData, GUpdatePostDataBuilder> {
  _$GUpdatePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdatePostData_postUpdateBuilder? _postUpdate;
  GUpdatePostData_postUpdateBuilder get postUpdate =>
      _$this._postUpdate ??= new GUpdatePostData_postUpdateBuilder();
  set postUpdate(GUpdatePostData_postUpdateBuilder? postUpdate) =>
      _$this._postUpdate = postUpdate;

  GUpdatePostDataBuilder() {
    GUpdatePostData._initializeBuilder(this);
  }

  GUpdatePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postUpdate = $v.postUpdate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostData;
  }

  @override
  void update(void Function(GUpdatePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostData build() => _build();

  _$GUpdatePostData _build() {
    _$GUpdatePostData _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePostData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdatePostData', 'G__typename'),
            postUpdate: postUpdate.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postUpdate';
        postUpdate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePostData_postUpdate extends GUpdatePostData_postUpdate {
  @override
  final String G__typename;
  @override
  final GUpdatePostData_postUpdate_post? post;
  @override
  final GUpdatePostData_postUpdate_error? error;

  factory _$GUpdatePostData_postUpdate(
          [void Function(GUpdatePostData_postUpdateBuilder)? updates]) =>
      (new GUpdatePostData_postUpdateBuilder()..update(updates))._build();

  _$GUpdatePostData_postUpdate._(
      {required this.G__typename, this.post, this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePostData_postUpdate', 'G__typename');
  }

  @override
  GUpdatePostData_postUpdate rebuild(
          void Function(GUpdatePostData_postUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostData_postUpdateBuilder toBuilder() =>
      new GUpdatePostData_postUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostData_postUpdate &&
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
    return (newBuiltValueToStringHelper(r'GUpdatePostData_postUpdate')
          ..add('G__typename', G__typename)
          ..add('post', post)
          ..add('error', error))
        .toString();
  }
}

class GUpdatePostData_postUpdateBuilder
    implements
        Builder<GUpdatePostData_postUpdate, GUpdatePostData_postUpdateBuilder> {
  _$GUpdatePostData_postUpdate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdatePostData_postUpdate_postBuilder? _post;
  GUpdatePostData_postUpdate_postBuilder get post =>
      _$this._post ??= new GUpdatePostData_postUpdate_postBuilder();
  set post(GUpdatePostData_postUpdate_postBuilder? post) => _$this._post = post;

  GUpdatePostData_postUpdate_errorBuilder? _error;
  GUpdatePostData_postUpdate_errorBuilder get error =>
      _$this._error ??= new GUpdatePostData_postUpdate_errorBuilder();
  set error(GUpdatePostData_postUpdate_errorBuilder? error) =>
      _$this._error = error;

  GUpdatePostData_postUpdateBuilder() {
    GUpdatePostData_postUpdate._initializeBuilder(this);
  }

  GUpdatePostData_postUpdateBuilder get _$this {
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
  void replace(GUpdatePostData_postUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostData_postUpdate;
  }

  @override
  void update(void Function(GUpdatePostData_postUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostData_postUpdate build() => _build();

  _$GUpdatePostData_postUpdate _build() {
    _$GUpdatePostData_postUpdate _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePostData_postUpdate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdatePostData_postUpdate', 'G__typename'),
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
            r'GUpdatePostData_postUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePostData_postUpdate_post
    extends GUpdatePostData_postUpdate_post {
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

  factory _$GUpdatePostData_postUpdate_post(
          [void Function(GUpdatePostData_postUpdate_postBuilder)? updates]) =>
      (new GUpdatePostData_postUpdate_postBuilder()..update(updates))._build();

  _$GUpdatePostData_postUpdate_post._(
      {required this.G__typename,
      required this.id,
      required this.updatedAt,
      required this.title,
      required this.content})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePostData_postUpdate_post', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUpdatePostData_postUpdate_post', 'id');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GUpdatePostData_postUpdate_post', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GUpdatePostData_postUpdate_post', 'title');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GUpdatePostData_postUpdate_post', 'content');
  }

  @override
  GUpdatePostData_postUpdate_post rebuild(
          void Function(GUpdatePostData_postUpdate_postBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostData_postUpdate_postBuilder toBuilder() =>
      new GUpdatePostData_postUpdate_postBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostData_postUpdate_post &&
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
    return (newBuiltValueToStringHelper(r'GUpdatePostData_postUpdate_post')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class GUpdatePostData_postUpdate_postBuilder
    implements
        Builder<GUpdatePostData_postUpdate_post,
            GUpdatePostData_postUpdate_postBuilder> {
  _$GUpdatePostData_postUpdate_post? _$v;

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

  GUpdatePostData_postUpdate_postBuilder() {
    GUpdatePostData_postUpdate_post._initializeBuilder(this);
  }

  GUpdatePostData_postUpdate_postBuilder get _$this {
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
  void replace(GUpdatePostData_postUpdate_post other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostData_postUpdate_post;
  }

  @override
  void update(void Function(GUpdatePostData_postUpdate_postBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostData_postUpdate_post build() => _build();

  _$GUpdatePostData_postUpdate_post _build() {
    _$GUpdatePostData_postUpdate_post _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePostData_postUpdate_post._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdatePostData_postUpdate_post', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdatePostData_postUpdate_post', 'id'),
            updatedAt: updatedAt.build(),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GUpdatePostData_postUpdate_post', 'title'),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'GUpdatePostData_postUpdate_post', 'content'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePostData_postUpdate_post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePostData_postUpdate_error
    extends GUpdatePostData_postUpdate_error {
  @override
  final String G__typename;
  @override
  final String message;

  factory _$GUpdatePostData_postUpdate_error(
          [void Function(GUpdatePostData_postUpdate_errorBuilder)? updates]) =>
      (new GUpdatePostData_postUpdate_errorBuilder()..update(updates))._build();

  _$GUpdatePostData_postUpdate_error._(
      {required this.G__typename, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePostData_postUpdate_error', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GUpdatePostData_postUpdate_error', 'message');
  }

  @override
  GUpdatePostData_postUpdate_error rebuild(
          void Function(GUpdatePostData_postUpdate_errorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostData_postUpdate_errorBuilder toBuilder() =>
      new GUpdatePostData_postUpdate_errorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostData_postUpdate_error &&
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
    return (newBuiltValueToStringHelper(r'GUpdatePostData_postUpdate_error')
          ..add('G__typename', G__typename)
          ..add('message', message))
        .toString();
  }
}

class GUpdatePostData_postUpdate_errorBuilder
    implements
        Builder<GUpdatePostData_postUpdate_error,
            GUpdatePostData_postUpdate_errorBuilder> {
  _$GUpdatePostData_postUpdate_error? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GUpdatePostData_postUpdate_errorBuilder() {
    GUpdatePostData_postUpdate_error._initializeBuilder(this);
  }

  GUpdatePostData_postUpdate_errorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostData_postUpdate_error other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostData_postUpdate_error;
  }

  @override
  void update(void Function(GUpdatePostData_postUpdate_errorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostData_postUpdate_error build() => _build();

  _$GUpdatePostData_postUpdate_error _build() {
    final _$result = _$v ??
        new _$GUpdatePostData_postUpdate_error._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GUpdatePostData_postUpdate_error', 'G__typename'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'GUpdatePostData_postUpdate_error', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
