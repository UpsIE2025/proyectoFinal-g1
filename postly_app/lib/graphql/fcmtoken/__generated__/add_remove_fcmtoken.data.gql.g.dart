// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_remove_fcmtoken.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFCMTokenAddOrRemoveData> _$gFCMTokenAddOrRemoveDataSerializer =
    new _$GFCMTokenAddOrRemoveDataSerializer();
Serializer<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken>
    _$gFCMTokenAddOrRemoveDataAddOrRemoveFCMTokenSerializer =
    new _$GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenSerializer();
Serializer<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error>
    _$gFCMTokenAddOrRemoveDataAddOrRemoveFCMTokenErrorSerializer =
    new _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorSerializer();

class _$GFCMTokenAddOrRemoveDataSerializer
    implements StructuredSerializer<GFCMTokenAddOrRemoveData> {
  @override
  final Iterable<Type> types = const [
    GFCMTokenAddOrRemoveData,
    _$GFCMTokenAddOrRemoveData
  ];
  @override
  final String wireName = 'GFCMTokenAddOrRemoveData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFCMTokenAddOrRemoveData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'addOrRemoveFCMToken',
      serializers.serialize(object.addOrRemoveFCMToken,
          specifiedType:
              const FullType(GFCMTokenAddOrRemoveData_addOrRemoveFCMToken)),
    ];

    return result;
  }

  @override
  GFCMTokenAddOrRemoveData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFCMTokenAddOrRemoveDataBuilder();

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
        case 'addOrRemoveFCMToken':
          result.addOrRemoveFCMToken.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFCMTokenAddOrRemoveData_addOrRemoveFCMToken))!
              as GFCMTokenAddOrRemoveData_addOrRemoveFCMToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenSerializer
    implements
        StructuredSerializer<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken> {
  @override
  final Iterable<Type> types = const [
    GFCMTokenAddOrRemoveData_addOrRemoveFCMToken,
    _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken
  ];
  @override
  final String wireName = 'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFCMTokenAddOrRemoveData_addOrRemoveFCMToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error)));
    }
    return result;
  }

  @override
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder();

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
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error))!
              as GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error);
          break;
      }
    }

    return result.build();
  }
}

class _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorSerializer
    implements
        StructuredSerializer<
            GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error> {
  @override
  final Iterable<Type> types = const [
    GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error,
    _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error
  ];
  @override
  final String wireName = 'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error object,
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
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder();

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

class _$GFCMTokenAddOrRemoveData extends GFCMTokenAddOrRemoveData {
  @override
  final String G__typename;
  @override
  final GFCMTokenAddOrRemoveData_addOrRemoveFCMToken addOrRemoveFCMToken;

  factory _$GFCMTokenAddOrRemoveData(
          [void Function(GFCMTokenAddOrRemoveDataBuilder)? updates]) =>
      (new GFCMTokenAddOrRemoveDataBuilder()..update(updates))._build();

  _$GFCMTokenAddOrRemoveData._(
      {required this.G__typename, required this.addOrRemoveFCMToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFCMTokenAddOrRemoveData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(addOrRemoveFCMToken,
        r'GFCMTokenAddOrRemoveData', 'addOrRemoveFCMToken');
  }

  @override
  GFCMTokenAddOrRemoveData rebuild(
          void Function(GFCMTokenAddOrRemoveDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFCMTokenAddOrRemoveDataBuilder toBuilder() =>
      new GFCMTokenAddOrRemoveDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFCMTokenAddOrRemoveData &&
        G__typename == other.G__typename &&
        addOrRemoveFCMToken == other.addOrRemoveFCMToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, addOrRemoveFCMToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFCMTokenAddOrRemoveData')
          ..add('G__typename', G__typename)
          ..add('addOrRemoveFCMToken', addOrRemoveFCMToken))
        .toString();
  }
}

class GFCMTokenAddOrRemoveDataBuilder
    implements
        Builder<GFCMTokenAddOrRemoveData, GFCMTokenAddOrRemoveDataBuilder> {
  _$GFCMTokenAddOrRemoveData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder? _addOrRemoveFCMToken;
  GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder get addOrRemoveFCMToken =>
      _$this._addOrRemoveFCMToken ??=
          new GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder();
  set addOrRemoveFCMToken(
          GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder?
              addOrRemoveFCMToken) =>
      _$this._addOrRemoveFCMToken = addOrRemoveFCMToken;

  GFCMTokenAddOrRemoveDataBuilder() {
    GFCMTokenAddOrRemoveData._initializeBuilder(this);
  }

  GFCMTokenAddOrRemoveDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addOrRemoveFCMToken = $v.addOrRemoveFCMToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFCMTokenAddOrRemoveData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFCMTokenAddOrRemoveData;
  }

  @override
  void update(void Function(GFCMTokenAddOrRemoveDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFCMTokenAddOrRemoveData build() => _build();

  _$GFCMTokenAddOrRemoveData _build() {
    _$GFCMTokenAddOrRemoveData _$result;
    try {
      _$result = _$v ??
          new _$GFCMTokenAddOrRemoveData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GFCMTokenAddOrRemoveData', 'G__typename'),
            addOrRemoveFCMToken: addOrRemoveFCMToken.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addOrRemoveFCMToken';
        addOrRemoveFCMToken.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFCMTokenAddOrRemoveData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken
    extends GFCMTokenAddOrRemoveData_addOrRemoveFCMToken {
  @override
  final String G__typename;
  @override
  final GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error? error;

  factory _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken(
          [void Function(GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder)?
              updates]) =>
      (new GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder()
            ..update(updates))
          ._build();

  _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken._(
      {required this.G__typename, this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken', 'G__typename');
  }

  @override
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken rebuild(
          void Function(GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder toBuilder() =>
      new GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFCMTokenAddOrRemoveData_addOrRemoveFCMToken &&
        G__typename == other.G__typename &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken')
          ..add('G__typename', G__typename)
          ..add('error', error))
        .toString();
  }
}

class GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder
    implements
        Builder<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken,
            GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder> {
  _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder? _error;
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder get error =>
      _$this._error ??=
          new GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder();
  set error(GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder? error) =>
      _$this._error = error;

  GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder() {
    GFCMTokenAddOrRemoveData_addOrRemoveFCMToken._initializeBuilder(this);
  }

  GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFCMTokenAddOrRemoveData_addOrRemoveFCMToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken;
  }

  @override
  void update(
      void Function(GFCMTokenAddOrRemoveData_addOrRemoveFCMTokenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken build() => _build();

  _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken _build() {
    _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken _$result;
    try {
      _$result = _$v ??
          new _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken', 'G__typename'),
            error: _error?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error
    extends GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error {
  @override
  final String G__typename;
  @override
  final String message;

  factory _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error(
          [void Function(
                  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder)?
              updates]) =>
      (new GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder()
            ..update(updates))
          ._build();

  _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error._(
      {required this.G__typename, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(message,
        r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error', 'message');
  }

  @override
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error rebuild(
          void Function(
                  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder toBuilder() =>
      new GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error &&
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
            r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error')
          ..add('G__typename', G__typename)
          ..add('message', message))
        .toString();
  }
}

class GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder
    implements
        Builder<GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error,
            GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder> {
  _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder() {
    GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error._initializeBuilder(this);
  }

  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error;
  }

  @override
  void update(
      void Function(GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_errorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error build() => _build();

  _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error _build() {
    final _$result = _$v ??
        new _$GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error',
              'G__typename'),
          message: BuiltValueNullFieldError.checkNotNull(message,
              r'GFCMTokenAddOrRemoveData_addOrRemoveFCMToken_error', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
