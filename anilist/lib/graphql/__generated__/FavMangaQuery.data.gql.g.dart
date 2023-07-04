// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FavMangaQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFavMangaQueryData> _$gFavMangaQueryDataSerializer =
    new _$GFavMangaQueryDataSerializer();
Serializer<GFavMangaQueryData_Viewer> _$gFavMangaQueryDataViewerSerializer =
    new _$GFavMangaQueryData_ViewerSerializer();
Serializer<GFavMangaQueryData_Viewer_favourites>
    _$gFavMangaQueryDataViewerFavouritesSerializer =
    new _$GFavMangaQueryData_Viewer_favouritesSerializer();
Serializer<GFavMangaQueryData_Viewer_favourites_manga>
    _$gFavMangaQueryDataViewerFavouritesMangaSerializer =
    new _$GFavMangaQueryData_Viewer_favourites_mangaSerializer();
Serializer<GFavMangaQueryData_Viewer_favourites_manga_pageInfo>
    _$gFavMangaQueryDataViewerFavouritesMangaPageInfoSerializer =
    new _$GFavMangaQueryData_Viewer_favourites_manga_pageInfoSerializer();
Serializer<GFavMangaQueryData_Viewer_favourites_manga_nodes>
    _$gFavMangaQueryDataViewerFavouritesMangaNodesSerializer =
    new _$GFavMangaQueryData_Viewer_favourites_manga_nodesSerializer();
Serializer<GFavMangaQueryData_Viewer_favourites_manga_nodes_title>
    _$gFavMangaQueryDataViewerFavouritesMangaNodesTitleSerializer =
    new _$GFavMangaQueryData_Viewer_favourites_manga_nodes_titleSerializer();
Serializer<GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage>
    _$gFavMangaQueryDataViewerFavouritesMangaNodesCoverImageSerializer =
    new _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageSerializer();

class _$GFavMangaQueryDataSerializer
    implements StructuredSerializer<GFavMangaQueryData> {
  @override
  final Iterable<Type> types = const [GFavMangaQueryData, _$GFavMangaQueryData];
  @override
  final String wireName = 'GFavMangaQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavMangaQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Viewer;
    if (value != null) {
      result
        ..add('Viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFavMangaQueryData_Viewer)));
    }
    return result;
  }

  @override
  GFavMangaQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavMangaQueryDataBuilder();

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
        case 'Viewer':
          result.Viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFavMangaQueryData_Viewer))!
              as GFavMangaQueryData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData_ViewerSerializer
    implements StructuredSerializer<GFavMangaQueryData_Viewer> {
  @override
  final Iterable<Type> types = const [
    GFavMangaQueryData_Viewer,
    _$GFavMangaQueryData_Viewer
  ];
  @override
  final String wireName = 'GFavMangaQueryData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavMangaQueryData_Viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GFavMangaQueryData_Viewer_favourites)));
    }
    return result;
  }

  @override
  GFavMangaQueryData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavMangaQueryData_ViewerBuilder();

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
        case 'favourites':
          result.favourites.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFavMangaQueryData_Viewer_favourites))!
              as GFavMangaQueryData_Viewer_favourites);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData_Viewer_favouritesSerializer
    implements StructuredSerializer<GFavMangaQueryData_Viewer_favourites> {
  @override
  final Iterable<Type> types = const [
    GFavMangaQueryData_Viewer_favourites,
    _$GFavMangaQueryData_Viewer_favourites
  ];
  @override
  final String wireName = 'GFavMangaQueryData_Viewer_favourites';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavMangaQueryData_Viewer_favourites object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GFavMangaQueryData_Viewer_favourites_manga)));
    }
    return result;
  }

  @override
  GFavMangaQueryData_Viewer_favourites deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavMangaQueryData_Viewer_favouritesBuilder();

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
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFavMangaQueryData_Viewer_favourites_manga))!
              as GFavMangaQueryData_Viewer_favourites_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData_Viewer_favourites_mangaSerializer
    implements
        StructuredSerializer<GFavMangaQueryData_Viewer_favourites_manga> {
  @override
  final Iterable<Type> types = const [
    GFavMangaQueryData_Viewer_favourites_manga,
    _$GFavMangaQueryData_Viewer_favourites_manga
  ];
  @override
  final String wireName = 'GFavMangaQueryData_Viewer_favourites_manga';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavMangaQueryData_Viewer_favourites_manga object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFavMangaQueryData_Viewer_favourites_manga_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GFavMangaQueryData_Viewer_favourites_manga_nodes)
            ])));
    }
    return result;
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavMangaQueryData_Viewer_favourites_mangaBuilder();

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
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFavMangaQueryData_Viewer_favourites_manga_pageInfo))!
              as GFavMangaQueryData_Viewer_favourites_manga_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GFavMangaQueryData_Viewer_favourites_manga_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_pageInfoSerializer
    implements
        StructuredSerializer<
            GFavMangaQueryData_Viewer_favourites_manga_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFavMangaQueryData_Viewer_favourites_manga_pageInfo,
    _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo
  ];
  @override
  final String wireName = 'GFavMangaQueryData_Viewer_favourites_manga_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavMangaQueryData_Viewer_favourites_manga_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder();

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
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_nodesSerializer
    implements
        StructuredSerializer<GFavMangaQueryData_Viewer_favourites_manga_nodes> {
  @override
  final Iterable<Type> types = const [
    GFavMangaQueryData_Viewer_favourites_manga_nodes,
    _$GFavMangaQueryData_Viewer_favourites_manga_nodes
  ];
  @override
  final String wireName = 'GFavMangaQueryData_Viewer_favourites_manga_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavMangaQueryData_Viewer_favourites_manga_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFavMangaQueryData_Viewer_favourites_manga_nodes_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage)));
    }
    return result;
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder();

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
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFavMangaQueryData_Viewer_favourites_manga_nodes_title))!
              as GFavMangaQueryData_Viewer_favourites_manga_nodes_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage))!
              as GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_nodes_titleSerializer
    implements
        StructuredSerializer<
            GFavMangaQueryData_Viewer_favourites_manga_nodes_title> {
  @override
  final Iterable<Type> types = const [
    GFavMangaQueryData_Viewer_favourites_manga_nodes_title,
    _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title
  ];
  @override
  final String wireName =
      'GFavMangaQueryData_Viewer_favourites_manga_nodes_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavMangaQueryData_Viewer_favourites_manga_nodes_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder();

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
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageSerializer
    implements
        StructuredSerializer<
            GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage> {
  @override
  final Iterable<Type> types = const [
    GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage,
    _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage
  ];
  @override
  final String wireName =
      'GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFavMangaQueryData extends GFavMangaQueryData {
  @override
  final String G__typename;
  @override
  final GFavMangaQueryData_Viewer? Viewer;

  factory _$GFavMangaQueryData(
          [void Function(GFavMangaQueryDataBuilder)? updates]) =>
      (new GFavMangaQueryDataBuilder()..update(updates))._build();

  _$GFavMangaQueryData._({required this.G__typename, this.Viewer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFavMangaQueryData', 'G__typename');
  }

  @override
  GFavMangaQueryData rebuild(
          void Function(GFavMangaQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryDataBuilder toBuilder() =>
      new GFavMangaQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryData &&
        G__typename == other.G__typename &&
        Viewer == other.Viewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Viewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFavMangaQueryData')
          ..add('G__typename', G__typename)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GFavMangaQueryDataBuilder
    implements Builder<GFavMangaQueryData, GFavMangaQueryDataBuilder> {
  _$GFavMangaQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFavMangaQueryData_ViewerBuilder? _Viewer;
  GFavMangaQueryData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GFavMangaQueryData_ViewerBuilder();
  set Viewer(GFavMangaQueryData_ViewerBuilder? Viewer) =>
      _$this._Viewer = Viewer;

  GFavMangaQueryDataBuilder() {
    GFavMangaQueryData._initializeBuilder(this);
  }

  GFavMangaQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryData;
  }

  @override
  void update(void Function(GFavMangaQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData build() => _build();

  _$GFavMangaQueryData _build() {
    _$GFavMangaQueryData _$result;
    try {
      _$result = _$v ??
          new _$GFavMangaQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFavMangaQueryData', 'G__typename'),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavMangaQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavMangaQueryData_Viewer extends GFavMangaQueryData_Viewer {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GFavMangaQueryData_Viewer_favourites? favourites;

  factory _$GFavMangaQueryData_Viewer(
          [void Function(GFavMangaQueryData_ViewerBuilder)? updates]) =>
      (new GFavMangaQueryData_ViewerBuilder()..update(updates))._build();

  _$GFavMangaQueryData_Viewer._(
      {required this.G__typename, required this.id, this.favourites})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFavMangaQueryData_Viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GFavMangaQueryData_Viewer', 'id');
  }

  @override
  GFavMangaQueryData_Viewer rebuild(
          void Function(GFavMangaQueryData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryData_ViewerBuilder toBuilder() =>
      new GFavMangaQueryData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryData_Viewer &&
        G__typename == other.G__typename &&
        id == other.id &&
        favourites == other.favourites;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFavMangaQueryData_Viewer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favourites', favourites))
        .toString();
  }
}

class GFavMangaQueryData_ViewerBuilder
    implements
        Builder<GFavMangaQueryData_Viewer, GFavMangaQueryData_ViewerBuilder> {
  _$GFavMangaQueryData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GFavMangaQueryData_Viewer_favouritesBuilder? _favourites;
  GFavMangaQueryData_Viewer_favouritesBuilder get favourites =>
      _$this._favourites ??= new GFavMangaQueryData_Viewer_favouritesBuilder();
  set favourites(GFavMangaQueryData_Viewer_favouritesBuilder? favourites) =>
      _$this._favourites = favourites;

  GFavMangaQueryData_ViewerBuilder() {
    GFavMangaQueryData_Viewer._initializeBuilder(this);
  }

  GFavMangaQueryData_ViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _favourites = $v.favourites?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryData_Viewer;
  }

  @override
  void update(void Function(GFavMangaQueryData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData_Viewer build() => _build();

  _$GFavMangaQueryData_Viewer _build() {
    _$GFavMangaQueryData_Viewer _$result;
    try {
      _$result = _$v ??
          new _$GFavMangaQueryData_Viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFavMangaQueryData_Viewer', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GFavMangaQueryData_Viewer', 'id'),
              favourites: _favourites?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favourites';
        _favourites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavMangaQueryData_Viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavMangaQueryData_Viewer_favourites
    extends GFavMangaQueryData_Viewer_favourites {
  @override
  final String G__typename;
  @override
  final GFavMangaQueryData_Viewer_favourites_manga? manga;

  factory _$GFavMangaQueryData_Viewer_favourites(
          [void Function(GFavMangaQueryData_Viewer_favouritesBuilder)?
              updates]) =>
      (new GFavMangaQueryData_Viewer_favouritesBuilder()..update(updates))
          ._build();

  _$GFavMangaQueryData_Viewer_favourites._(
      {required this.G__typename, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFavMangaQueryData_Viewer_favourites', 'G__typename');
  }

  @override
  GFavMangaQueryData_Viewer_favourites rebuild(
          void Function(GFavMangaQueryData_Viewer_favouritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryData_Viewer_favouritesBuilder toBuilder() =>
      new GFavMangaQueryData_Viewer_favouritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryData_Viewer_favourites &&
        G__typename == other.G__typename &&
        manga == other.manga;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFavMangaQueryData_Viewer_favourites')
          ..add('G__typename', G__typename)
          ..add('manga', manga))
        .toString();
  }
}

class GFavMangaQueryData_Viewer_favouritesBuilder
    implements
        Builder<GFavMangaQueryData_Viewer_favourites,
            GFavMangaQueryData_Viewer_favouritesBuilder> {
  _$GFavMangaQueryData_Viewer_favourites? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFavMangaQueryData_Viewer_favourites_mangaBuilder? _manga;
  GFavMangaQueryData_Viewer_favourites_mangaBuilder get manga =>
      _$this._manga ??= new GFavMangaQueryData_Viewer_favourites_mangaBuilder();
  set manga(GFavMangaQueryData_Viewer_favourites_mangaBuilder? manga) =>
      _$this._manga = manga;

  GFavMangaQueryData_Viewer_favouritesBuilder() {
    GFavMangaQueryData_Viewer_favourites._initializeBuilder(this);
  }

  GFavMangaQueryData_Viewer_favouritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _manga = $v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryData_Viewer_favourites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryData_Viewer_favourites;
  }

  @override
  void update(
      void Function(GFavMangaQueryData_Viewer_favouritesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData_Viewer_favourites build() => _build();

  _$GFavMangaQueryData_Viewer_favourites _build() {
    _$GFavMangaQueryData_Viewer_favourites _$result;
    try {
      _$result = _$v ??
          new _$GFavMangaQueryData_Viewer_favourites._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GFavMangaQueryData_Viewer_favourites', 'G__typename'),
              manga: _manga?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manga';
        _manga?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavMangaQueryData_Viewer_favourites',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga
    extends GFavMangaQueryData_Viewer_favourites_manga {
  @override
  final String G__typename;
  @override
  final GFavMangaQueryData_Viewer_favourites_manga_pageInfo? pageInfo;
  @override
  final BuiltList<GFavMangaQueryData_Viewer_favourites_manga_nodes?>? nodes;

  factory _$GFavMangaQueryData_Viewer_favourites_manga(
          [void Function(GFavMangaQueryData_Viewer_favourites_mangaBuilder)?
              updates]) =>
      (new GFavMangaQueryData_Viewer_favourites_mangaBuilder()..update(updates))
          ._build();

  _$GFavMangaQueryData_Viewer_favourites_manga._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFavMangaQueryData_Viewer_favourites_manga', 'G__typename');
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga rebuild(
          void Function(GFavMangaQueryData_Viewer_favourites_mangaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryData_Viewer_favourites_mangaBuilder toBuilder() =>
      new GFavMangaQueryData_Viewer_favourites_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryData_Viewer_favourites_manga &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavMangaQueryData_Viewer_favourites_manga')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GFavMangaQueryData_Viewer_favourites_mangaBuilder
    implements
        Builder<GFavMangaQueryData_Viewer_favourites_manga,
            GFavMangaQueryData_Viewer_favourites_mangaBuilder> {
  _$GFavMangaQueryData_Viewer_favourites_manga? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder? _pageInfo;
  GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder();
  set pageInfo(
          GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GFavMangaQueryData_Viewer_favourites_manga_nodes?>? _nodes;
  ListBuilder<GFavMangaQueryData_Viewer_favourites_manga_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GFavMangaQueryData_Viewer_favourites_manga_nodes?>();
  set nodes(
          ListBuilder<GFavMangaQueryData_Viewer_favourites_manga_nodes?>?
              nodes) =>
      _$this._nodes = nodes;

  GFavMangaQueryData_Viewer_favourites_mangaBuilder() {
    GFavMangaQueryData_Viewer_favourites_manga._initializeBuilder(this);
  }

  GFavMangaQueryData_Viewer_favourites_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryData_Viewer_favourites_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryData_Viewer_favourites_manga;
  }

  @override
  void update(
      void Function(GFavMangaQueryData_Viewer_favourites_mangaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga build() => _build();

  _$GFavMangaQueryData_Viewer_favourites_manga _build() {
    _$GFavMangaQueryData_Viewer_favourites_manga _$result;
    try {
      _$result = _$v ??
          new _$GFavMangaQueryData_Viewer_favourites_manga._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GFavMangaQueryData_Viewer_favourites_manga', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavMangaQueryData_Viewer_favourites_manga',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo
    extends GFavMangaQueryData_Viewer_favourites_manga_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final int? perPage;

  factory _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo(
          [void Function(
                  GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder)?
              updates]) =>
      (new GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo._(
      {required this.G__typename, this.currentPage, this.perPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFavMangaQueryData_Viewer_favourites_manga_pageInfo', 'G__typename');
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_pageInfo rebuild(
          void Function(
                  GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder toBuilder() =>
      new GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryData_Viewer_favourites_manga_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavMangaQueryData_Viewer_favourites_manga_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('perPage', perPage))
        .toString();
  }
}

class GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder
    implements
        Builder<GFavMangaQueryData_Viewer_favourites_manga_pageInfo,
            GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder> {
  _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder() {
    GFavMangaQueryData_Viewer_favourites_manga_pageInfo._initializeBuilder(
        this);
  }

  GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryData_Viewer_favourites_manga_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo;
  }

  @override
  void update(
      void Function(GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_pageInfo build() => _build();

  _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo _build() {
    final _$result = _$v ??
        new _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFavMangaQueryData_Viewer_favourites_manga_pageInfo',
                'G__typename'),
            currentPage: currentPage,
            perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_nodes
    extends GFavMangaQueryData_Viewer_favourites_manga_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GFavMangaQueryData_Viewer_favourites_manga_nodes_title? title;
  @override
  final GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage? coverImage;

  factory _$GFavMangaQueryData_Viewer_favourites_manga_nodes(
          [void Function(
                  GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder)?
              updates]) =>
      (new GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder()
            ..update(updates))
          ._build();

  _$GFavMangaQueryData_Viewer_favourites_manga_nodes._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFavMangaQueryData_Viewer_favourites_manga_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GFavMangaQueryData_Viewer_favourites_manga_nodes', 'id');
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes rebuild(
          void Function(GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder toBuilder() =>
      new GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryData_Viewer_favourites_manga_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavMangaQueryData_Viewer_favourites_manga_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder
    implements
        Builder<GFavMangaQueryData_Viewer_favourites_manga_nodes,
            GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder> {
  _$GFavMangaQueryData_Viewer_favourites_manga_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder? _title;
  GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder get title =>
      _$this._title ??=
          new GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder();
  set title(
          GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder?
              title) =>
      _$this._title = title;

  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder?
      _coverImage;
  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder();
  set coverImage(
          GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder() {
    GFavMangaQueryData_Viewer_favourites_manga_nodes._initializeBuilder(this);
  }

  GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryData_Viewer_favourites_manga_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryData_Viewer_favourites_manga_nodes;
  }

  @override
  void update(
      void Function(GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes build() => _build();

  _$GFavMangaQueryData_Viewer_favourites_manga_nodes _build() {
    _$GFavMangaQueryData_Viewer_favourites_manga_nodes _$result;
    try {
      _$result = _$v ??
          new _$GFavMangaQueryData_Viewer_favourites_manga_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GFavMangaQueryData_Viewer_favourites_manga_nodes',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GFavMangaQueryData_Viewer_favourites_manga_nodes', 'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavMangaQueryData_Viewer_favourites_manga_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title
    extends GFavMangaQueryData_Viewer_favourites_manga_nodes_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title(
          [void Function(
                  GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder)?
              updates]) =>
      (new GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder()
            ..update(updates))
          ._build();

  _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFavMangaQueryData_Viewer_favourites_manga_nodes_title',
        'G__typename');
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_title rebuild(
          void Function(
                  GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder toBuilder() =>
      new GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryData_Viewer_favourites_manga_nodes_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavMangaQueryData_Viewer_favourites_manga_nodes_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder
    implements
        Builder<GFavMangaQueryData_Viewer_favourites_manga_nodes_title,
            GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder> {
  _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder() {
    GFavMangaQueryData_Viewer_favourites_manga_nodes_title._initializeBuilder(
        this);
  }

  GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryData_Viewer_favourites_manga_nodes_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title;
  }

  @override
  void update(
      void Function(
              GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_title build() => _build();

  _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title _build() {
    final _$result = _$v ??
        new _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFavMangaQueryData_Viewer_favourites_manga_nodes_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage
    extends GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;
  @override
  final String? large;
  @override
  final String? medium;

  factory _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage(
          [void Function(
                  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder)?
              updates]) =>
      (new GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage._(
      {required this.G__typename, this.extraLarge, this.large, this.medium})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage',
        'G__typename');
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage rebuild(
          void Function(
                  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder
      toBuilder() =>
          new GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge &&
        large == other.large &&
        medium == other.medium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge)
          ..add('large', large)
          ..add('medium', medium))
        .toString();
  }
}

class GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder
    implements
        Builder<GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage,
            GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder> {
  _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder() {
    GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage
        ._initializeBuilder(this);
  }

  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _large = $v.large;
      _medium = $v.medium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage;
  }

  @override
  void update(
      void Function(
              GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage build() =>
      _build();

  _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage _build() {
    final _$result = _$v ??
        new _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage',
                'G__typename'),
            extraLarge: extraLarge,
            large: large,
            medium: medium);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
