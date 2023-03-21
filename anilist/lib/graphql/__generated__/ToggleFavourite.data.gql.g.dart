// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ToggleFavourite.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GToggleFavouriteData> _$gToggleFavouriteDataSerializer =
    new _$GToggleFavouriteDataSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite>
    _$gToggleFavouriteDataToggleFavouriteSerializer =
    new _$GToggleFavouriteData_ToggleFavouriteSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite_anime>
    _$gToggleFavouriteDataToggleFavouriteAnimeSerializer =
    new _$GToggleFavouriteData_ToggleFavourite_animeSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite_anime_nodes>
    _$gToggleFavouriteDataToggleFavouriteAnimeNodesSerializer =
    new _$GToggleFavouriteData_ToggleFavourite_anime_nodesSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite_manga>
    _$gToggleFavouriteDataToggleFavouriteMangaSerializer =
    new _$GToggleFavouriteData_ToggleFavourite_mangaSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite_manga_nodes>
    _$gToggleFavouriteDataToggleFavouriteMangaNodesSerializer =
    new _$GToggleFavouriteData_ToggleFavourite_manga_nodesSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite_characters>
    _$gToggleFavouriteDataToggleFavouriteCharactersSerializer =
    new _$GToggleFavouriteData_ToggleFavourite_charactersSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite_characters_pageInfo>
    _$gToggleFavouriteDataToggleFavouriteCharactersPageInfoSerializer =
    new _$GToggleFavouriteData_ToggleFavourite_characters_pageInfoSerializer();
Serializer<GToggleFavouriteData_ToggleFavourite_characters_edges>
    _$gToggleFavouriteDataToggleFavouriteCharactersEdgesSerializer =
    new _$GToggleFavouriteData_ToggleFavourite_characters_edgesSerializer();

class _$GToggleFavouriteDataSerializer
    implements StructuredSerializer<GToggleFavouriteData> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData,
    _$GToggleFavouriteData
  ];
  @override
  final String wireName = 'GToggleFavouriteData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavouriteData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ToggleFavourite;
    if (value != null) {
      result
        ..add('ToggleFavourite')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavouriteData_ToggleFavourite)));
    }
    return result;
  }

  @override
  GToggleFavouriteData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavouriteDataBuilder();

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
        case 'ToggleFavourite':
          result.ToggleFavourite.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GToggleFavouriteData_ToggleFavourite))!
              as GToggleFavouriteData_ToggleFavourite);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData_ToggleFavouriteSerializer
    implements StructuredSerializer<GToggleFavouriteData_ToggleFavourite> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite,
    _$GToggleFavouriteData_ToggleFavourite
  ];
  @override
  final String wireName = 'GToggleFavouriteData_ToggleFavourite';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavouriteData_ToggleFavourite object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.anime;
    if (value != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavouriteData_ToggleFavourite_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GToggleFavouriteData_ToggleFavourite_manga)));
    }
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GToggleFavouriteData_ToggleFavourite_characters)));
    }
    return result;
  }

  @override
  GToggleFavouriteData_ToggleFavourite deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavouriteData_ToggleFavouriteBuilder();

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
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavouriteData_ToggleFavourite_anime))!
              as GToggleFavouriteData_ToggleFavourite_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavouriteData_ToggleFavourite_manga))!
              as GToggleFavouriteData_ToggleFavourite_manga);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleFavouriteData_ToggleFavourite_characters))!
              as GToggleFavouriteData_ToggleFavourite_characters);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData_ToggleFavourite_animeSerializer
    implements
        StructuredSerializer<GToggleFavouriteData_ToggleFavourite_anime> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite_anime,
    _$GToggleFavouriteData_ToggleFavourite_anime
  ];
  @override
  final String wireName = 'GToggleFavouriteData_ToggleFavourite_anime';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavouriteData_ToggleFavourite_anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GToggleFavouriteData_ToggleFavourite_anime_nodes)
            ])));
    }
    return result;
  }

  @override
  GToggleFavouriteData_ToggleFavourite_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavouriteData_ToggleFavourite_animeBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GToggleFavouriteData_ToggleFavourite_anime_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData_ToggleFavourite_anime_nodesSerializer
    implements
        StructuredSerializer<GToggleFavouriteData_ToggleFavourite_anime_nodes> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite_anime_nodes,
    _$GToggleFavouriteData_ToggleFavourite_anime_nodes
  ];
  @override
  final String wireName = 'GToggleFavouriteData_ToggleFavourite_anime_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavouriteData_ToggleFavourite_anime_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'isFavourite',
      serializers.serialize(object.isFavourite,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GToggleFavouriteData_ToggleFavourite_anime_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder();

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
        case 'isFavourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData_ToggleFavourite_mangaSerializer
    implements
        StructuredSerializer<GToggleFavouriteData_ToggleFavourite_manga> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite_manga,
    _$GToggleFavouriteData_ToggleFavourite_manga
  ];
  @override
  final String wireName = 'GToggleFavouriteData_ToggleFavourite_manga';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavouriteData_ToggleFavourite_manga object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GToggleFavouriteData_ToggleFavourite_manga_nodes)
            ])));
    }
    return result;
  }

  @override
  GToggleFavouriteData_ToggleFavourite_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavouriteData_ToggleFavourite_mangaBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GToggleFavouriteData_ToggleFavourite_manga_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData_ToggleFavourite_manga_nodesSerializer
    implements
        StructuredSerializer<GToggleFavouriteData_ToggleFavourite_manga_nodes> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite_manga_nodes,
    _$GToggleFavouriteData_ToggleFavourite_manga_nodes
  ];
  @override
  final String wireName = 'GToggleFavouriteData_ToggleFavourite_manga_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavouriteData_ToggleFavourite_manga_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'isFavourite',
      serializers.serialize(object.isFavourite,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GToggleFavouriteData_ToggleFavourite_manga_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder();

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
        case 'isFavourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData_ToggleFavourite_charactersSerializer
    implements
        StructuredSerializer<GToggleFavouriteData_ToggleFavourite_characters> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite_characters,
    _$GToggleFavouriteData_ToggleFavourite_characters
  ];
  @override
  final String wireName = 'GToggleFavouriteData_ToggleFavourite_characters';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavouriteData_ToggleFavourite_characters object,
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
                GToggleFavouriteData_ToggleFavourite_characters_pageInfo)));
    }
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GToggleFavouriteData_ToggleFavourite_characters_edges)
            ])));
    }
    return result;
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavouriteData_ToggleFavourite_charactersBuilder();

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
                      GToggleFavouriteData_ToggleFavourite_characters_pageInfo))!
              as GToggleFavouriteData_ToggleFavourite_characters_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GToggleFavouriteData_ToggleFavourite_characters_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData_ToggleFavourite_characters_pageInfoSerializer
    implements
        StructuredSerializer<
            GToggleFavouriteData_ToggleFavourite_characters_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite_characters_pageInfo,
    _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo
  ];
  @override
  final String wireName =
      'GToggleFavouriteData_ToggleFavourite_characters_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavouriteData_ToggleFavourite_characters_pageInfo object,
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
  GToggleFavouriteData_ToggleFavourite_characters_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder();

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

class _$GToggleFavouriteData_ToggleFavourite_characters_edgesSerializer
    implements
        StructuredSerializer<
            GToggleFavouriteData_ToggleFavourite_characters_edges> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteData_ToggleFavourite_characters_edges,
    _$GToggleFavouriteData_ToggleFavourite_characters_edges
  ];
  @override
  final String wireName =
      'GToggleFavouriteData_ToggleFavourite_characters_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleFavouriteData_ToggleFavourite_characters_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder();

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
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteData extends GToggleFavouriteData {
  @override
  final String G__typename;
  @override
  final GToggleFavouriteData_ToggleFavourite? ToggleFavourite;

  factory _$GToggleFavouriteData(
          [void Function(GToggleFavouriteDataBuilder)? updates]) =>
      (new GToggleFavouriteDataBuilder()..update(updates))._build();

  _$GToggleFavouriteData._({required this.G__typename, this.ToggleFavourite})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleFavouriteData', 'G__typename');
  }

  @override
  GToggleFavouriteData rebuild(
          void Function(GToggleFavouriteDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteDataBuilder toBuilder() =>
      new GToggleFavouriteDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData &&
        G__typename == other.G__typename &&
        ToggleFavourite == other.ToggleFavourite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ToggleFavourite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleFavouriteData')
          ..add('G__typename', G__typename)
          ..add('ToggleFavourite', ToggleFavourite))
        .toString();
  }
}

class GToggleFavouriteDataBuilder
    implements Builder<GToggleFavouriteData, GToggleFavouriteDataBuilder> {
  _$GToggleFavouriteData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavouriteData_ToggleFavouriteBuilder? _ToggleFavourite;
  GToggleFavouriteData_ToggleFavouriteBuilder get ToggleFavourite =>
      _$this._ToggleFavourite ??=
          new GToggleFavouriteData_ToggleFavouriteBuilder();
  set ToggleFavourite(
          GToggleFavouriteData_ToggleFavouriteBuilder? ToggleFavourite) =>
      _$this._ToggleFavourite = ToggleFavourite;

  GToggleFavouriteDataBuilder() {
    GToggleFavouriteData._initializeBuilder(this);
  }

  GToggleFavouriteDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ToggleFavourite = $v.ToggleFavourite?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData;
  }

  @override
  void update(void Function(GToggleFavouriteDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData build() => _build();

  _$GToggleFavouriteData _build() {
    _$GToggleFavouriteData _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavouriteData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GToggleFavouriteData', 'G__typename'),
              ToggleFavourite: _ToggleFavourite?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ToggleFavourite';
        _ToggleFavourite?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavouriteData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavouriteData_ToggleFavourite
    extends GToggleFavouriteData_ToggleFavourite {
  @override
  final String G__typename;
  @override
  final GToggleFavouriteData_ToggleFavourite_anime? anime;
  @override
  final GToggleFavouriteData_ToggleFavourite_manga? manga;
  @override
  final GToggleFavouriteData_ToggleFavourite_characters? characters;

  factory _$GToggleFavouriteData_ToggleFavourite(
          [void Function(GToggleFavouriteData_ToggleFavouriteBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavouriteBuilder()..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite._(
      {required this.G__typename, this.anime, this.manga, this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleFavouriteData_ToggleFavourite', 'G__typename');
  }

  @override
  GToggleFavouriteData_ToggleFavourite rebuild(
          void Function(GToggleFavouriteData_ToggleFavouriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavouriteBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavouriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite &&
        G__typename == other.G__typename &&
        anime == other.anime &&
        manga == other.manga &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleFavouriteData_ToggleFavourite')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga)
          ..add('characters', characters))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavouriteBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite,
            GToggleFavouriteData_ToggleFavouriteBuilder> {
  _$GToggleFavouriteData_ToggleFavourite? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavouriteData_ToggleFavourite_animeBuilder? _anime;
  GToggleFavouriteData_ToggleFavourite_animeBuilder get anime =>
      _$this._anime ??= new GToggleFavouriteData_ToggleFavourite_animeBuilder();
  set anime(GToggleFavouriteData_ToggleFavourite_animeBuilder? anime) =>
      _$this._anime = anime;

  GToggleFavouriteData_ToggleFavourite_mangaBuilder? _manga;
  GToggleFavouriteData_ToggleFavourite_mangaBuilder get manga =>
      _$this._manga ??= new GToggleFavouriteData_ToggleFavourite_mangaBuilder();
  set manga(GToggleFavouriteData_ToggleFavourite_mangaBuilder? manga) =>
      _$this._manga = manga;

  GToggleFavouriteData_ToggleFavourite_charactersBuilder? _characters;
  GToggleFavouriteData_ToggleFavourite_charactersBuilder get characters =>
      _$this._characters ??=
          new GToggleFavouriteData_ToggleFavourite_charactersBuilder();
  set characters(
          GToggleFavouriteData_ToggleFavourite_charactersBuilder? characters) =>
      _$this._characters = characters;

  GToggleFavouriteData_ToggleFavouriteBuilder() {
    GToggleFavouriteData_ToggleFavourite._initializeBuilder(this);
  }

  GToggleFavouriteData_ToggleFavouriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData_ToggleFavourite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite;
  }

  @override
  void update(
      void Function(GToggleFavouriteData_ToggleFavouriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite build() => _build();

  _$GToggleFavouriteData_ToggleFavourite _build() {
    _$GToggleFavouriteData_ToggleFavourite _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavouriteData_ToggleFavourite._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToggleFavouriteData_ToggleFavourite', 'G__typename'),
              anime: _anime?.build(),
              manga: _manga?.build(),
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavouriteData_ToggleFavourite',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavouriteData_ToggleFavourite_anime
    extends GToggleFavouriteData_ToggleFavourite_anime {
  @override
  final String G__typename;
  @override
  final BuiltList<GToggleFavouriteData_ToggleFavourite_anime_nodes?>? nodes;

  factory _$GToggleFavouriteData_ToggleFavourite_anime(
          [void Function(GToggleFavouriteData_ToggleFavourite_animeBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavourite_animeBuilder()..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite_anime._(
      {required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavouriteData_ToggleFavourite_anime', 'G__typename');
  }

  @override
  GToggleFavouriteData_ToggleFavourite_anime rebuild(
          void Function(GToggleFavouriteData_ToggleFavourite_animeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavourite_animeBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavourite_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite_anime &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavouriteData_ToggleFavourite_anime')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavourite_animeBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite_anime,
            GToggleFavouriteData_ToggleFavourite_animeBuilder> {
  _$GToggleFavouriteData_ToggleFavourite_anime? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GToggleFavouriteData_ToggleFavourite_anime_nodes?>? _nodes;
  ListBuilder<GToggleFavouriteData_ToggleFavourite_anime_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GToggleFavouriteData_ToggleFavourite_anime_nodes?>();
  set nodes(
          ListBuilder<GToggleFavouriteData_ToggleFavourite_anime_nodes?>?
              nodes) =>
      _$this._nodes = nodes;

  GToggleFavouriteData_ToggleFavourite_animeBuilder() {
    GToggleFavouriteData_ToggleFavourite_anime._initializeBuilder(this);
  }

  GToggleFavouriteData_ToggleFavourite_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData_ToggleFavourite_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite_anime;
  }

  @override
  void update(
      void Function(GToggleFavouriteData_ToggleFavourite_animeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite_anime build() => _build();

  _$GToggleFavouriteData_ToggleFavourite_anime _build() {
    _$GToggleFavouriteData_ToggleFavourite_anime _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavouriteData_ToggleFavourite_anime._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToggleFavouriteData_ToggleFavourite_anime', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavouriteData_ToggleFavourite_anime',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavouriteData_ToggleFavourite_anime_nodes
    extends GToggleFavouriteData_ToggleFavourite_anime_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final bool isFavourite;

  factory _$GToggleFavouriteData_ToggleFavourite_anime_nodes(
          [void Function(
                  GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite_anime_nodes._(
      {required this.G__typename, required this.id, required this.isFavourite})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavouriteData_ToggleFavourite_anime_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleFavouriteData_ToggleFavourite_anime_nodes', 'id');
    BuiltValueNullFieldError.checkNotNull(isFavourite,
        r'GToggleFavouriteData_ToggleFavourite_anime_nodes', 'isFavourite');
  }

  @override
  GToggleFavouriteData_ToggleFavourite_anime_nodes rebuild(
          void Function(GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite_anime_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        isFavourite == other.isFavourite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isFavourite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavouriteData_ToggleFavourite_anime_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isFavourite', isFavourite))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite_anime_nodes,
            GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder> {
  _$GToggleFavouriteData_ToggleFavourite_anime_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder() {
    GToggleFavouriteData_ToggleFavourite_anime_nodes._initializeBuilder(this);
  }

  GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isFavourite = $v.isFavourite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData_ToggleFavourite_anime_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite_anime_nodes;
  }

  @override
  void update(
      void Function(GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite_anime_nodes build() => _build();

  _$GToggleFavouriteData_ToggleFavourite_anime_nodes _build() {
    final _$result = _$v ??
        new _$GToggleFavouriteData_ToggleFavourite_anime_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavouriteData_ToggleFavourite_anime_nodes',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleFavouriteData_ToggleFavourite_anime_nodes', 'id'),
            isFavourite: BuiltValueNullFieldError.checkNotNull(
                isFavourite,
                r'GToggleFavouriteData_ToggleFavourite_anime_nodes',
                'isFavourite'));
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavouriteData_ToggleFavourite_manga
    extends GToggleFavouriteData_ToggleFavourite_manga {
  @override
  final String G__typename;
  @override
  final BuiltList<GToggleFavouriteData_ToggleFavourite_manga_nodes?>? nodes;

  factory _$GToggleFavouriteData_ToggleFavourite_manga(
          [void Function(GToggleFavouriteData_ToggleFavourite_mangaBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavourite_mangaBuilder()..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite_manga._(
      {required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavouriteData_ToggleFavourite_manga', 'G__typename');
  }

  @override
  GToggleFavouriteData_ToggleFavourite_manga rebuild(
          void Function(GToggleFavouriteData_ToggleFavourite_mangaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavourite_mangaBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavourite_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite_manga &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavouriteData_ToggleFavourite_manga')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavourite_mangaBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite_manga,
            GToggleFavouriteData_ToggleFavourite_mangaBuilder> {
  _$GToggleFavouriteData_ToggleFavourite_manga? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GToggleFavouriteData_ToggleFavourite_manga_nodes?>? _nodes;
  ListBuilder<GToggleFavouriteData_ToggleFavourite_manga_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GToggleFavouriteData_ToggleFavourite_manga_nodes?>();
  set nodes(
          ListBuilder<GToggleFavouriteData_ToggleFavourite_manga_nodes?>?
              nodes) =>
      _$this._nodes = nodes;

  GToggleFavouriteData_ToggleFavourite_mangaBuilder() {
    GToggleFavouriteData_ToggleFavourite_manga._initializeBuilder(this);
  }

  GToggleFavouriteData_ToggleFavourite_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData_ToggleFavourite_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite_manga;
  }

  @override
  void update(
      void Function(GToggleFavouriteData_ToggleFavourite_mangaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite_manga build() => _build();

  _$GToggleFavouriteData_ToggleFavourite_manga _build() {
    _$GToggleFavouriteData_ToggleFavourite_manga _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavouriteData_ToggleFavourite_manga._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToggleFavouriteData_ToggleFavourite_manga', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavouriteData_ToggleFavourite_manga',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavouriteData_ToggleFavourite_manga_nodes
    extends GToggleFavouriteData_ToggleFavourite_manga_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final bool isFavourite;

  factory _$GToggleFavouriteData_ToggleFavourite_manga_nodes(
          [void Function(
                  GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite_manga_nodes._(
      {required this.G__typename, required this.id, required this.isFavourite})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavouriteData_ToggleFavourite_manga_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleFavouriteData_ToggleFavourite_manga_nodes', 'id');
    BuiltValueNullFieldError.checkNotNull(isFavourite,
        r'GToggleFavouriteData_ToggleFavourite_manga_nodes', 'isFavourite');
  }

  @override
  GToggleFavouriteData_ToggleFavourite_manga_nodes rebuild(
          void Function(GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite_manga_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        isFavourite == other.isFavourite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isFavourite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavouriteData_ToggleFavourite_manga_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isFavourite', isFavourite))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite_manga_nodes,
            GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder> {
  _$GToggleFavouriteData_ToggleFavourite_manga_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder() {
    GToggleFavouriteData_ToggleFavourite_manga_nodes._initializeBuilder(this);
  }

  GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isFavourite = $v.isFavourite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData_ToggleFavourite_manga_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite_manga_nodes;
  }

  @override
  void update(
      void Function(GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite_manga_nodes build() => _build();

  _$GToggleFavouriteData_ToggleFavourite_manga_nodes _build() {
    final _$result = _$v ??
        new _$GToggleFavouriteData_ToggleFavourite_manga_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavouriteData_ToggleFavourite_manga_nodes',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleFavouriteData_ToggleFavourite_manga_nodes', 'id'),
            isFavourite: BuiltValueNullFieldError.checkNotNull(
                isFavourite,
                r'GToggleFavouriteData_ToggleFavourite_manga_nodes',
                'isFavourite'));
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavouriteData_ToggleFavourite_characters
    extends GToggleFavouriteData_ToggleFavourite_characters {
  @override
  final String G__typename;
  @override
  final GToggleFavouriteData_ToggleFavourite_characters_pageInfo? pageInfo;
  @override
  final BuiltList<GToggleFavouriteData_ToggleFavourite_characters_edges?>?
      edges;

  factory _$GToggleFavouriteData_ToggleFavourite_characters(
          [void Function(
                  GToggleFavouriteData_ToggleFavourite_charactersBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavourite_charactersBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite_characters._(
      {required this.G__typename, this.pageInfo, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleFavouriteData_ToggleFavourite_characters', 'G__typename');
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters rebuild(
          void Function(GToggleFavouriteData_ToggleFavourite_charactersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavourite_charactersBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavourite_charactersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite_characters &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavouriteData_ToggleFavourite_characters')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavourite_charactersBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite_characters,
            GToggleFavouriteData_ToggleFavourite_charactersBuilder> {
  _$GToggleFavouriteData_ToggleFavourite_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder? _pageInfo;
  GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder
      get pageInfo => _$this._pageInfo ??=
          new GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder();
  set pageInfo(
          GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GToggleFavouriteData_ToggleFavourite_characters_edges?>? _edges;
  ListBuilder<GToggleFavouriteData_ToggleFavourite_characters_edges?>
      get edges => _$this._edges ??= new ListBuilder<
          GToggleFavouriteData_ToggleFavourite_characters_edges?>();
  set edges(
          ListBuilder<GToggleFavouriteData_ToggleFavourite_characters_edges?>?
              edges) =>
      _$this._edges = edges;

  GToggleFavouriteData_ToggleFavourite_charactersBuilder() {
    GToggleFavouriteData_ToggleFavourite_characters._initializeBuilder(this);
  }

  GToggleFavouriteData_ToggleFavourite_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData_ToggleFavourite_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite_characters;
  }

  @override
  void update(
      void Function(GToggleFavouriteData_ToggleFavourite_charactersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters build() => _build();

  _$GToggleFavouriteData_ToggleFavourite_characters _build() {
    _$GToggleFavouriteData_ToggleFavourite_characters _$result;
    try {
      _$result = _$v ??
          new _$GToggleFavouriteData_ToggleFavourite_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GToggleFavouriteData_ToggleFavourite_characters',
                  'G__typename'),
              pageInfo: _pageInfo?.build(),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleFavouriteData_ToggleFavourite_characters',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo
    extends GToggleFavouriteData_ToggleFavourite_characters_pageInfo {
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

  factory _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo(
          [void Function(
                  GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleFavouriteData_ToggleFavourite_characters_pageInfo',
        'G__typename');
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters_pageInfo rebuild(
          void Function(
                  GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite_characters_pageInfo &&
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
            r'GToggleFavouriteData_ToggleFavourite_characters_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite_characters_pageInfo,
            GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder> {
  _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo? _$v;

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

  GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder() {
    GToggleFavouriteData_ToggleFavourite_characters_pageInfo._initializeBuilder(
        this);
  }

  GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder get _$this {
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
  void replace(GToggleFavouriteData_ToggleFavourite_characters_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo;
  }

  @override
  void update(
      void Function(
              GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters_pageInfo build() => _build();

  _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo _build() {
    final _$result = _$v ??
        new _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavouriteData_ToggleFavourite_characters_pageInfo',
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

class _$GToggleFavouriteData_ToggleFavourite_characters_edges
    extends GToggleFavouriteData_ToggleFavourite_characters_edges {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;

  factory _$GToggleFavouriteData_ToggleFavourite_characters_edges(
          [void Function(
                  GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder)?
              updates]) =>
      (new GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder()
            ..update(updates))
          ._build();

  _$GToggleFavouriteData_ToggleFavourite_characters_edges._(
      {required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleFavouriteData_ToggleFavourite_characters_edges',
        'G__typename');
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters_edges rebuild(
          void Function(
                  GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder toBuilder() =>
      new GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteData_ToggleFavourite_characters_edges &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleFavouriteData_ToggleFavourite_characters_edges')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder
    implements
        Builder<GToggleFavouriteData_ToggleFavourite_characters_edges,
            GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder> {
  _$GToggleFavouriteData_ToggleFavourite_characters_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder() {
    GToggleFavouriteData_ToggleFavourite_characters_edges._initializeBuilder(
        this);
  }

  GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteData_ToggleFavourite_characters_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteData_ToggleFavourite_characters_edges;
  }

  @override
  void update(
      void Function(
              GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteData_ToggleFavourite_characters_edges build() => _build();

  _$GToggleFavouriteData_ToggleFavourite_characters_edges _build() {
    final _$result = _$v ??
        new _$GToggleFavouriteData_ToggleFavourite_characters_edges._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleFavouriteData_ToggleFavourite_characters_edges',
                'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
