// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_posts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllPostsData> _$gGetAllPostsDataSerializer =
    new _$GGetAllPostsDataSerializer();
Serializer<GGetAllPostsData_posts> _$gGetAllPostsDataPostsSerializer =
    new _$GGetAllPostsData_postsSerializer();
Serializer<GGetAllPostsData_posts_authorInfo>
    _$gGetAllPostsDataPostsAuthorInfoSerializer =
    new _$GGetAllPostsData_posts_authorInfoSerializer();

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
      'authorId',
      serializers.serialize(object.authorId,
          specifiedType: const FullType(String)),
      'commentCount',
      serializers.serialize(object.commentCount,
          specifiedType: const FullType(int)),
      'authorInfo',
      serializers.serialize(object.authorInfo,
          specifiedType: const FullType(GGetAllPostsData_posts_authorInfo)),
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
        case 'authorId':
          result.authorId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'commentCount':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'authorInfo':
          result.authorInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetAllPostsData_posts_authorInfo))!
              as GGetAllPostsData_posts_authorInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllPostsData_posts_authorInfoSerializer
    implements StructuredSerializer<GGetAllPostsData_posts_authorInfo> {
  @override
  final Iterable<Type> types = const [
    GGetAllPostsData_posts_authorInfo,
    _$GGetAllPostsData_posts_authorInfo
  ];
  @override
  final String wireName = 'GGetAllPostsData_posts_authorInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllPostsData_posts_authorInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'pictureUrl',
      serializers.serialize(object.pictureUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetAllPostsData_posts_authorInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllPostsData_posts_authorInfoBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pictureUrl':
          result.pictureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
  @override
  final String authorId;
  @override
  final int commentCount;
  @override
  final GGetAllPostsData_posts_authorInfo authorInfo;

  factory _$GGetAllPostsData_posts(
          [void Function(GGetAllPostsData_postsBuilder)? updates]) =>
      (new GGetAllPostsData_postsBuilder()..update(updates))._build();

  _$GGetAllPostsData_posts._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.content,
      required this.updatedAt,
      required this.authorId,
      required this.commentCount,
      required this.authorInfo})
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
    BuiltValueNullFieldError.checkNotNull(
        authorId, r'GGetAllPostsData_posts', 'authorId');
    BuiltValueNullFieldError.checkNotNull(
        commentCount, r'GGetAllPostsData_posts', 'commentCount');
    BuiltValueNullFieldError.checkNotNull(
        authorInfo, r'GGetAllPostsData_posts', 'authorInfo');
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
        updatedAt == other.updatedAt &&
        authorId == other.authorId &&
        commentCount == other.commentCount &&
        authorInfo == other.authorInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, authorId.hashCode);
    _$hash = $jc(_$hash, commentCount.hashCode);
    _$hash = $jc(_$hash, authorInfo.hashCode);
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
          ..add('updatedAt', updatedAt)
          ..add('authorId', authorId)
          ..add('commentCount', commentCount)
          ..add('authorInfo', authorInfo))
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

  String? _authorId;
  String? get authorId => _$this._authorId;
  set authorId(String? authorId) => _$this._authorId = authorId;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  GGetAllPostsData_posts_authorInfoBuilder? _authorInfo;
  GGetAllPostsData_posts_authorInfoBuilder get authorInfo =>
      _$this._authorInfo ??= new GGetAllPostsData_posts_authorInfoBuilder();
  set authorInfo(GGetAllPostsData_posts_authorInfoBuilder? authorInfo) =>
      _$this._authorInfo = authorInfo;

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
      _authorId = $v.authorId;
      _commentCount = $v.commentCount;
      _authorInfo = $v.authorInfo.toBuilder();
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
            authorId: BuiltValueNullFieldError.checkNotNull(
                authorId, r'GGetAllPostsData_posts', 'authorId'),
            commentCount: BuiltValueNullFieldError.checkNotNull(
                commentCount, r'GGetAllPostsData_posts', 'commentCount'),
            authorInfo: authorInfo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedAt';
        updatedAt.build();

        _$failedField = 'authorInfo';
        authorInfo.build();
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

class _$GGetAllPostsData_posts_authorInfo
    extends GGetAllPostsData_posts_authorInfo {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String pictureUrl;

  factory _$GGetAllPostsData_posts_authorInfo(
          [void Function(GGetAllPostsData_posts_authorInfoBuilder)? updates]) =>
      (new GGetAllPostsData_posts_authorInfoBuilder()..update(updates))
          ._build();

  _$GGetAllPostsData_posts_authorInfo._(
      {required this.G__typename, required this.name, required this.pictureUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetAllPostsData_posts_authorInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GGetAllPostsData_posts_authorInfo', 'name');
    BuiltValueNullFieldError.checkNotNull(
        pictureUrl, r'GGetAllPostsData_posts_authorInfo', 'pictureUrl');
  }

  @override
  GGetAllPostsData_posts_authorInfo rebuild(
          void Function(GGetAllPostsData_posts_authorInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllPostsData_posts_authorInfoBuilder toBuilder() =>
      new GGetAllPostsData_posts_authorInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllPostsData_posts_authorInfo &&
        G__typename == other.G__typename &&
        name == other.name &&
        pictureUrl == other.pictureUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, pictureUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllPostsData_posts_authorInfo')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('pictureUrl', pictureUrl))
        .toString();
  }
}

class GGetAllPostsData_posts_authorInfoBuilder
    implements
        Builder<GGetAllPostsData_posts_authorInfo,
            GGetAllPostsData_posts_authorInfoBuilder> {
  _$GGetAllPostsData_posts_authorInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _pictureUrl;
  String? get pictureUrl => _$this._pictureUrl;
  set pictureUrl(String? pictureUrl) => _$this._pictureUrl = pictureUrl;

  GGetAllPostsData_posts_authorInfoBuilder() {
    GGetAllPostsData_posts_authorInfo._initializeBuilder(this);
  }

  GGetAllPostsData_posts_authorInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _pictureUrl = $v.pictureUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllPostsData_posts_authorInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllPostsData_posts_authorInfo;
  }

  @override
  void update(
      void Function(GGetAllPostsData_posts_authorInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllPostsData_posts_authorInfo build() => _build();

  _$GGetAllPostsData_posts_authorInfo _build() {
    final _$result = _$v ??
        new _$GGetAllPostsData_posts_authorInfo._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GGetAllPostsData_posts_authorInfo', 'G__typename'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'GGetAllPostsData_posts_authorInfo', 'name'),
          pictureUrl: BuiltValueNullFieldError.checkNotNull(
              pictureUrl, r'GGetAllPostsData_posts_authorInfo', 'pictureUrl'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
