// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateCommentVars> _$gCreateCommentVarsSerializer =
    new _$GCreateCommentVarsSerializer();

class _$GCreateCommentVarsSerializer
    implements StructuredSerializer<GCreateCommentVars> {
  @override
  final Iterable<Type> types = const [GCreateCommentVars, _$GCreateCommentVars];
  @override
  final String wireName = 'GCreateCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GCommentCreateInput)),
    ];

    return result;
  }

  @override
  GCreateCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCommentCreateInput))!
              as _i1.GCommentCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentVars extends GCreateCommentVars {
  @override
  final _i1.GCommentCreateInput input;

  factory _$GCreateCommentVars(
          [void Function(GCreateCommentVarsBuilder)? updates]) =>
      (new GCreateCommentVarsBuilder()..update(updates))._build();

  _$GCreateCommentVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'GCreateCommentVars', 'input');
  }

  @override
  GCreateCommentVars rebuild(
          void Function(GCreateCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentVarsBuilder toBuilder() =>
      new GCreateCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'GCreateCommentVars')
          ..add('input', input))
        .toString();
  }
}

class GCreateCommentVarsBuilder
    implements Builder<GCreateCommentVars, GCreateCommentVarsBuilder> {
  _$GCreateCommentVars? _$v;

  _i1.GCommentCreateInputBuilder? _input;
  _i1.GCommentCreateInputBuilder get input =>
      _$this._input ??= new _i1.GCommentCreateInputBuilder();
  set input(_i1.GCommentCreateInputBuilder? input) => _$this._input = input;

  GCreateCommentVarsBuilder();

  GCreateCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentVars;
  }

  @override
  void update(void Function(GCreateCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentVars build() => _build();

  _$GCreateCommentVars _build() {
    _$GCreateCommentVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateCommentVars._(
            input: input.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateCommentVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
