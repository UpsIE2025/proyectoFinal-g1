// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCommentCreateInput> _$gCommentCreateInputSerializer =
    new _$GCommentCreateInputSerializer();
Serializer<GCommentUpdateInput> _$gCommentUpdateInputSerializer =
    new _$GCommentUpdateInputSerializer();
Serializer<GPostCreateInput> _$gPostCreateInputSerializer =
    new _$GPostCreateInputSerializer();
Serializer<GPostUpdateInput> _$gPostUpdateInputSerializer =
    new _$GPostUpdateInputSerializer();

class _$GCommentCreateInputSerializer
    implements StructuredSerializer<GCommentCreateInput> {
  @override
  final Iterable<Type> types = const [
    GCommentCreateInput,
    _$GCommentCreateInput
  ];
  @override
  final String wireName = 'GCommentCreateInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCommentCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId, specifiedType: const FullType(int)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCommentCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCommentCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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

class _$GCommentUpdateInputSerializer
    implements StructuredSerializer<GCommentUpdateInput> {
  @override
  final Iterable<Type> types = const [
    GCommentUpdateInput,
    _$GCommentUpdateInput
  ];
  @override
  final String wireName = 'GCommentUpdateInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCommentUpdateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCommentUpdateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCommentUpdateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostCreateInputSerializer
    implements StructuredSerializer<GPostCreateInput> {
  @override
  final Iterable<Type> types = const [GPostCreateInput, _$GPostCreateInput];
  @override
  final String wireName = 'GPostCreateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
  GPostCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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

class _$GPostUpdateInputSerializer
    implements StructuredSerializer<GPostUpdateInput> {
  @override
  final Iterable<Type> types = const [GPostUpdateInput, _$GPostUpdateInput];
  @override
  final String wireName = 'GPostUpdateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostUpdateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
  GPostUpdateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostUpdateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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

class _$GCommentCreateInput extends GCommentCreateInput {
  @override
  final int postId;
  @override
  final String content;

  factory _$GCommentCreateInput(
          [void Function(GCommentCreateInputBuilder)? updates]) =>
      (new GCommentCreateInputBuilder()..update(updates))._build();

  _$GCommentCreateInput._({required this.postId, required this.content})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GCommentCreateInput', 'postId');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GCommentCreateInput', 'content');
  }

  @override
  GCommentCreateInput rebuild(
          void Function(GCommentCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCommentCreateInputBuilder toBuilder() =>
      new GCommentCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCommentCreateInput &&
        postId == other.postId &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCommentCreateInput')
          ..add('postId', postId)
          ..add('content', content))
        .toString();
  }
}

class GCommentCreateInputBuilder
    implements Builder<GCommentCreateInput, GCommentCreateInputBuilder> {
  _$GCommentCreateInput? _$v;

  int? _postId;
  int? get postId => _$this._postId;
  set postId(int? postId) => _$this._postId = postId;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  GCommentCreateInputBuilder();

  GCommentCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCommentCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCommentCreateInput;
  }

  @override
  void update(void Function(GCommentCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCommentCreateInput build() => _build();

  _$GCommentCreateInput _build() {
    final _$result = _$v ??
        new _$GCommentCreateInput._(
          postId: BuiltValueNullFieldError.checkNotNull(
              postId, r'GCommentCreateInput', 'postId'),
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'GCommentCreateInput', 'content'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCommentUpdateInput extends GCommentUpdateInput {
  @override
  final String content;

  factory _$GCommentUpdateInput(
          [void Function(GCommentUpdateInputBuilder)? updates]) =>
      (new GCommentUpdateInputBuilder()..update(updates))._build();

  _$GCommentUpdateInput._({required this.content}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        content, r'GCommentUpdateInput', 'content');
  }

  @override
  GCommentUpdateInput rebuild(
          void Function(GCommentUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCommentUpdateInputBuilder toBuilder() =>
      new GCommentUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCommentUpdateInput && content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCommentUpdateInput')
          ..add('content', content))
        .toString();
  }
}

class GCommentUpdateInputBuilder
    implements Builder<GCommentUpdateInput, GCommentUpdateInputBuilder> {
  _$GCommentUpdateInput? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  GCommentUpdateInputBuilder();

  GCommentUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCommentUpdateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCommentUpdateInput;
  }

  @override
  void update(void Function(GCommentUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCommentUpdateInput build() => _build();

  _$GCommentUpdateInput _build() {
    final _$result = _$v ??
        new _$GCommentUpdateInput._(
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'GCommentUpdateInput', 'content'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GPostCreateInput extends GPostCreateInput {
  @override
  final String title;
  @override
  final String content;

  factory _$GPostCreateInput(
          [void Function(GPostCreateInputBuilder)? updates]) =>
      (new GPostCreateInputBuilder()..update(updates))._build();

  _$GPostCreateInput._({required this.title, required this.content})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GPostCreateInput', 'title');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GPostCreateInput', 'content');
  }

  @override
  GPostCreateInput rebuild(void Function(GPostCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostCreateInputBuilder toBuilder() =>
      new GPostCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostCreateInput &&
        title == other.title &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostCreateInput')
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class GPostCreateInputBuilder
    implements Builder<GPostCreateInput, GPostCreateInputBuilder> {
  _$GPostCreateInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  GPostCreateInputBuilder();

  GPostCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostCreateInput;
  }

  @override
  void update(void Function(GPostCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostCreateInput build() => _build();

  _$GPostCreateInput _build() {
    final _$result = _$v ??
        new _$GPostCreateInput._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'GPostCreateInput', 'title'),
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'GPostCreateInput', 'content'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GPostUpdateInput extends GPostUpdateInput {
  @override
  final String title;
  @override
  final String content;

  factory _$GPostUpdateInput(
          [void Function(GPostUpdateInputBuilder)? updates]) =>
      (new GPostUpdateInputBuilder()..update(updates))._build();

  _$GPostUpdateInput._({required this.title, required this.content})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GPostUpdateInput', 'title');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GPostUpdateInput', 'content');
  }

  @override
  GPostUpdateInput rebuild(void Function(GPostUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostUpdateInputBuilder toBuilder() =>
      new GPostUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostUpdateInput &&
        title == other.title &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostUpdateInput')
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class GPostUpdateInputBuilder
    implements Builder<GPostUpdateInput, GPostUpdateInputBuilder> {
  _$GPostUpdateInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  GPostUpdateInputBuilder();

  GPostUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostUpdateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostUpdateInput;
  }

  @override
  void update(void Function(GPostUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostUpdateInput build() => _build();

  _$GPostUpdateInput _build() {
    final _$result = _$v ??
        new _$GPostUpdateInput._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'GPostUpdateInput', 'title'),
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'GPostUpdateInput', 'content'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GTime extends GTime {
  @override
  final String value;

  factory _$GTime([void Function(GTimeBuilder)? updates]) =>
      (new GTimeBuilder()..update(updates))._build();

  _$GTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GTime', 'value');
  }

  @override
  GTime rebuild(void Function(GTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTimeBuilder toBuilder() => new GTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTime')..add('value', value))
        .toString();
  }
}

class GTimeBuilder implements Builder<GTime, GTimeBuilder> {
  _$GTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GTimeBuilder();

  GTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTime;
  }

  @override
  void update(void Function(GTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTime build() => _build();

  _$GTime _build() {
    final _$result = _$v ??
        new _$GTime._(
          value:
              BuiltValueNullFieldError.checkNotNull(value, r'GTime', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
