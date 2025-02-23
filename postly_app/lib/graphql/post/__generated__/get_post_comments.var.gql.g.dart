// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_comments.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPostCommentsVars> _$gGetPostCommentsVarsSerializer =
    new _$GGetPostCommentsVarsSerializer();

class _$GGetPostCommentsVarsSerializer
    implements StructuredSerializer<GGetPostCommentsVars> {
  @override
  final Iterable<Type> types = const [
    GGetPostCommentsVars,
    _$GGetPostCommentsVars
  ];
  @override
  final String wireName = 'GGetPostCommentsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPostCommentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetPostCommentsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostCommentsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GGetPostCommentsVars extends GGetPostCommentsVars {
  @override
  final int postId;

  factory _$GGetPostCommentsVars(
          [void Function(GGetPostCommentsVarsBuilder)? updates]) =>
      (new GGetPostCommentsVarsBuilder()..update(updates))._build();

  _$GGetPostCommentsVars._({required this.postId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postId, r'GGetPostCommentsVars', 'postId');
  }

  @override
  GGetPostCommentsVars rebuild(
          void Function(GGetPostCommentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostCommentsVarsBuilder toBuilder() =>
      new GGetPostCommentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostCommentsVars && postId == other.postId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostCommentsVars')
          ..add('postId', postId))
        .toString();
  }
}

class GGetPostCommentsVarsBuilder
    implements Builder<GGetPostCommentsVars, GGetPostCommentsVarsBuilder> {
  _$GGetPostCommentsVars? _$v;

  int? _postId;
  int? get postId => _$this._postId;
  set postId(int? postId) => _$this._postId = postId;

  GGetPostCommentsVarsBuilder();

  GGetPostCommentsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostCommentsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostCommentsVars;
  }

  @override
  void update(void Function(GGetPostCommentsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostCommentsVars build() => _build();

  _$GGetPostCommentsVars _build() {
    final _$result = _$v ??
        new _$GGetPostCommentsVars._(
          postId: BuiltValueNullFieldError.checkNotNull(
              postId, r'GGetPostCommentsVars', 'postId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
