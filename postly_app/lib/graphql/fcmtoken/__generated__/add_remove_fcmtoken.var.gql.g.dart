// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_remove_fcmtoken.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFCMTokenAddOrRemoveVars> _$gFCMTokenAddOrRemoveVarsSerializer =
    new _$GFCMTokenAddOrRemoveVarsSerializer();

class _$GFCMTokenAddOrRemoveVarsSerializer
    implements StructuredSerializer<GFCMTokenAddOrRemoveVars> {
  @override
  final Iterable<Type> types = const [
    GFCMTokenAddOrRemoveVars,
    _$GFCMTokenAddOrRemoveVars
  ];
  @override
  final String wireName = 'GFCMTokenAddOrRemoveVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFCMTokenAddOrRemoveVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.addToken;
    if (value != null) {
      result
        ..add('addToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.removeToken;
    if (value != null) {
      result
        ..add('removeToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFCMTokenAddOrRemoveVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFCMTokenAddOrRemoveVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'addToken':
          result.addToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'removeToken':
          result.removeToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFCMTokenAddOrRemoveVars extends GFCMTokenAddOrRemoveVars {
  @override
  final String? addToken;
  @override
  final String? removeToken;

  factory _$GFCMTokenAddOrRemoveVars(
          [void Function(GFCMTokenAddOrRemoveVarsBuilder)? updates]) =>
      (new GFCMTokenAddOrRemoveVarsBuilder()..update(updates))._build();

  _$GFCMTokenAddOrRemoveVars._({this.addToken, this.removeToken}) : super._();

  @override
  GFCMTokenAddOrRemoveVars rebuild(
          void Function(GFCMTokenAddOrRemoveVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFCMTokenAddOrRemoveVarsBuilder toBuilder() =>
      new GFCMTokenAddOrRemoveVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFCMTokenAddOrRemoveVars &&
        addToken == other.addToken &&
        removeToken == other.removeToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addToken.hashCode);
    _$hash = $jc(_$hash, removeToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFCMTokenAddOrRemoveVars')
          ..add('addToken', addToken)
          ..add('removeToken', removeToken))
        .toString();
  }
}

class GFCMTokenAddOrRemoveVarsBuilder
    implements
        Builder<GFCMTokenAddOrRemoveVars, GFCMTokenAddOrRemoveVarsBuilder> {
  _$GFCMTokenAddOrRemoveVars? _$v;

  String? _addToken;
  String? get addToken => _$this._addToken;
  set addToken(String? addToken) => _$this._addToken = addToken;

  String? _removeToken;
  String? get removeToken => _$this._removeToken;
  set removeToken(String? removeToken) => _$this._removeToken = removeToken;

  GFCMTokenAddOrRemoveVarsBuilder();

  GFCMTokenAddOrRemoveVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addToken = $v.addToken;
      _removeToken = $v.removeToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFCMTokenAddOrRemoveVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFCMTokenAddOrRemoveVars;
  }

  @override
  void update(void Function(GFCMTokenAddOrRemoveVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFCMTokenAddOrRemoveVars build() => _build();

  _$GFCMTokenAddOrRemoveVars _build() {
    final _$result = _$v ??
        new _$GFCMTokenAddOrRemoveVars._(
          addToken: addToken,
          removeToken: removeToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
