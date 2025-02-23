// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreatePostVars> _$gCreatePostVarsSerializer =
    new _$GCreatePostVarsSerializer();

class _$GCreatePostVarsSerializer
    implements StructuredSerializer<GCreatePostVars> {
  @override
  final Iterable<Type> types = const [GCreatePostVars, _$GCreatePostVars];
  @override
  final String wireName = 'GCreatePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GPostCreateInput)));
    }
    return result;
  }

  @override
  GCreatePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GPostCreateInput))!
              as _i1.GPostCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostVars extends GCreatePostVars {
  @override
  final _i1.GPostCreateInput? input;

  factory _$GCreatePostVars([void Function(GCreatePostVarsBuilder)? updates]) =>
      (new GCreatePostVarsBuilder()..update(updates))._build();

  _$GCreatePostVars._({this.input}) : super._();

  @override
  GCreatePostVars rebuild(void Function(GCreatePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostVarsBuilder toBuilder() =>
      new GCreatePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostVars')
          ..add('input', input))
        .toString();
  }
}

class GCreatePostVarsBuilder
    implements Builder<GCreatePostVars, GCreatePostVarsBuilder> {
  _$GCreatePostVars? _$v;

  _i1.GPostCreateInputBuilder? _input;
  _i1.GPostCreateInputBuilder get input =>
      _$this._input ??= new _i1.GPostCreateInputBuilder();
  set input(_i1.GPostCreateInputBuilder? input) => _$this._input = input;

  GCreatePostVarsBuilder();

  GCreatePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostVars;
  }

  @override
  void update(void Function(GCreatePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostVars build() => _build();

  _$GCreatePostVars _build() {
    _$GCreatePostVars _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostVars._(
            input: _input?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
