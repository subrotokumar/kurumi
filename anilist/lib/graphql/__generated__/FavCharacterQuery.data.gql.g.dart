// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FavCharacterQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFavCharacterQueryData> _$gFavCharacterQueryDataSerializer =
    new _$GFavCharacterQueryDataSerializer();
Serializer<GFavCharacterQueryData_Viewer>
    _$gFavCharacterQueryDataViewerSerializer =
    new _$GFavCharacterQueryData_ViewerSerializer();
Serializer<GFavCharacterQueryData_Viewer_favourites>
    _$gFavCharacterQueryDataViewerFavouritesSerializer =
    new _$GFavCharacterQueryData_Viewer_favouritesSerializer();
Serializer<GFavCharacterQueryData_Viewer_favourites_characters>
    _$gFavCharacterQueryDataViewerFavouritesCharactersSerializer =
    new _$GFavCharacterQueryData_Viewer_favourites_charactersSerializer();
Serializer<GFavCharacterQueryData_Viewer_favourites_characters_pageInfo>
    _$gFavCharacterQueryDataViewerFavouritesCharactersPageInfoSerializer =
    new _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfoSerializer();
Serializer<GFavCharacterQueryData_Viewer_favourites_characters_nodes>
    _$gFavCharacterQueryDataViewerFavouritesCharactersNodesSerializer =
    new _$GFavCharacterQueryData_Viewer_favourites_characters_nodesSerializer();
Serializer<GFavCharacterQueryData_Viewer_favourites_characters_nodes_name>
    _$gFavCharacterQueryDataViewerFavouritesCharactersNodesNameSerializer =
    new _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameSerializer();
Serializer<GFavCharacterQueryData_Viewer_favourites_characters_nodes_image>
    _$gFavCharacterQueryDataViewerFavouritesCharactersNodesImageSerializer =
    new _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageSerializer();

class _$GFavCharacterQueryDataSerializer
    implements StructuredSerializer<GFavCharacterQueryData> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData,
    _$GFavCharacterQueryData
  ];
  @override
  final String wireName = 'GFavCharacterQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavCharacterQueryData object,
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
            specifiedType: const FullType(GFavCharacterQueryData_Viewer)));
    }
    return result;
  }

  @override
  GFavCharacterQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavCharacterQueryDataBuilder();

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
                  specifiedType: const FullType(GFavCharacterQueryData_Viewer))!
              as GFavCharacterQueryData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData_ViewerSerializer
    implements StructuredSerializer<GFavCharacterQueryData_Viewer> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData_Viewer,
    _$GFavCharacterQueryData_Viewer
  ];
  @override
  final String wireName = 'GFavCharacterQueryData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavCharacterQueryData_Viewer object,
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
                const FullType(GFavCharacterQueryData_Viewer_favourites)));
    }
    return result;
  }

  @override
  GFavCharacterQueryData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavCharacterQueryData_ViewerBuilder();

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
                      const FullType(GFavCharacterQueryData_Viewer_favourites))!
              as GFavCharacterQueryData_Viewer_favourites);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData_Viewer_favouritesSerializer
    implements StructuredSerializer<GFavCharacterQueryData_Viewer_favourites> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData_Viewer_favourites,
    _$GFavCharacterQueryData_Viewer_favourites
  ];
  @override
  final String wireName = 'GFavCharacterQueryData_Viewer_favourites';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavCharacterQueryData_Viewer_favourites object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFavCharacterQueryData_Viewer_favourites_characters)));
    }
    return result;
  }

  @override
  GFavCharacterQueryData_Viewer_favourites deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavCharacterQueryData_Viewer_favouritesBuilder();

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
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFavCharacterQueryData_Viewer_favourites_characters))!
              as GFavCharacterQueryData_Viewer_favourites_characters);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_charactersSerializer
    implements
        StructuredSerializer<
            GFavCharacterQueryData_Viewer_favourites_characters> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData_Viewer_favourites_characters,
    _$GFavCharacterQueryData_Viewer_favourites_characters
  ];
  @override
  final String wireName = 'GFavCharacterQueryData_Viewer_favourites_characters';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavCharacterQueryData_Viewer_favourites_characters object,
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
                GFavCharacterQueryData_Viewer_favourites_characters_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes)
            ])));
    }
    return result;
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavCharacterQueryData_Viewer_favourites_charactersBuilder();

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
                      GFavCharacterQueryData_Viewer_favourites_characters_pageInfo))!
              as GFavCharacterQueryData_Viewer_favourites_characters_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GFavCharacterQueryData_Viewer_favourites_characters_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfoSerializer
    implements
        StructuredSerializer<
            GFavCharacterQueryData_Viewer_favourites_characters_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData_Viewer_favourites_characters_pageInfo,
    _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo
  ];
  @override
  final String wireName =
      'GFavCharacterQueryData_Viewer_favourites_characters_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavCharacterQueryData_Viewer_favourites_characters_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastPage;
    if (value != null) {
      result
        ..add('lastPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lastPage':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_nodesSerializer
    implements
        StructuredSerializer<
            GFavCharacterQueryData_Viewer_favourites_characters_nodes> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData_Viewer_favourites_characters_nodes,
    _$GFavCharacterQueryData_Viewer_favourites_characters_nodes
  ];
  @override
  final String wireName =
      'GFavCharacterQueryData_Viewer_favourites_characters_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavCharacterQueryData_Viewer_favourites_characters_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFavCharacterQueryData_Viewer_favourites_characters_nodes_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFavCharacterQueryData_Viewer_favourites_characters_nodes_image)));
    }
    return result;
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder();

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
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFavCharacterQueryData_Viewer_favourites_characters_nodes_name))!
              as GFavCharacterQueryData_Viewer_favourites_characters_nodes_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFavCharacterQueryData_Viewer_favourites_characters_nodes_image))!
              as GFavCharacterQueryData_Viewer_favourites_characters_nodes_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameSerializer
    implements
        StructuredSerializer<
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_name> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData_Viewer_favourites_characters_nodes_name,
    _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name
  ];
  @override
  final String wireName =
      'GFavCharacterQueryData_Viewer_favourites_characters_nodes_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavCharacterQueryData_Viewer_favourites_characters_nodes_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.full;
    if (value != null) {
      result
        ..add('full')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder();

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
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageSerializer
    implements
        StructuredSerializer<
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_image> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryData_Viewer_favourites_characters_nodes_image,
    _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image
  ];
  @override
  final String wireName =
      'GFavCharacterQueryData_Viewer_favourites_characters_nodes_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFavCharacterQueryData_Viewer_favourites_characters_nodes_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
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
    return result;
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder();

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
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFavCharacterQueryData extends GFavCharacterQueryData {
  @override
  final String G__typename;
  @override
  final GFavCharacterQueryData_Viewer? Viewer;

  factory _$GFavCharacterQueryData(
          [void Function(GFavCharacterQueryDataBuilder)? updates]) =>
      (new GFavCharacterQueryDataBuilder()..update(updates))._build();

  _$GFavCharacterQueryData._({required this.G__typename, this.Viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFavCharacterQueryData', 'G__typename');
  }

  @override
  GFavCharacterQueryData rebuild(
          void Function(GFavCharacterQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryDataBuilder toBuilder() =>
      new GFavCharacterQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavCharacterQueryData &&
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
    return (newBuiltValueToStringHelper(r'GFavCharacterQueryData')
          ..add('G__typename', G__typename)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GFavCharacterQueryDataBuilder
    implements Builder<GFavCharacterQueryData, GFavCharacterQueryDataBuilder> {
  _$GFavCharacterQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFavCharacterQueryData_ViewerBuilder? _Viewer;
  GFavCharacterQueryData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GFavCharacterQueryData_ViewerBuilder();
  set Viewer(GFavCharacterQueryData_ViewerBuilder? Viewer) =>
      _$this._Viewer = Viewer;

  GFavCharacterQueryDataBuilder() {
    GFavCharacterQueryData._initializeBuilder(this);
  }

  GFavCharacterQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavCharacterQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavCharacterQueryData;
  }

  @override
  void update(void Function(GFavCharacterQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData build() => _build();

  _$GFavCharacterQueryData _build() {
    _$GFavCharacterQueryData _$result;
    try {
      _$result = _$v ??
          new _$GFavCharacterQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFavCharacterQueryData', 'G__typename'),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavCharacterQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavCharacterQueryData_Viewer extends GFavCharacterQueryData_Viewer {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GFavCharacterQueryData_Viewer_favourites? favourites;

  factory _$GFavCharacterQueryData_Viewer(
          [void Function(GFavCharacterQueryData_ViewerBuilder)? updates]) =>
      (new GFavCharacterQueryData_ViewerBuilder()..update(updates))._build();

  _$GFavCharacterQueryData_Viewer._(
      {required this.G__typename, required this.id, this.favourites})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFavCharacterQueryData_Viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GFavCharacterQueryData_Viewer', 'id');
  }

  @override
  GFavCharacterQueryData_Viewer rebuild(
          void Function(GFavCharacterQueryData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryData_ViewerBuilder toBuilder() =>
      new GFavCharacterQueryData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavCharacterQueryData_Viewer &&
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
    return (newBuiltValueToStringHelper(r'GFavCharacterQueryData_Viewer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favourites', favourites))
        .toString();
  }
}

class GFavCharacterQueryData_ViewerBuilder
    implements
        Builder<GFavCharacterQueryData_Viewer,
            GFavCharacterQueryData_ViewerBuilder> {
  _$GFavCharacterQueryData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GFavCharacterQueryData_Viewer_favouritesBuilder? _favourites;
  GFavCharacterQueryData_Viewer_favouritesBuilder get favourites =>
      _$this._favourites ??=
          new GFavCharacterQueryData_Viewer_favouritesBuilder();
  set favourites(GFavCharacterQueryData_Viewer_favouritesBuilder? favourites) =>
      _$this._favourites = favourites;

  GFavCharacterQueryData_ViewerBuilder() {
    GFavCharacterQueryData_Viewer._initializeBuilder(this);
  }

  GFavCharacterQueryData_ViewerBuilder get _$this {
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
  void replace(GFavCharacterQueryData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavCharacterQueryData_Viewer;
  }

  @override
  void update(void Function(GFavCharacterQueryData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData_Viewer build() => _build();

  _$GFavCharacterQueryData_Viewer _build() {
    _$GFavCharacterQueryData_Viewer _$result;
    try {
      _$result = _$v ??
          new _$GFavCharacterQueryData_Viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFavCharacterQueryData_Viewer', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GFavCharacterQueryData_Viewer', 'id'),
              favourites: _favourites?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favourites';
        _favourites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavCharacterQueryData_Viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavCharacterQueryData_Viewer_favourites
    extends GFavCharacterQueryData_Viewer_favourites {
  @override
  final String G__typename;
  @override
  final GFavCharacterQueryData_Viewer_favourites_characters? characters;

  factory _$GFavCharacterQueryData_Viewer_favourites(
          [void Function(GFavCharacterQueryData_Viewer_favouritesBuilder)?
              updates]) =>
      (new GFavCharacterQueryData_Viewer_favouritesBuilder()..update(updates))
          ._build();

  _$GFavCharacterQueryData_Viewer_favourites._(
      {required this.G__typename, this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFavCharacterQueryData_Viewer_favourites', 'G__typename');
  }

  @override
  GFavCharacterQueryData_Viewer_favourites rebuild(
          void Function(GFavCharacterQueryData_Viewer_favouritesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryData_Viewer_favouritesBuilder toBuilder() =>
      new GFavCharacterQueryData_Viewer_favouritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavCharacterQueryData_Viewer_favourites &&
        G__typename == other.G__typename &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavCharacterQueryData_Viewer_favourites')
          ..add('G__typename', G__typename)
          ..add('characters', characters))
        .toString();
  }
}

class GFavCharacterQueryData_Viewer_favouritesBuilder
    implements
        Builder<GFavCharacterQueryData_Viewer_favourites,
            GFavCharacterQueryData_Viewer_favouritesBuilder> {
  _$GFavCharacterQueryData_Viewer_favourites? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFavCharacterQueryData_Viewer_favourites_charactersBuilder? _characters;
  GFavCharacterQueryData_Viewer_favourites_charactersBuilder get characters =>
      _$this._characters ??=
          new GFavCharacterQueryData_Viewer_favourites_charactersBuilder();
  set characters(
          GFavCharacterQueryData_Viewer_favourites_charactersBuilder?
              characters) =>
      _$this._characters = characters;

  GFavCharacterQueryData_Viewer_favouritesBuilder() {
    GFavCharacterQueryData_Viewer_favourites._initializeBuilder(this);
  }

  GFavCharacterQueryData_Viewer_favouritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavCharacterQueryData_Viewer_favourites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavCharacterQueryData_Viewer_favourites;
  }

  @override
  void update(
      void Function(GFavCharacterQueryData_Viewer_favouritesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData_Viewer_favourites build() => _build();

  _$GFavCharacterQueryData_Viewer_favourites _build() {
    _$GFavCharacterQueryData_Viewer_favourites _$result;
    try {
      _$result = _$v ??
          new _$GFavCharacterQueryData_Viewer_favourites._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GFavCharacterQueryData_Viewer_favourites', 'G__typename'),
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavCharacterQueryData_Viewer_favourites',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters
    extends GFavCharacterQueryData_Viewer_favourites_characters {
  @override
  final String G__typename;
  @override
  final GFavCharacterQueryData_Viewer_favourites_characters_pageInfo? pageInfo;
  @override
  final BuiltList<GFavCharacterQueryData_Viewer_favourites_characters_nodes?>?
      nodes;

  factory _$GFavCharacterQueryData_Viewer_favourites_characters(
          [void Function(
                  GFavCharacterQueryData_Viewer_favourites_charactersBuilder)?
              updates]) =>
      (new GFavCharacterQueryData_Viewer_favourites_charactersBuilder()
            ..update(updates))
          ._build();

  _$GFavCharacterQueryData_Viewer_favourites_characters._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GFavCharacterQueryData_Viewer_favourites_characters', 'G__typename');
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters rebuild(
          void Function(
                  GFavCharacterQueryData_Viewer_favourites_charactersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryData_Viewer_favourites_charactersBuilder toBuilder() =>
      new GFavCharacterQueryData_Viewer_favourites_charactersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavCharacterQueryData_Viewer_favourites_characters &&
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
            r'GFavCharacterQueryData_Viewer_favourites_characters')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GFavCharacterQueryData_Viewer_favourites_charactersBuilder
    implements
        Builder<GFavCharacterQueryData_Viewer_favourites_characters,
            GFavCharacterQueryData_Viewer_favourites_charactersBuilder> {
  _$GFavCharacterQueryData_Viewer_favourites_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder?
      _pageInfo;
  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder
      get pageInfo => _$this._pageInfo ??=
          new GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder();
  set pageInfo(
          GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GFavCharacterQueryData_Viewer_favourites_characters_nodes?>?
      _nodes;
  ListBuilder<GFavCharacterQueryData_Viewer_favourites_characters_nodes?>
      get nodes => _$this._nodes ??= new ListBuilder<
          GFavCharacterQueryData_Viewer_favourites_characters_nodes?>();
  set nodes(
          ListBuilder<
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes?>?
              nodes) =>
      _$this._nodes = nodes;

  GFavCharacterQueryData_Viewer_favourites_charactersBuilder() {
    GFavCharacterQueryData_Viewer_favourites_characters._initializeBuilder(
        this);
  }

  GFavCharacterQueryData_Viewer_favourites_charactersBuilder get _$this {
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
  void replace(GFavCharacterQueryData_Viewer_favourites_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavCharacterQueryData_Viewer_favourites_characters;
  }

  @override
  void update(
      void Function(GFavCharacterQueryData_Viewer_favourites_charactersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters build() => _build();

  _$GFavCharacterQueryData_Viewer_favourites_characters _build() {
    _$GFavCharacterQueryData_Viewer_favourites_characters _$result;
    try {
      _$result = _$v ??
          new _$GFavCharacterQueryData_Viewer_favourites_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GFavCharacterQueryData_Viewer_favourites_characters',
                  'G__typename'),
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
            r'GFavCharacterQueryData_Viewer_favourites_characters',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo
    extends GFavCharacterQueryData_Viewer_favourites_characters_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;
  @override
  final int? perPage;
  @override
  final int? currentPage;
  @override
  final int? lastPage;
  @override
  final bool? hasNextPage;

  factory _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo(
          [void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder)?
              updates]) =>
      (new GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFavCharacterQueryData_Viewer_favourites_characters_pageInfo',
        'G__typename');
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_pageInfo rebuild(
          void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder
      toBuilder() =>
          new GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFavCharacterQueryData_Viewer_favourites_characters_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total &&
        perPage == other.perPage &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavCharacterQueryData_Viewer_favourites_characters_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder
    implements
        Builder<GFavCharacterQueryData_Viewer_favourites_characters_pageInfo,
            GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder> {
  _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder() {
    GFavCharacterQueryData_Viewer_favourites_characters_pageInfo
        ._initializeBuilder(this);
  }

  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _perPage = $v.perPage;
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFavCharacterQueryData_Viewer_favourites_characters_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo;
  }

  @override
  void update(
      void Function(
              GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_pageInfo build() =>
      _build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo _build() {
    final _$result = _$v ??
        new _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFavCharacterQueryData_Viewer_favourites_characters_pageInfo',
                'G__typename'),
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_nodes
    extends GFavCharacterQueryData_Viewer_favourites_characters_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GFavCharacterQueryData_Viewer_favourites_characters_nodes_name? name;
  @override
  final GFavCharacterQueryData_Viewer_favourites_characters_nodes_image? image;

  factory _$GFavCharacterQueryData_Viewer_favourites_characters_nodes(
          [void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder)?
              updates]) =>
      (new GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder()
            ..update(updates))
          ._build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFavCharacterQueryData_Viewer_favourites_characters_nodes',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GFavCharacterQueryData_Viewer_favourites_characters_nodes', 'id');
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes rebuild(
          void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder
      toBuilder() =>
          new GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavCharacterQueryData_Viewer_favourites_characters_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavCharacterQueryData_Viewer_favourites_characters_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder
    implements
        Builder<GFavCharacterQueryData_Viewer_favourites_characters_nodes,
            GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder> {
  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder? _name;
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder
      get name => _$this._name ??=
          new GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder();
  set name(
          GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder?
              name) =>
      _$this._name = name;

  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder?
      _image;
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder
      get image => _$this._image ??=
          new GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder();
  set image(
          GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder?
              image) =>
      _$this._image = image;

  GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder() {
    GFavCharacterQueryData_Viewer_favourites_characters_nodes
        ._initializeBuilder(this);
  }

  GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFavCharacterQueryData_Viewer_favourites_characters_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavCharacterQueryData_Viewer_favourites_characters_nodes;
  }

  @override
  void update(
      void Function(
              GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes build() => _build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes _build() {
    _$GFavCharacterQueryData_Viewer_favourites_characters_nodes _$result;
    try {
      _$result = _$v ??
          new _$GFavCharacterQueryData_Viewer_favourites_characters_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GFavCharacterQueryData_Viewer_favourites_characters_nodes',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GFavCharacterQueryData_Viewer_favourites_characters_nodes',
                  'id'),
              name: _name?.build(),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFavCharacterQueryData_Viewer_favourites_characters_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name
    extends GFavCharacterQueryData_Viewer_favourites_characters_nodes_name {
  @override
  final String G__typename;
  @override
  final String? full;

  factory _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name(
          [void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder)?
              updates]) =>
      (new GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder()
            ..update(updates))
          ._build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name._(
      {required this.G__typename, this.full})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFavCharacterQueryData_Viewer_favourites_characters_nodes_name',
        'G__typename');
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_name rebuild(
          void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder
      toBuilder() =>
          new GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFavCharacterQueryData_Viewer_favourites_characters_nodes_name &&
        G__typename == other.G__typename &&
        full == other.full;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, full.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavCharacterQueryData_Viewer_favourites_characters_nodes_name')
          ..add('G__typename', G__typename)
          ..add('full', full))
        .toString();
  }
}

class GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder
    implements
        Builder<GFavCharacterQueryData_Viewer_favourites_characters_nodes_name,
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder> {
  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder() {
    GFavCharacterQueryData_Viewer_favourites_characters_nodes_name
        ._initializeBuilder(this);
  }

  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _full = $v.full;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFavCharacterQueryData_Viewer_favourites_characters_nodes_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name;
  }

  @override
  void update(
      void Function(
              GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_name build() =>
      _build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name _build() {
    final _$result = _$v ??
        new _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFavCharacterQueryData_Viewer_favourites_characters_nodes_name',
                'G__typename'),
            full: full);
    replace(_$result);
    return _$result;
  }
}

class _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image
    extends GFavCharacterQueryData_Viewer_favourites_characters_nodes_image {
  @override
  final String G__typename;
  @override
  final String? medium;
  @override
  final String? large;

  factory _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image(
          [void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder)?
              updates]) =>
      (new GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder()
            ..update(updates))
          ._build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image._(
      {required this.G__typename, this.medium, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GFavCharacterQueryData_Viewer_favourites_characters_nodes_image',
        'G__typename');
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_image rebuild(
          void Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder
      toBuilder() =>
          new GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GFavCharacterQueryData_Viewer_favourites_characters_nodes_image &&
        G__typename == other.G__typename &&
        medium == other.medium &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFavCharacterQueryData_Viewer_favourites_characters_nodes_image')
          ..add('G__typename', G__typename)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder
    implements
        Builder<GFavCharacterQueryData_Viewer_favourites_characters_nodes_image,
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder> {
  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder() {
    GFavCharacterQueryData_Viewer_favourites_characters_nodes_image
        ._initializeBuilder(this);
  }

  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GFavCharacterQueryData_Viewer_favourites_characters_nodes_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image;
  }

  @override
  void update(
      void Function(
              GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_image build() =>
      _build();

  _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image _build() {
    final _$result = _$v ??
        new _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GFavCharacterQueryData_Viewer_favourites_characters_nodes_image',
                'G__typename'),
            medium: medium,
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
