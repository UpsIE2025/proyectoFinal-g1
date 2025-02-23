// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdatePostVars> _$gUpdatePostVarsSerializer =
    new _$GUpdatePostVarsSerializer();

class _$GUpdatePostVarsSerializer
    implements StructuredSerializer<GUpdatePostVars> {
  @override
  final Iterable<Type> types = const [GUpdatePostVars, _$GUpdatePostVars];
  @override
  final String wireName = 'GUpdatePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GPostUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdatePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GPostUpdateInput))!
              as _i1.GPostUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostVars extends GUpdatePostVars {
  @override
  final int id;
  @override
  final _i1.GPostUpdateInput input;

  factory _$GUpdatePostVars([void Function(GUpdatePostVarsBuilder)? updates]) =>
      (new GUpdatePostVarsBuilder()..update(updates))._build();

  _$GUpdatePostVars._({required this.id, required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdatePostVars', 'id');
    BuiltValueNullFieldError.checkNotNull(input, r'GUpdatePostVars', 'input');
  }

  @override
  GUpdatePostVars rebuild(void Function(GUpdatePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostVarsBuilder toBuilder() =>
      new GUpdatePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostVars && id == other.id && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePostVars')
          ..add('id', id)
          ..add('input', input))
        .toString();
  }
}

class GUpdatePostVarsBuilder
    implements Builder<GUpdatePostVars, GUpdatePostVarsBuilder> {
  _$GUpdatePostVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i1.GPostUpdateInputBuilder? _input;
  _i1.GPostUpdateInputBuilder get input =>
      _$this._input ??= new _i1.GPostUpdateInputBuilder();
  set input(_i1.GPostUpdateInputBuilder? input) => _$this._input = input;

  GUpdatePostVarsBuilder();

  GUpdatePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostVars;
  }

  @override
  void update(void Function(GUpdatePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostVars build() => _build();

  _$GUpdatePostVars _build() {
    _$GUpdatePostVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePostVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdatePostVars', 'id'),
            input: input.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePostVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
