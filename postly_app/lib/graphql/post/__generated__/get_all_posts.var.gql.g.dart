// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_posts.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllPostsVars> _$gGetAllPostsVarsSerializer =
    new _$GGetAllPostsVarsSerializer();

class _$GGetAllPostsVarsSerializer
    implements StructuredSerializer<GGetAllPostsVars> {
  @override
  final Iterable<Type> types = const [GGetAllPostsVars, _$GGetAllPostsVars];
  @override
  final String wireName = 'GGetAllPostsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAllPostsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetAllPostsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetAllPostsVarsBuilder().build();
  }
}

class _$GGetAllPostsVars extends GGetAllPostsVars {
  factory _$GGetAllPostsVars(
          [void Function(GGetAllPostsVarsBuilder)? updates]) =>
      (new GGetAllPostsVarsBuilder()..update(updates))._build();

  _$GGetAllPostsVars._() : super._();

  @override
  GGetAllPostsVars rebuild(void Function(GGetAllPostsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllPostsVarsBuilder toBuilder() =>
      new GGetAllPostsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllPostsVars;
  }

  @override
  int get hashCode {
    return 493009303;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetAllPostsVars').toString();
  }
}

class GGetAllPostsVarsBuilder
    implements Builder<GGetAllPostsVars, GGetAllPostsVarsBuilder> {
  _$GGetAllPostsVars? _$v;

  GGetAllPostsVarsBuilder();

  @override
  void replace(GGetAllPostsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllPostsVars;
  }

  @override
  void update(void Function(GGetAllPostsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllPostsVars build() => _build();

  _$GGetAllPostsVars _build() {
    final _$result = _$v ?? new _$GGetAllPostsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
