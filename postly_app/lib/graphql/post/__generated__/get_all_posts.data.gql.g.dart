// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_posts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllPostsData> _$gGetAllPostsDataSerializer =
    new _$GGetAllPostsDataSerializer();
Serializer<GGetAllPostsData_posts> _$gGetAllPostsDataPostsSerializer =
    new _$GGetAllPostsData_postsSerializer();

class _$GGetAllPostsDataSerializer
    implements StructuredSerializer<GGetAllPostsData> {
  @override
  final Iterable<Type> types = const [GGetAllPostsData, _$GGetAllPostsData];
  @override
  final String wireName = 'GGetAllPostsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAllPostsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetAllPostsData_posts)])),
    ];

    return result;
  }

  @override
  GGetAllPostsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllPostsDataBuilder();

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
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetAllPostsData_posts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllPostsData_postsSerializer
    implements StructuredSerializer<GGetAllPostsData_posts> {
  @override
  final Iterable<Type> types = const [
    GGetAllPostsData_posts,
    _$GGetAllPostsData_posts
  ];
  @override
  final String wireName = 'GGetAllPostsData_posts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllPostsData_posts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GTime)),
    ];

    return result;
  }

  @override
  GGetAllPostsData_posts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllPostsData_postsBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GTime))! as _i2.GTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllPostsData extends GGetAllPostsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAllPostsData_posts> posts;

  factory _$GGetAllPostsData(
          [void Function(GGetAllPostsDataBuilder)? updates]) =>
      (new GGetAllPostsDataBuilder()..update(updates))._build();

  _$GGetAllPostsData._({required this.G__typename, required this.posts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetAllPostsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(posts, r'GGetAllPostsData', 'posts');
  }

  @override
  GGetAllPostsData rebuild(void Function(GGetAllPostsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllPostsDataBuilder toBuilder() =>
      new GGetAllPostsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllPostsData &&
        G__typename == other.G__typename &&
        posts == other.posts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, posts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllPostsData')
          ..add('G__typename', G__typename)
          ..add('posts', posts))
        .toString();
  }
}

class GGetAllPostsDataBuilder
    implements Builder<GGetAllPostsData, GGetAllPostsDataBuilder> {
  _$GGetAllPostsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAllPostsData_posts>? _posts;
  ListBuilder<GGetAllPostsData_posts> get posts =>
      _$this._posts ??= new ListBuilder<GGetAllPostsData_posts>();
  set posts(ListBuilder<GGetAllPostsData_posts>? posts) =>
      _$this._posts = posts;

  GGetAllPostsDataBuilder() {
    GGetAllPostsData._initializeBuilder(this);
  }

  GGetAllPostsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _posts = $v.posts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllPostsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllPostsData;
  }

  @override
  void update(void Function(GGetAllPostsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllPostsData build() => _build();

  _$GGetAllPostsData _build() {
    _$GGetAllPostsData _$result;
    try {
      _$result = _$v ??
          new _$GGetAllPostsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetAllPostsData', 'G__typename'),
            posts: posts.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetAllPostsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllPostsData_posts extends GGetAllPostsData_posts {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final _i2.GTime updatedAt;

  factory _$GGetAllPostsData_posts(
          [void Function(GGetAllPostsData_postsBuilder)? updates]) =>
      (new GGetAllPostsData_postsBuilder()..update(updates))._build();

  _$GGetAllPostsData_posts._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.content,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetAllPostsData_posts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GGetAllPostsData_posts', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GGetAllPostsData_posts', 'title');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GGetAllPostsData_posts', 'content');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GGetAllPostsData_posts', 'updatedAt');
  }

  @override
  GGetAllPostsData_posts rebuild(
          void Function(GGetAllPostsData_postsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllPostsData_postsBuilder toBuilder() =>
      new GGetAllPostsData_postsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllPostsData_posts &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        content == other.content &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllPostsData_posts')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('content', content)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GGetAllPostsData_postsBuilder
    implements Builder<GGetAllPostsData_posts, GGetAllPostsData_postsBuilder> {
  _$GGetAllPostsData_posts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  _i2.GTimeBuilder? _updatedAt;
  _i2.GTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GTimeBuilder();
  set updatedAt(_i2.GTimeBuilder? updatedAt) => _$this._updatedAt = updatedAt;

  GGetAllPostsData_postsBuilder() {
    GGetAllPostsData_posts._initializeBuilder(this);
  }

  GGetAllPostsData_postsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _content = $v.content;
      _updatedAt = $v.updatedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllPostsData_posts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllPostsData_posts;
  }

  @override
  void update(void Function(GGetAllPostsData_postsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllPostsData_posts build() => _build();

  _$GGetAllPostsData_posts _build() {
    _$GGetAllPostsData_posts _$result;
    try {
      _$result = _$v ??
          new _$GGetAllPostsData_posts._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetAllPostsData_posts', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GGetAllPostsData_posts', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GGetAllPostsData_posts', 'title'),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'GGetAllPostsData_posts', 'content'),
            updatedAt: updatedAt.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetAllPostsData_posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
