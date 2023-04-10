// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProfileData> _$gProfileDataSerializer =
    new _$GProfileDataSerializer();
Serializer<GProfileData_Viewer> _$gProfileDataViewerSerializer =
    new _$GProfileData_ViewerSerializer();
Serializer<GProfileData_Viewer_avatar> _$gProfileDataViewerAvatarSerializer =
    new _$GProfileData_Viewer_avatarSerializer();
Serializer<GProfileData_Viewer_statistics>
    _$gProfileDataViewerStatisticsSerializer =
    new _$GProfileData_Viewer_statisticsSerializer();
Serializer<GProfileData_Viewer_statistics_anime>
    _$gProfileDataViewerStatisticsAnimeSerializer =
    new _$GProfileData_Viewer_statistics_animeSerializer();
Serializer<GProfileData_Viewer_statistics_manga>
    _$gProfileDataViewerStatisticsMangaSerializer =
    new _$GProfileData_Viewer_statistics_mangaSerializer();
Serializer<GProfileData_Viewer_favourites>
    _$gProfileDataViewerFavouritesSerializer =
    new _$GProfileData_Viewer_favouritesSerializer();
Serializer<GProfileData_Viewer_favourites_characters>
    _$gProfileDataViewerFavouritesCharactersSerializer =
    new _$GProfileData_Viewer_favourites_charactersSerializer();
Serializer<GProfileData_Viewer_favourites_characters_pageInfo>
    _$gProfileDataViewerFavouritesCharactersPageInfoSerializer =
    new _$GProfileData_Viewer_favourites_characters_pageInfoSerializer();
Serializer<GProfileData_Viewer_favourites_characters_nodes>
    _$gProfileDataViewerFavouritesCharactersNodesSerializer =
    new _$GProfileData_Viewer_favourites_characters_nodesSerializer();
Serializer<GProfileData_Viewer_favourites_characters_nodes_name>
    _$gProfileDataViewerFavouritesCharactersNodesNameSerializer =
    new _$GProfileData_Viewer_favourites_characters_nodes_nameSerializer();
Serializer<GProfileData_Viewer_favourites_characters_nodes_image>
    _$gProfileDataViewerFavouritesCharactersNodesImageSerializer =
    new _$GProfileData_Viewer_favourites_characters_nodes_imageSerializer();
Serializer<GProfileData_Viewer_favourites_anime>
    _$gProfileDataViewerFavouritesAnimeSerializer =
    new _$GProfileData_Viewer_favourites_animeSerializer();
Serializer<GProfileData_Viewer_favourites_anime_pageInfo>
    _$gProfileDataViewerFavouritesAnimePageInfoSerializer =
    new _$GProfileData_Viewer_favourites_anime_pageInfoSerializer();
Serializer<GProfileData_Viewer_favourites_anime_nodes>
    _$gProfileDataViewerFavouritesAnimeNodesSerializer =
    new _$GProfileData_Viewer_favourites_anime_nodesSerializer();
Serializer<GProfileData_Viewer_favourites_anime_nodes_title>
    _$gProfileDataViewerFavouritesAnimeNodesTitleSerializer =
    new _$GProfileData_Viewer_favourites_anime_nodes_titleSerializer();
Serializer<GProfileData_Viewer_favourites_anime_nodes_coverImage>
    _$gProfileDataViewerFavouritesAnimeNodesCoverImageSerializer =
    new _$GProfileData_Viewer_favourites_anime_nodes_coverImageSerializer();
Serializer<GProfileData_Viewer_favourites_manga>
    _$gProfileDataViewerFavouritesMangaSerializer =
    new _$GProfileData_Viewer_favourites_mangaSerializer();
Serializer<GProfileData_Viewer_favourites_manga_pageInfo>
    _$gProfileDataViewerFavouritesMangaPageInfoSerializer =
    new _$GProfileData_Viewer_favourites_manga_pageInfoSerializer();
Serializer<GProfileData_Viewer_favourites_manga_nodes>
    _$gProfileDataViewerFavouritesMangaNodesSerializer =
    new _$GProfileData_Viewer_favourites_manga_nodesSerializer();
Serializer<GProfileData_Viewer_favourites_manga_nodes_title>
    _$gProfileDataViewerFavouritesMangaNodesTitleSerializer =
    new _$GProfileData_Viewer_favourites_manga_nodes_titleSerializer();
Serializer<GProfileData_Viewer_favourites_manga_nodes_coverImage>
    _$gProfileDataViewerFavouritesMangaNodesCoverImageSerializer =
    new _$GProfileData_Viewer_favourites_manga_nodes_coverImageSerializer();

class _$GProfileDataSerializer implements StructuredSerializer<GProfileData> {
  @override
  final Iterable<Type> types = const [GProfileData, _$GProfileData];
  @override
  final String wireName = 'GProfileData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProfileData object,
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
            specifiedType: const FullType(GProfileData_Viewer)));
    }
    return result;
  }

  @override
  GProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileDataBuilder();

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
                  specifiedType: const FullType(GProfileData_Viewer))!
              as GProfileData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_ViewerSerializer
    implements StructuredSerializer<GProfileData_Viewer> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer,
    _$GProfileData_Viewer
  ];
  @override
  final String wireName = 'GProfileData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GProfileData_Viewer_avatar)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statistics;
    if (value != null) {
      result
        ..add('statistics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GProfileData_Viewer_statistics)));
    }
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GProfileData_Viewer_favourites)));
    }
    value = object.unreadNotificationCount;
    if (value != null) {
      result
        ..add('unreadNotificationCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GProfileData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_ViewerBuilder();

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
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GProfileData_Viewer_avatar))!
              as GProfileData_Viewer_avatar);
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statistics':
          result.statistics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GProfileData_Viewer_statistics))!
              as GProfileData_Viewer_statistics);
          break;
        case 'favourites':
          result.favourites.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GProfileData_Viewer_favourites))!
              as GProfileData_Viewer_favourites);
          break;
        case 'unreadNotificationCount':
          result.unreadNotificationCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_avatarSerializer
    implements StructuredSerializer<GProfileData_Viewer_avatar> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_avatar,
    _$GProfileData_Viewer_avatar
  ];
  @override
  final String wireName = 'GProfileData_Viewer_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  GProfileData_Viewer_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_avatarBuilder();

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

class _$GProfileData_Viewer_statisticsSerializer
    implements StructuredSerializer<GProfileData_Viewer_statistics> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_statistics,
    _$GProfileData_Viewer_statistics
  ];
  @override
  final String wireName = 'GProfileData_Viewer_statistics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_statistics object,
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
                const FullType(GProfileData_Viewer_statistics_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GProfileData_Viewer_statistics_manga)));
    }
    return result;
  }

  @override
  GProfileData_Viewer_statistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_statisticsBuilder();

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
                  specifiedType:
                      const FullType(GProfileData_Viewer_statistics_anime))!
              as GProfileData_Viewer_statistics_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GProfileData_Viewer_statistics_manga))!
              as GProfileData_Viewer_statistics_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_statistics_animeSerializer
    implements StructuredSerializer<GProfileData_Viewer_statistics_anime> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_statistics_anime,
    _$GProfileData_Viewer_statistics_anime
  ];
  @override
  final String wireName = 'GProfileData_Viewer_statistics_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_statistics_anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'episodesWatched',
      serializers.serialize(object.episodesWatched,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GProfileData_Viewer_statistics_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_statistics_animeBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episodesWatched':
          result.episodesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_statistics_mangaSerializer
    implements StructuredSerializer<GProfileData_Viewer_statistics_manga> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_statistics_manga,
    _$GProfileData_Viewer_statistics_manga
  ];
  @override
  final String wireName = 'GProfileData_Viewer_statistics_manga';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_statistics_manga object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'episodesWatched',
      serializers.serialize(object.episodesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'volumesRead',
      serializers.serialize(object.volumesRead,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GProfileData_Viewer_statistics_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_statistics_mangaBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episodesWatched':
          result.episodesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'volumesRead':
          result.volumesRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favouritesSerializer
    implements StructuredSerializer<GProfileData_Viewer_favourites> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites,
    _$GProfileData_Viewer_favourites
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_favourites object,
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
            specifiedType:
                const FullType(GProfileData_Viewer_favourites_characters)));
    }
    value = object.anime;
    if (value != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GProfileData_Viewer_favourites_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GProfileData_Viewer_favourites_manga)));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favouritesBuilder();

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
                      GProfileData_Viewer_favourites_characters))!
              as GProfileData_Viewer_favourites_characters);
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GProfileData_Viewer_favourites_anime))!
              as GProfileData_Viewer_favourites_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GProfileData_Viewer_favourites_manga))!
              as GProfileData_Viewer_favourites_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_charactersSerializer
    implements StructuredSerializer<GProfileData_Viewer_favourites_characters> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_characters,
    _$GProfileData_Viewer_favourites_characters
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_favourites_characters object,
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
                GProfileData_Viewer_favourites_characters_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GProfileData_Viewer_favourites_characters_nodes)
            ])));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_charactersBuilder();

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
                      GProfileData_Viewer_favourites_characters_pageInfo))!
              as GProfileData_Viewer_favourites_characters_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GProfileData_Viewer_favourites_characters_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_characters_pageInfoSerializer
    implements
        StructuredSerializer<
            GProfileData_Viewer_favourites_characters_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_characters_pageInfo,
    _$GProfileData_Viewer_favourites_characters_pageInfo
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_characters_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_characters_pageInfo object,
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
  GProfileData_Viewer_favourites_characters_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfileData_Viewer_favourites_characters_pageInfoBuilder();

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

class _$GProfileData_Viewer_favourites_characters_nodesSerializer
    implements
        StructuredSerializer<GProfileData_Viewer_favourites_characters_nodes> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_characters_nodes,
    _$GProfileData_Viewer_favourites_characters_nodes
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_characters_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_characters_nodes object,
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
                GProfileData_Viewer_favourites_characters_nodes_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GProfileData_Viewer_favourites_characters_nodes_image)));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites_characters_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_characters_nodesBuilder();

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
                      GProfileData_Viewer_favourites_characters_nodes_name))!
              as GProfileData_Viewer_favourites_characters_nodes_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProfileData_Viewer_favourites_characters_nodes_image))!
              as GProfileData_Viewer_favourites_characters_nodes_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_characters_nodes_nameSerializer
    implements
        StructuredSerializer<
            GProfileData_Viewer_favourites_characters_nodes_name> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_characters_nodes_name,
    _$GProfileData_Viewer_favourites_characters_nodes_name
  ];
  @override
  final String wireName =
      'GProfileData_Viewer_favourites_characters_nodes_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_characters_nodes_name object,
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
  GProfileData_Viewer_favourites_characters_nodes_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfileData_Viewer_favourites_characters_nodes_nameBuilder();

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

class _$GProfileData_Viewer_favourites_characters_nodes_imageSerializer
    implements
        StructuredSerializer<
            GProfileData_Viewer_favourites_characters_nodes_image> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_characters_nodes_image,
    _$GProfileData_Viewer_favourites_characters_nodes_image
  ];
  @override
  final String wireName =
      'GProfileData_Viewer_favourites_characters_nodes_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_characters_nodes_image object,
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
  GProfileData_Viewer_favourites_characters_nodes_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfileData_Viewer_favourites_characters_nodes_imageBuilder();

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

class _$GProfileData_Viewer_favourites_animeSerializer
    implements StructuredSerializer<GProfileData_Viewer_favourites_anime> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_anime,
    _$GProfileData_Viewer_favourites_anime
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_favourites_anime object,
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
            specifiedType:
                const FullType(GProfileData_Viewer_favourites_anime_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GProfileData_Viewer_favourites_anime_nodes)
            ])));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_animeBuilder();

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
                      GProfileData_Viewer_favourites_anime_pageInfo))!
              as GProfileData_Viewer_favourites_anime_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GProfileData_Viewer_favourites_anime_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_anime_pageInfoSerializer
    implements
        StructuredSerializer<GProfileData_Viewer_favourites_anime_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_anime_pageInfo,
    _$GProfileData_Viewer_favourites_anime_pageInfo
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_anime_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_anime_pageInfo object,
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
  GProfileData_Viewer_favourites_anime_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_anime_pageInfoBuilder();

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

class _$GProfileData_Viewer_favourites_anime_nodesSerializer
    implements
        StructuredSerializer<GProfileData_Viewer_favourites_anime_nodes> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_anime_nodes,
    _$GProfileData_Viewer_favourites_anime_nodes
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_anime_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_anime_nodes object,
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
                GProfileData_Viewer_favourites_anime_nodes_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GProfileData_Viewer_favourites_anime_nodes_coverImage)));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_anime_nodesBuilder();

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
                      GProfileData_Viewer_favourites_anime_nodes_title))!
              as GProfileData_Viewer_favourites_anime_nodes_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProfileData_Viewer_favourites_anime_nodes_coverImage))!
              as GProfileData_Viewer_favourites_anime_nodes_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_anime_nodes_titleSerializer
    implements
        StructuredSerializer<GProfileData_Viewer_favourites_anime_nodes_title> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_anime_nodes_title,
    _$GProfileData_Viewer_favourites_anime_nodes_title
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_anime_nodes_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_anime_nodes_title object,
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
  GProfileData_Viewer_favourites_anime_nodes_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfileData_Viewer_favourites_anime_nodes_titleBuilder();

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

class _$GProfileData_Viewer_favourites_anime_nodes_coverImageSerializer
    implements
        StructuredSerializer<
            GProfileData_Viewer_favourites_anime_nodes_coverImage> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_anime_nodes_coverImage,
    _$GProfileData_Viewer_favourites_anime_nodes_coverImage
  ];
  @override
  final String wireName =
      'GProfileData_Viewer_favourites_anime_nodes_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_anime_nodes_coverImage object,
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
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder();

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
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_mangaSerializer
    implements StructuredSerializer<GProfileData_Viewer_favourites_manga> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_manga,
    _$GProfileData_Viewer_favourites_manga
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_manga';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_Viewer_favourites_manga object,
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
            specifiedType:
                const FullType(GProfileData_Viewer_favourites_manga_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GProfileData_Viewer_favourites_manga_nodes)
            ])));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_mangaBuilder();

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
                      GProfileData_Viewer_favourites_manga_pageInfo))!
              as GProfileData_Viewer_favourites_manga_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GProfileData_Viewer_favourites_manga_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_manga_pageInfoSerializer
    implements
        StructuredSerializer<GProfileData_Viewer_favourites_manga_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_manga_pageInfo,
    _$GProfileData_Viewer_favourites_manga_pageInfo
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_manga_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_manga_pageInfo object,
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
  GProfileData_Viewer_favourites_manga_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_manga_pageInfoBuilder();

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

class _$GProfileData_Viewer_favourites_manga_nodesSerializer
    implements
        StructuredSerializer<GProfileData_Viewer_favourites_manga_nodes> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_manga_nodes,
    _$GProfileData_Viewer_favourites_manga_nodes
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_manga_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_manga_nodes object,
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
                GProfileData_Viewer_favourites_manga_nodes_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GProfileData_Viewer_favourites_manga_nodes_coverImage)));
    }
    return result;
  }

  @override
  GProfileData_Viewer_favourites_manga_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_Viewer_favourites_manga_nodesBuilder();

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
                      GProfileData_Viewer_favourites_manga_nodes_title))!
              as GProfileData_Viewer_favourites_manga_nodes_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProfileData_Viewer_favourites_manga_nodes_coverImage))!
              as GProfileData_Viewer_favourites_manga_nodes_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_Viewer_favourites_manga_nodes_titleSerializer
    implements
        StructuredSerializer<GProfileData_Viewer_favourites_manga_nodes_title> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_manga_nodes_title,
    _$GProfileData_Viewer_favourites_manga_nodes_title
  ];
  @override
  final String wireName = 'GProfileData_Viewer_favourites_manga_nodes_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_manga_nodes_title object,
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
  GProfileData_Viewer_favourites_manga_nodes_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfileData_Viewer_favourites_manga_nodes_titleBuilder();

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

class _$GProfileData_Viewer_favourites_manga_nodes_coverImageSerializer
    implements
        StructuredSerializer<
            GProfileData_Viewer_favourites_manga_nodes_coverImage> {
  @override
  final Iterable<Type> types = const [
    GProfileData_Viewer_favourites_manga_nodes_coverImage,
    _$GProfileData_Viewer_favourites_manga_nodes_coverImage
  ];
  @override
  final String wireName =
      'GProfileData_Viewer_favourites_manga_nodes_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfileData_Viewer_favourites_manga_nodes_coverImage object,
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
  GProfileData_Viewer_favourites_manga_nodes_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder();

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

class _$GProfileData extends GProfileData {
  @override
  final String G__typename;
  @override
  final GProfileData_Viewer? Viewer;

  factory _$GProfileData([void Function(GProfileDataBuilder)? updates]) =>
      (new GProfileDataBuilder()..update(updates))._build();

  _$GProfileData._({required this.G__typename, this.Viewer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData', 'G__typename');
  }

  @override
  GProfileData rebuild(void Function(GProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileDataBuilder toBuilder() => new GProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData &&
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
    return (newBuiltValueToStringHelper(r'GProfileData')
          ..add('G__typename', G__typename)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GProfileDataBuilder
    implements Builder<GProfileData, GProfileDataBuilder> {
  _$GProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GProfileData_ViewerBuilder? _Viewer;
  GProfileData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GProfileData_ViewerBuilder();
  set Viewer(GProfileData_ViewerBuilder? Viewer) => _$this._Viewer = Viewer;

  GProfileDataBuilder() {
    GProfileData._initializeBuilder(this);
  }

  GProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData;
  }

  @override
  void update(void Function(GProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData build() => _build();

  _$GProfileData _build() {
    _$GProfileData _$result;
    try {
      _$result = _$v ??
          new _$GProfileData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GProfileData', 'G__typename'),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer extends GProfileData_Viewer {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? about;
  @override
  final GProfileData_Viewer_avatar? avatar;
  @override
  final String? bannerImage;
  @override
  final GProfileData_Viewer_statistics? statistics;
  @override
  final GProfileData_Viewer_favourites? favourites;
  @override
  final int? unreadNotificationCount;

  factory _$GProfileData_Viewer(
          [void Function(GProfileData_ViewerBuilder)? updates]) =>
      (new GProfileData_ViewerBuilder()..update(updates))._build();

  _$GProfileData_Viewer._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.about,
      this.avatar,
      this.bannerImage,
      this.statistics,
      this.favourites,
      this.unreadNotificationCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GProfileData_Viewer', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GProfileData_Viewer', 'name');
  }

  @override
  GProfileData_Viewer rebuild(
          void Function(GProfileData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_ViewerBuilder toBuilder() =>
      new GProfileData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        about == other.about &&
        avatar == other.avatar &&
        bannerImage == other.bannerImage &&
        statistics == other.statistics &&
        favourites == other.favourites &&
        unreadNotificationCount == other.unreadNotificationCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jc(_$hash, unreadNotificationCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('about', about)
          ..add('avatar', avatar)
          ..add('bannerImage', bannerImage)
          ..add('statistics', statistics)
          ..add('favourites', favourites)
          ..add('unreadNotificationCount', unreadNotificationCount))
        .toString();
  }
}

class GProfileData_ViewerBuilder
    implements Builder<GProfileData_Viewer, GProfileData_ViewerBuilder> {
  _$GProfileData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  GProfileData_Viewer_avatarBuilder? _avatar;
  GProfileData_Viewer_avatarBuilder get avatar =>
      _$this._avatar ??= new GProfileData_Viewer_avatarBuilder();
  set avatar(GProfileData_Viewer_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GProfileData_Viewer_statisticsBuilder? _statistics;
  GProfileData_Viewer_statisticsBuilder get statistics =>
      _$this._statistics ??= new GProfileData_Viewer_statisticsBuilder();
  set statistics(GProfileData_Viewer_statisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  GProfileData_Viewer_favouritesBuilder? _favourites;
  GProfileData_Viewer_favouritesBuilder get favourites =>
      _$this._favourites ??= new GProfileData_Viewer_favouritesBuilder();
  set favourites(GProfileData_Viewer_favouritesBuilder? favourites) =>
      _$this._favourites = favourites;

  int? _unreadNotificationCount;
  int? get unreadNotificationCount => _$this._unreadNotificationCount;
  set unreadNotificationCount(int? unreadNotificationCount) =>
      _$this._unreadNotificationCount = unreadNotificationCount;

  GProfileData_ViewerBuilder() {
    GProfileData_Viewer._initializeBuilder(this);
  }

  GProfileData_ViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _about = $v.about;
      _avatar = $v.avatar?.toBuilder();
      _bannerImage = $v.bannerImage;
      _statistics = $v.statistics?.toBuilder();
      _favourites = $v.favourites?.toBuilder();
      _unreadNotificationCount = $v.unreadNotificationCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer;
  }

  @override
  void update(void Function(GProfileData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer build() => _build();

  _$GProfileData_Viewer _build() {
    _$GProfileData_Viewer _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GProfileData_Viewer', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProfileData_Viewer', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GProfileData_Viewer', 'name'),
              about: about,
              avatar: _avatar?.build(),
              bannerImage: bannerImage,
              statistics: _statistics?.build(),
              favourites: _favourites?.build(),
              unreadNotificationCount: unreadNotificationCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();

        _$failedField = 'statistics';
        _statistics?.build();
        _$failedField = 'favourites';
        _favourites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProfileData_Viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_avatar extends GProfileData_Viewer_avatar {
  @override
  final String G__typename;
  @override
  final String? large;
  @override
  final String? medium;

  factory _$GProfileData_Viewer_avatar(
          [void Function(GProfileData_Viewer_avatarBuilder)? updates]) =>
      (new GProfileData_Viewer_avatarBuilder()..update(updates))._build();

  _$GProfileData_Viewer_avatar._(
      {required this.G__typename, this.large, this.medium})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer_avatar', 'G__typename');
  }

  @override
  GProfileData_Viewer_avatar rebuild(
          void Function(GProfileData_Viewer_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_avatarBuilder toBuilder() =>
      new GProfileData_Viewer_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_avatar &&
        G__typename == other.G__typename &&
        large == other.large &&
        medium == other.medium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large)
          ..add('medium', medium))
        .toString();
  }
}

class GProfileData_Viewer_avatarBuilder
    implements
        Builder<GProfileData_Viewer_avatar, GProfileData_Viewer_avatarBuilder> {
  _$GProfileData_Viewer_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  GProfileData_Viewer_avatarBuilder() {
    GProfileData_Viewer_avatar._initializeBuilder(this);
  }

  GProfileData_Viewer_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _medium = $v.medium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_avatar;
  }

  @override
  void update(void Function(GProfileData_Viewer_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_avatar build() => _build();

  _$GProfileData_Viewer_avatar _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GProfileData_Viewer_avatar', 'G__typename'),
            large: large,
            medium: medium);
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_statistics extends GProfileData_Viewer_statistics {
  @override
  final String G__typename;
  @override
  final GProfileData_Viewer_statistics_anime? anime;
  @override
  final GProfileData_Viewer_statistics_manga? manga;

  factory _$GProfileData_Viewer_statistics(
          [void Function(GProfileData_Viewer_statisticsBuilder)? updates]) =>
      (new GProfileData_Viewer_statisticsBuilder()..update(updates))._build();

  _$GProfileData_Viewer_statistics._(
      {required this.G__typename, this.anime, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer_statistics', 'G__typename');
  }

  @override
  GProfileData_Viewer_statistics rebuild(
          void Function(GProfileData_Viewer_statisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_statisticsBuilder toBuilder() =>
      new GProfileData_Viewer_statisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_statistics &&
        G__typename == other.G__typename &&
        anime == other.anime &&
        manga == other.manga;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer_statistics')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GProfileData_Viewer_statisticsBuilder
    implements
        Builder<GProfileData_Viewer_statistics,
            GProfileData_Viewer_statisticsBuilder> {
  _$GProfileData_Viewer_statistics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GProfileData_Viewer_statistics_animeBuilder? _anime;
  GProfileData_Viewer_statistics_animeBuilder get anime =>
      _$this._anime ??= new GProfileData_Viewer_statistics_animeBuilder();
  set anime(GProfileData_Viewer_statistics_animeBuilder? anime) =>
      _$this._anime = anime;

  GProfileData_Viewer_statistics_mangaBuilder? _manga;
  GProfileData_Viewer_statistics_mangaBuilder get manga =>
      _$this._manga ??= new GProfileData_Viewer_statistics_mangaBuilder();
  set manga(GProfileData_Viewer_statistics_mangaBuilder? manga) =>
      _$this._manga = manga;

  GProfileData_Viewer_statisticsBuilder() {
    GProfileData_Viewer_statistics._initializeBuilder(this);
  }

  GProfileData_Viewer_statisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_statistics;
  }

  @override
  void update(void Function(GProfileData_Viewer_statisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_statistics build() => _build();

  _$GProfileData_Viewer_statistics _build() {
    _$GProfileData_Viewer_statistics _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_statistics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProfileData_Viewer_statistics', 'G__typename'),
              anime: _anime?.build(),
              manga: _manga?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProfileData_Viewer_statistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_statistics_anime
    extends GProfileData_Viewer_statistics_anime {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final double standardDeviation;
  @override
  final int minutesWatched;
  @override
  final int episodesWatched;

  factory _$GProfileData_Viewer_statistics_anime(
          [void Function(GProfileData_Viewer_statistics_animeBuilder)?
              updates]) =>
      (new GProfileData_Viewer_statistics_animeBuilder()..update(updates))
          ._build();

  _$GProfileData_Viewer_statistics_anime._(
      {required this.G__typename,
      required this.count,
      required this.meanScore,
      required this.standardDeviation,
      required this.minutesWatched,
      required this.episodesWatched})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer_statistics_anime', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GProfileData_Viewer_statistics_anime', 'count');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GProfileData_Viewer_statistics_anime', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GProfileData_Viewer_statistics_anime', 'standardDeviation');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GProfileData_Viewer_statistics_anime', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(episodesWatched,
        r'GProfileData_Viewer_statistics_anime', 'episodesWatched');
  }

  @override
  GProfileData_Viewer_statistics_anime rebuild(
          void Function(GProfileData_Viewer_statistics_animeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_statistics_animeBuilder toBuilder() =>
      new GProfileData_Viewer_statistics_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_statistics_anime &&
        G__typename == other.G__typename &&
        count == other.count &&
        meanScore == other.meanScore &&
        standardDeviation == other.standardDeviation &&
        minutesWatched == other.minutesWatched &&
        episodesWatched == other.episodesWatched;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, episodesWatched.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer_statistics_anime')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('standardDeviation', standardDeviation)
          ..add('minutesWatched', minutesWatched)
          ..add('episodesWatched', episodesWatched))
        .toString();
  }
}

class GProfileData_Viewer_statistics_animeBuilder
    implements
        Builder<GProfileData_Viewer_statistics_anime,
            GProfileData_Viewer_statistics_animeBuilder> {
  _$GProfileData_Viewer_statistics_anime? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _episodesWatched;
  int? get episodesWatched => _$this._episodesWatched;
  set episodesWatched(int? episodesWatched) =>
      _$this._episodesWatched = episodesWatched;

  GProfileData_Viewer_statistics_animeBuilder() {
    GProfileData_Viewer_statistics_anime._initializeBuilder(this);
  }

  GProfileData_Viewer_statistics_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _meanScore = $v.meanScore;
      _standardDeviation = $v.standardDeviation;
      _minutesWatched = $v.minutesWatched;
      _episodesWatched = $v.episodesWatched;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_statistics_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_statistics_anime;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_statistics_animeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_statistics_anime build() => _build();

  _$GProfileData_Viewer_statistics_anime _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_statistics_anime._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GProfileData_Viewer_statistics_anime', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GProfileData_Viewer_statistics_anime', 'count'),
            meanScore: BuiltValueNullFieldError.checkNotNull(
                meanScore, r'GProfileData_Viewer_statistics_anime', 'meanScore'),
            standardDeviation: BuiltValueNullFieldError.checkNotNull(
                standardDeviation,
                r'GProfileData_Viewer_statistics_anime',
                'standardDeviation'),
            minutesWatched: BuiltValueNullFieldError.checkNotNull(
                minutesWatched, r'GProfileData_Viewer_statistics_anime', 'minutesWatched'),
            episodesWatched: BuiltValueNullFieldError.checkNotNull(
                episodesWatched,
                r'GProfileData_Viewer_statistics_anime',
                'episodesWatched'));
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_statistics_manga
    extends GProfileData_Viewer_statistics_manga {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int episodesWatched;
  @override
  final int chaptersRead;
  @override
  final int volumesRead;

  factory _$GProfileData_Viewer_statistics_manga(
          [void Function(GProfileData_Viewer_statistics_mangaBuilder)?
              updates]) =>
      (new GProfileData_Viewer_statistics_mangaBuilder()..update(updates))
          ._build();

  _$GProfileData_Viewer_statistics_manga._(
      {required this.G__typename,
      required this.count,
      required this.episodesWatched,
      required this.chaptersRead,
      required this.volumesRead})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer_statistics_manga', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GProfileData_Viewer_statistics_manga', 'count');
    BuiltValueNullFieldError.checkNotNull(episodesWatched,
        r'GProfileData_Viewer_statistics_manga', 'episodesWatched');
    BuiltValueNullFieldError.checkNotNull(
        chaptersRead, r'GProfileData_Viewer_statistics_manga', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        volumesRead, r'GProfileData_Viewer_statistics_manga', 'volumesRead');
  }

  @override
  GProfileData_Viewer_statistics_manga rebuild(
          void Function(GProfileData_Viewer_statistics_mangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_statistics_mangaBuilder toBuilder() =>
      new GProfileData_Viewer_statistics_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_statistics_manga &&
        G__typename == other.G__typename &&
        count == other.count &&
        episodesWatched == other.episodesWatched &&
        chaptersRead == other.chaptersRead &&
        volumesRead == other.volumesRead;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, episodesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, volumesRead.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer_statistics_manga')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('episodesWatched', episodesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('volumesRead', volumesRead))
        .toString();
  }
}

class GProfileData_Viewer_statistics_mangaBuilder
    implements
        Builder<GProfileData_Viewer_statistics_manga,
            GProfileData_Viewer_statistics_mangaBuilder> {
  _$GProfileData_Viewer_statistics_manga? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _episodesWatched;
  int? get episodesWatched => _$this._episodesWatched;
  set episodesWatched(int? episodesWatched) =>
      _$this._episodesWatched = episodesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  int? _volumesRead;
  int? get volumesRead => _$this._volumesRead;
  set volumesRead(int? volumesRead) => _$this._volumesRead = volumesRead;

  GProfileData_Viewer_statistics_mangaBuilder() {
    GProfileData_Viewer_statistics_manga._initializeBuilder(this);
  }

  GProfileData_Viewer_statistics_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _episodesWatched = $v.episodesWatched;
      _chaptersRead = $v.chaptersRead;
      _volumesRead = $v.volumesRead;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_statistics_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_statistics_manga;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_statistics_mangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_statistics_manga build() => _build();

  _$GProfileData_Viewer_statistics_manga _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_statistics_manga._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GProfileData_Viewer_statistics_manga', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GProfileData_Viewer_statistics_manga', 'count'),
            episodesWatched: BuiltValueNullFieldError.checkNotNull(
                episodesWatched,
                r'GProfileData_Viewer_statistics_manga',
                'episodesWatched'),
            chaptersRead: BuiltValueNullFieldError.checkNotNull(chaptersRead,
                r'GProfileData_Viewer_statistics_manga', 'chaptersRead'),
            volumesRead: BuiltValueNullFieldError.checkNotNull(volumesRead,
                r'GProfileData_Viewer_statistics_manga', 'volumesRead'));
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites extends GProfileData_Viewer_favourites {
  @override
  final String G__typename;
  @override
  final GProfileData_Viewer_favourites_characters? characters;
  @override
  final GProfileData_Viewer_favourites_anime? anime;
  @override
  final GProfileData_Viewer_favourites_manga? manga;

  factory _$GProfileData_Viewer_favourites(
          [void Function(GProfileData_Viewer_favouritesBuilder)? updates]) =>
      (new GProfileData_Viewer_favouritesBuilder()..update(updates))._build();

  _$GProfileData_Viewer_favourites._(
      {required this.G__typename, this.characters, this.anime, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer_favourites', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites rebuild(
          void Function(GProfileData_Viewer_favouritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favouritesBuilder toBuilder() =>
      new GProfileData_Viewer_favouritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites &&
        G__typename == other.G__typename &&
        characters == other.characters &&
        anime == other.anime &&
        manga == other.manga;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer_favourites')
          ..add('G__typename', G__typename)
          ..add('characters', characters)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GProfileData_Viewer_favouritesBuilder
    implements
        Builder<GProfileData_Viewer_favourites,
            GProfileData_Viewer_favouritesBuilder> {
  _$GProfileData_Viewer_favourites? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GProfileData_Viewer_favourites_charactersBuilder? _characters;
  GProfileData_Viewer_favourites_charactersBuilder get characters =>
      _$this._characters ??=
          new GProfileData_Viewer_favourites_charactersBuilder();
  set characters(
          GProfileData_Viewer_favourites_charactersBuilder? characters) =>
      _$this._characters = characters;

  GProfileData_Viewer_favourites_animeBuilder? _anime;
  GProfileData_Viewer_favourites_animeBuilder get anime =>
      _$this._anime ??= new GProfileData_Viewer_favourites_animeBuilder();
  set anime(GProfileData_Viewer_favourites_animeBuilder? anime) =>
      _$this._anime = anime;

  GProfileData_Viewer_favourites_mangaBuilder? _manga;
  GProfileData_Viewer_favourites_mangaBuilder get manga =>
      _$this._manga ??= new GProfileData_Viewer_favourites_mangaBuilder();
  set manga(GProfileData_Viewer_favourites_mangaBuilder? manga) =>
      _$this._manga = manga;

  GProfileData_Viewer_favouritesBuilder() {
    GProfileData_Viewer_favourites._initializeBuilder(this);
  }

  GProfileData_Viewer_favouritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _characters = $v.characters?.toBuilder();
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_favourites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites;
  }

  @override
  void update(void Function(GProfileData_Viewer_favouritesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites build() => _build();

  _$GProfileData_Viewer_favourites _build() {
    _$GProfileData_Viewer_favourites _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_favourites._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProfileData_Viewer_favourites', 'G__typename'),
              characters: _characters?.build(),
              anime: _anime?.build(),
              manga: _manga?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        _characters?.build();
        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProfileData_Viewer_favourites', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_characters
    extends GProfileData_Viewer_favourites_characters {
  @override
  final String G__typename;
  @override
  final GProfileData_Viewer_favourites_characters_pageInfo? pageInfo;
  @override
  final BuiltList<GProfileData_Viewer_favourites_characters_nodes?>? nodes;

  factory _$GProfileData_Viewer_favourites_characters(
          [void Function(GProfileData_Viewer_favourites_charactersBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_charactersBuilder()..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_characters._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_characters', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_characters rebuild(
          void Function(GProfileData_Viewer_favourites_charactersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_charactersBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_characters &&
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
            r'GProfileData_Viewer_favourites_characters')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GProfileData_Viewer_favourites_charactersBuilder
    implements
        Builder<GProfileData_Viewer_favourites_characters,
            GProfileData_Viewer_favourites_charactersBuilder> {
  _$GProfileData_Viewer_favourites_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GProfileData_Viewer_favourites_characters_pageInfoBuilder? _pageInfo;
  GProfileData_Viewer_favourites_characters_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GProfileData_Viewer_favourites_characters_pageInfoBuilder();
  set pageInfo(
          GProfileData_Viewer_favourites_characters_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GProfileData_Viewer_favourites_characters_nodes?>? _nodes;
  ListBuilder<GProfileData_Viewer_favourites_characters_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GProfileData_Viewer_favourites_characters_nodes?>();
  set nodes(
          ListBuilder<GProfileData_Viewer_favourites_characters_nodes?>?
              nodes) =>
      _$this._nodes = nodes;

  GProfileData_Viewer_favourites_charactersBuilder() {
    GProfileData_Viewer_favourites_characters._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_charactersBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_characters;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_charactersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_characters build() => _build();

  _$GProfileData_Viewer_favourites_characters _build() {
    _$GProfileData_Viewer_favourites_characters _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_favourites_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProfileData_Viewer_favourites_characters', 'G__typename'),
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
            r'GProfileData_Viewer_favourites_characters',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_characters_pageInfo
    extends GProfileData_Viewer_favourites_characters_pageInfo {
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

  factory _$GProfileData_Viewer_favourites_characters_pageInfo(
          [void Function(
                  GProfileData_Viewer_favourites_characters_pageInfoBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_characters_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_characters_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_characters_pageInfo', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_characters_pageInfo rebuild(
          void Function(
                  GProfileData_Viewer_favourites_characters_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_characters_pageInfoBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_characters_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_characters_pageInfo &&
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
            r'GProfileData_Viewer_favourites_characters_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GProfileData_Viewer_favourites_characters_pageInfoBuilder
    implements
        Builder<GProfileData_Viewer_favourites_characters_pageInfo,
            GProfileData_Viewer_favourites_characters_pageInfoBuilder> {
  _$GProfileData_Viewer_favourites_characters_pageInfo? _$v;

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

  GProfileData_Viewer_favourites_characters_pageInfoBuilder() {
    GProfileData_Viewer_favourites_characters_pageInfo._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_characters_pageInfoBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_characters_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_characters_pageInfo;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_characters_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_characters_pageInfo build() => _build();

  _$GProfileData_Viewer_favourites_characters_pageInfo _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_characters_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_characters_pageInfo',
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

class _$GProfileData_Viewer_favourites_characters_nodes
    extends GProfileData_Viewer_favourites_characters_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GProfileData_Viewer_favourites_characters_nodes_name? name;
  @override
  final GProfileData_Viewer_favourites_characters_nodes_image? image;

  factory _$GProfileData_Viewer_favourites_characters_nodes(
          [void Function(
                  GProfileData_Viewer_favourites_characters_nodesBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_characters_nodesBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_characters_nodes._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_characters_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProfileData_Viewer_favourites_characters_nodes', 'id');
  }

  @override
  GProfileData_Viewer_favourites_characters_nodes rebuild(
          void Function(GProfileData_Viewer_favourites_characters_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_characters_nodesBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_characters_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_characters_nodes &&
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
            r'GProfileData_Viewer_favourites_characters_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GProfileData_Viewer_favourites_characters_nodesBuilder
    implements
        Builder<GProfileData_Viewer_favourites_characters_nodes,
            GProfileData_Viewer_favourites_characters_nodesBuilder> {
  _$GProfileData_Viewer_favourites_characters_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GProfileData_Viewer_favourites_characters_nodes_nameBuilder? _name;
  GProfileData_Viewer_favourites_characters_nodes_nameBuilder get name =>
      _$this._name ??=
          new GProfileData_Viewer_favourites_characters_nodes_nameBuilder();
  set name(GProfileData_Viewer_favourites_characters_nodes_nameBuilder? name) =>
      _$this._name = name;

  GProfileData_Viewer_favourites_characters_nodes_imageBuilder? _image;
  GProfileData_Viewer_favourites_characters_nodes_imageBuilder get image =>
      _$this._image ??=
          new GProfileData_Viewer_favourites_characters_nodes_imageBuilder();
  set image(
          GProfileData_Viewer_favourites_characters_nodes_imageBuilder?
              image) =>
      _$this._image = image;

  GProfileData_Viewer_favourites_characters_nodesBuilder() {
    GProfileData_Viewer_favourites_characters_nodes._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_characters_nodesBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_characters_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_characters_nodes;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_characters_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_characters_nodes build() => _build();

  _$GProfileData_Viewer_favourites_characters_nodes _build() {
    _$GProfileData_Viewer_favourites_characters_nodes _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_favourites_characters_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GProfileData_Viewer_favourites_characters_nodes',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProfileData_Viewer_favourites_characters_nodes', 'id'),
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
            r'GProfileData_Viewer_favourites_characters_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_characters_nodes_name
    extends GProfileData_Viewer_favourites_characters_nodes_name {
  @override
  final String G__typename;
  @override
  final String? full;

  factory _$GProfileData_Viewer_favourites_characters_nodes_name(
          [void Function(
                  GProfileData_Viewer_favourites_characters_nodes_nameBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_characters_nodes_nameBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_characters_nodes_name._(
      {required this.G__typename, this.full})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_characters_nodes_name', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_characters_nodes_name rebuild(
          void Function(
                  GProfileData_Viewer_favourites_characters_nodes_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_characters_nodes_nameBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_characters_nodes_nameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_characters_nodes_name &&
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
            r'GProfileData_Viewer_favourites_characters_nodes_name')
          ..add('G__typename', G__typename)
          ..add('full', full))
        .toString();
  }
}

class GProfileData_Viewer_favourites_characters_nodes_nameBuilder
    implements
        Builder<GProfileData_Viewer_favourites_characters_nodes_name,
            GProfileData_Viewer_favourites_characters_nodes_nameBuilder> {
  _$GProfileData_Viewer_favourites_characters_nodes_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  GProfileData_Viewer_favourites_characters_nodes_nameBuilder() {
    GProfileData_Viewer_favourites_characters_nodes_name._initializeBuilder(
        this);
  }

  GProfileData_Viewer_favourites_characters_nodes_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _full = $v.full;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_favourites_characters_nodes_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_characters_nodes_name;
  }

  @override
  void update(
      void Function(
              GProfileData_Viewer_favourites_characters_nodes_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_characters_nodes_name build() => _build();

  _$GProfileData_Viewer_favourites_characters_nodes_name _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_characters_nodes_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_characters_nodes_name',
                'G__typename'),
            full: full);
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_characters_nodes_image
    extends GProfileData_Viewer_favourites_characters_nodes_image {
  @override
  final String G__typename;
  @override
  final String? medium;
  @override
  final String? large;

  factory _$GProfileData_Viewer_favourites_characters_nodes_image(
          [void Function(
                  GProfileData_Viewer_favourites_characters_nodes_imageBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_characters_nodes_imageBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_characters_nodes_image._(
      {required this.G__typename, this.medium, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProfileData_Viewer_favourites_characters_nodes_image',
        'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_characters_nodes_image rebuild(
          void Function(
                  GProfileData_Viewer_favourites_characters_nodes_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_characters_nodes_imageBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_characters_nodes_imageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_characters_nodes_image &&
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
            r'GProfileData_Viewer_favourites_characters_nodes_image')
          ..add('G__typename', G__typename)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class GProfileData_Viewer_favourites_characters_nodes_imageBuilder
    implements
        Builder<GProfileData_Viewer_favourites_characters_nodes_image,
            GProfileData_Viewer_favourites_characters_nodes_imageBuilder> {
  _$GProfileData_Viewer_favourites_characters_nodes_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GProfileData_Viewer_favourites_characters_nodes_imageBuilder() {
    GProfileData_Viewer_favourites_characters_nodes_image._initializeBuilder(
        this);
  }

  GProfileData_Viewer_favourites_characters_nodes_imageBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_characters_nodes_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_characters_nodes_image;
  }

  @override
  void update(
      void Function(
              GProfileData_Viewer_favourites_characters_nodes_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_characters_nodes_image build() => _build();

  _$GProfileData_Viewer_favourites_characters_nodes_image _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_characters_nodes_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_characters_nodes_image',
                'G__typename'),
            medium: medium,
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_anime
    extends GProfileData_Viewer_favourites_anime {
  @override
  final String G__typename;
  @override
  final GProfileData_Viewer_favourites_anime_pageInfo? pageInfo;
  @override
  final BuiltList<GProfileData_Viewer_favourites_anime_nodes?>? nodes;

  factory _$GProfileData_Viewer_favourites_anime(
          [void Function(GProfileData_Viewer_favourites_animeBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_animeBuilder()..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_anime._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer_favourites_anime', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_anime rebuild(
          void Function(GProfileData_Viewer_favourites_animeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_animeBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_anime &&
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
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer_favourites_anime')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GProfileData_Viewer_favourites_animeBuilder
    implements
        Builder<GProfileData_Viewer_favourites_anime,
            GProfileData_Viewer_favourites_animeBuilder> {
  _$GProfileData_Viewer_favourites_anime? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GProfileData_Viewer_favourites_anime_pageInfoBuilder? _pageInfo;
  GProfileData_Viewer_favourites_anime_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GProfileData_Viewer_favourites_anime_pageInfoBuilder();
  set pageInfo(
          GProfileData_Viewer_favourites_anime_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GProfileData_Viewer_favourites_anime_nodes?>? _nodes;
  ListBuilder<GProfileData_Viewer_favourites_anime_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GProfileData_Viewer_favourites_anime_nodes?>();
  set nodes(ListBuilder<GProfileData_Viewer_favourites_anime_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GProfileData_Viewer_favourites_animeBuilder() {
    GProfileData_Viewer_favourites_anime._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_animeBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_anime;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_animeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_anime build() => _build();

  _$GProfileData_Viewer_favourites_anime _build() {
    _$GProfileData_Viewer_favourites_anime _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_favourites_anime._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProfileData_Viewer_favourites_anime', 'G__typename'),
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
            r'GProfileData_Viewer_favourites_anime',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_anime_pageInfo
    extends GProfileData_Viewer_favourites_anime_pageInfo {
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

  factory _$GProfileData_Viewer_favourites_anime_pageInfo(
          [void Function(GProfileData_Viewer_favourites_anime_pageInfoBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_anime_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_anime_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_anime_pageInfo', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_anime_pageInfo rebuild(
          void Function(GProfileData_Viewer_favourites_anime_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_anime_pageInfoBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_anime_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_anime_pageInfo &&
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
            r'GProfileData_Viewer_favourites_anime_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GProfileData_Viewer_favourites_anime_pageInfoBuilder
    implements
        Builder<GProfileData_Viewer_favourites_anime_pageInfo,
            GProfileData_Viewer_favourites_anime_pageInfoBuilder> {
  _$GProfileData_Viewer_favourites_anime_pageInfo? _$v;

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

  GProfileData_Viewer_favourites_anime_pageInfoBuilder() {
    GProfileData_Viewer_favourites_anime_pageInfo._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_anime_pageInfoBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_anime_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_anime_pageInfo;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_anime_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_anime_pageInfo build() => _build();

  _$GProfileData_Viewer_favourites_anime_pageInfo _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_anime_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_anime_pageInfo',
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

class _$GProfileData_Viewer_favourites_anime_nodes
    extends GProfileData_Viewer_favourites_anime_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GProfileData_Viewer_favourites_anime_nodes_title? title;
  @override
  final GProfileData_Viewer_favourites_anime_nodes_coverImage? coverImage;

  factory _$GProfileData_Viewer_favourites_anime_nodes(
          [void Function(GProfileData_Viewer_favourites_anime_nodesBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_anime_nodesBuilder()..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_anime_nodes._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_anime_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProfileData_Viewer_favourites_anime_nodes', 'id');
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes rebuild(
          void Function(GProfileData_Viewer_favourites_anime_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_anime_nodesBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_anime_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_anime_nodes &&
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
            r'GProfileData_Viewer_favourites_anime_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GProfileData_Viewer_favourites_anime_nodesBuilder
    implements
        Builder<GProfileData_Viewer_favourites_anime_nodes,
            GProfileData_Viewer_favourites_anime_nodesBuilder> {
  _$GProfileData_Viewer_favourites_anime_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GProfileData_Viewer_favourites_anime_nodes_titleBuilder? _title;
  GProfileData_Viewer_favourites_anime_nodes_titleBuilder get title =>
      _$this._title ??=
          new GProfileData_Viewer_favourites_anime_nodes_titleBuilder();
  set title(GProfileData_Viewer_favourites_anime_nodes_titleBuilder? title) =>
      _$this._title = title;

  GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder? _coverImage;
  GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder();
  set coverImage(
          GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GProfileData_Viewer_favourites_anime_nodesBuilder() {
    GProfileData_Viewer_favourites_anime_nodes._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_anime_nodesBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_anime_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_anime_nodes;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_anime_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes build() => _build();

  _$GProfileData_Viewer_favourites_anime_nodes _build() {
    _$GProfileData_Viewer_favourites_anime_nodes _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_favourites_anime_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProfileData_Viewer_favourites_anime_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProfileData_Viewer_favourites_anime_nodes', 'id'),
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
            r'GProfileData_Viewer_favourites_anime_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_anime_nodes_title
    extends GProfileData_Viewer_favourites_anime_nodes_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GProfileData_Viewer_favourites_anime_nodes_title(
          [void Function(
                  GProfileData_Viewer_favourites_anime_nodes_titleBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_anime_nodes_titleBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_anime_nodes_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_anime_nodes_title', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes_title rebuild(
          void Function(GProfileData_Viewer_favourites_anime_nodes_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_anime_nodes_titleBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_anime_nodes_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_anime_nodes_title &&
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
            r'GProfileData_Viewer_favourites_anime_nodes_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GProfileData_Viewer_favourites_anime_nodes_titleBuilder
    implements
        Builder<GProfileData_Viewer_favourites_anime_nodes_title,
            GProfileData_Viewer_favourites_anime_nodes_titleBuilder> {
  _$GProfileData_Viewer_favourites_anime_nodes_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GProfileData_Viewer_favourites_anime_nodes_titleBuilder() {
    GProfileData_Viewer_favourites_anime_nodes_title._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_anime_nodes_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_favourites_anime_nodes_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_anime_nodes_title;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_anime_nodes_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes_title build() => _build();

  _$GProfileData_Viewer_favourites_anime_nodes_title _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_anime_nodes_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_anime_nodes_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_anime_nodes_coverImage
    extends GProfileData_Viewer_favourites_anime_nodes_coverImage {
  @override
  final String G__typename;
  @override
  final String? medium;
  @override
  final String? large;
  @override
  final String? color;

  factory _$GProfileData_Viewer_favourites_anime_nodes_coverImage(
          [void Function(
                  GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_anime_nodes_coverImage._(
      {required this.G__typename, this.medium, this.large, this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProfileData_Viewer_favourites_anime_nodes_coverImage',
        'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes_coverImage rebuild(
          void Function(
                  GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_anime_nodes_coverImage &&
        G__typename == other.G__typename &&
        medium == other.medium &&
        large == other.large &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProfileData_Viewer_favourites_anime_nodes_coverImage')
          ..add('G__typename', G__typename)
          ..add('medium', medium)
          ..add('large', large)
          ..add('color', color))
        .toString();
  }
}

class GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder
    implements
        Builder<GProfileData_Viewer_favourites_anime_nodes_coverImage,
            GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder> {
  _$GProfileData_Viewer_favourites_anime_nodes_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder() {
    GProfileData_Viewer_favourites_anime_nodes_coverImage._initializeBuilder(
        this);
  }

  GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _large = $v.large;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_favourites_anime_nodes_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_anime_nodes_coverImage;
  }

  @override
  void update(
      void Function(
              GProfileData_Viewer_favourites_anime_nodes_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_anime_nodes_coverImage build() => _build();

  _$GProfileData_Viewer_favourites_anime_nodes_coverImage _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_anime_nodes_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_anime_nodes_coverImage',
                'G__typename'),
            medium: medium,
            large: large,
            color: color);
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_manga
    extends GProfileData_Viewer_favourites_manga {
  @override
  final String G__typename;
  @override
  final GProfileData_Viewer_favourites_manga_pageInfo? pageInfo;
  @override
  final BuiltList<GProfileData_Viewer_favourites_manga_nodes?>? nodes;

  factory _$GProfileData_Viewer_favourites_manga(
          [void Function(GProfileData_Viewer_favourites_mangaBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_mangaBuilder()..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_manga._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProfileData_Viewer_favourites_manga', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_manga rebuild(
          void Function(GProfileData_Viewer_favourites_mangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_mangaBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_manga &&
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
    return (newBuiltValueToStringHelper(r'GProfileData_Viewer_favourites_manga')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GProfileData_Viewer_favourites_mangaBuilder
    implements
        Builder<GProfileData_Viewer_favourites_manga,
            GProfileData_Viewer_favourites_mangaBuilder> {
  _$GProfileData_Viewer_favourites_manga? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GProfileData_Viewer_favourites_manga_pageInfoBuilder? _pageInfo;
  GProfileData_Viewer_favourites_manga_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GProfileData_Viewer_favourites_manga_pageInfoBuilder();
  set pageInfo(
          GProfileData_Viewer_favourites_manga_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GProfileData_Viewer_favourites_manga_nodes?>? _nodes;
  ListBuilder<GProfileData_Viewer_favourites_manga_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GProfileData_Viewer_favourites_manga_nodes?>();
  set nodes(ListBuilder<GProfileData_Viewer_favourites_manga_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GProfileData_Viewer_favourites_mangaBuilder() {
    GProfileData_Viewer_favourites_manga._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_mangaBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_manga;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_mangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_manga build() => _build();

  _$GProfileData_Viewer_favourites_manga _build() {
    _$GProfileData_Viewer_favourites_manga _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_favourites_manga._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProfileData_Viewer_favourites_manga', 'G__typename'),
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
            r'GProfileData_Viewer_favourites_manga',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_manga_pageInfo
    extends GProfileData_Viewer_favourites_manga_pageInfo {
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

  factory _$GProfileData_Viewer_favourites_manga_pageInfo(
          [void Function(GProfileData_Viewer_favourites_manga_pageInfoBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_manga_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_manga_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_manga_pageInfo', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_manga_pageInfo rebuild(
          void Function(GProfileData_Viewer_favourites_manga_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_manga_pageInfoBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_manga_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_manga_pageInfo &&
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
            r'GProfileData_Viewer_favourites_manga_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GProfileData_Viewer_favourites_manga_pageInfoBuilder
    implements
        Builder<GProfileData_Viewer_favourites_manga_pageInfo,
            GProfileData_Viewer_favourites_manga_pageInfoBuilder> {
  _$GProfileData_Viewer_favourites_manga_pageInfo? _$v;

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

  GProfileData_Viewer_favourites_manga_pageInfoBuilder() {
    GProfileData_Viewer_favourites_manga_pageInfo._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_manga_pageInfoBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_manga_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_manga_pageInfo;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_manga_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_manga_pageInfo build() => _build();

  _$GProfileData_Viewer_favourites_manga_pageInfo _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_manga_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_manga_pageInfo',
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

class _$GProfileData_Viewer_favourites_manga_nodes
    extends GProfileData_Viewer_favourites_manga_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GProfileData_Viewer_favourites_manga_nodes_title? title;
  @override
  final GProfileData_Viewer_favourites_manga_nodes_coverImage? coverImage;

  factory _$GProfileData_Viewer_favourites_manga_nodes(
          [void Function(GProfileData_Viewer_favourites_manga_nodesBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_manga_nodesBuilder()..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_manga_nodes._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_manga_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProfileData_Viewer_favourites_manga_nodes', 'id');
  }

  @override
  GProfileData_Viewer_favourites_manga_nodes rebuild(
          void Function(GProfileData_Viewer_favourites_manga_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_manga_nodesBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_manga_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_manga_nodes &&
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
            r'GProfileData_Viewer_favourites_manga_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GProfileData_Viewer_favourites_manga_nodesBuilder
    implements
        Builder<GProfileData_Viewer_favourites_manga_nodes,
            GProfileData_Viewer_favourites_manga_nodesBuilder> {
  _$GProfileData_Viewer_favourites_manga_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GProfileData_Viewer_favourites_manga_nodes_titleBuilder? _title;
  GProfileData_Viewer_favourites_manga_nodes_titleBuilder get title =>
      _$this._title ??=
          new GProfileData_Viewer_favourites_manga_nodes_titleBuilder();
  set title(GProfileData_Viewer_favourites_manga_nodes_titleBuilder? title) =>
      _$this._title = title;

  GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder? _coverImage;
  GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder();
  set coverImage(
          GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GProfileData_Viewer_favourites_manga_nodesBuilder() {
    GProfileData_Viewer_favourites_manga_nodes._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_manga_nodesBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_manga_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_manga_nodes;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_manga_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_manga_nodes build() => _build();

  _$GProfileData_Viewer_favourites_manga_nodes _build() {
    _$GProfileData_Viewer_favourites_manga_nodes _$result;
    try {
      _$result = _$v ??
          new _$GProfileData_Viewer_favourites_manga_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProfileData_Viewer_favourites_manga_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProfileData_Viewer_favourites_manga_nodes', 'id'),
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
            r'GProfileData_Viewer_favourites_manga_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_manga_nodes_title
    extends GProfileData_Viewer_favourites_manga_nodes_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GProfileData_Viewer_favourites_manga_nodes_title(
          [void Function(
                  GProfileData_Viewer_favourites_manga_nodes_titleBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_manga_nodes_titleBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_manga_nodes_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProfileData_Viewer_favourites_manga_nodes_title', 'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_manga_nodes_title rebuild(
          void Function(GProfileData_Viewer_favourites_manga_nodes_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_manga_nodes_titleBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_manga_nodes_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_manga_nodes_title &&
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
            r'GProfileData_Viewer_favourites_manga_nodes_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GProfileData_Viewer_favourites_manga_nodes_titleBuilder
    implements
        Builder<GProfileData_Viewer_favourites_manga_nodes_title,
            GProfileData_Viewer_favourites_manga_nodes_titleBuilder> {
  _$GProfileData_Viewer_favourites_manga_nodes_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GProfileData_Viewer_favourites_manga_nodes_titleBuilder() {
    GProfileData_Viewer_favourites_manga_nodes_title._initializeBuilder(this);
  }

  GProfileData_Viewer_favourites_manga_nodes_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_Viewer_favourites_manga_nodes_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_manga_nodes_title;
  }

  @override
  void update(
      void Function(GProfileData_Viewer_favourites_manga_nodes_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_manga_nodes_title build() => _build();

  _$GProfileData_Viewer_favourites_manga_nodes_title _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_manga_nodes_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_manga_nodes_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_Viewer_favourites_manga_nodes_coverImage
    extends GProfileData_Viewer_favourites_manga_nodes_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;
  @override
  final String? large;
  @override
  final String? medium;

  factory _$GProfileData_Viewer_favourites_manga_nodes_coverImage(
          [void Function(
                  GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder)?
              updates]) =>
      (new GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GProfileData_Viewer_favourites_manga_nodes_coverImage._(
      {required this.G__typename, this.extraLarge, this.large, this.medium})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProfileData_Viewer_favourites_manga_nodes_coverImage',
        'G__typename');
  }

  @override
  GProfileData_Viewer_favourites_manga_nodes_coverImage rebuild(
          void Function(
                  GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder toBuilder() =>
      new GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_Viewer_favourites_manga_nodes_coverImage &&
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
            r'GProfileData_Viewer_favourites_manga_nodes_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge)
          ..add('large', large)
          ..add('medium', medium))
        .toString();
  }
}

class GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder
    implements
        Builder<GProfileData_Viewer_favourites_manga_nodes_coverImage,
            GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder> {
  _$GProfileData_Viewer_favourites_manga_nodes_coverImage? _$v;

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

  GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder() {
    GProfileData_Viewer_favourites_manga_nodes_coverImage._initializeBuilder(
        this);
  }

  GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder get _$this {
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
  void replace(GProfileData_Viewer_favourites_manga_nodes_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_Viewer_favourites_manga_nodes_coverImage;
  }

  @override
  void update(
      void Function(
              GProfileData_Viewer_favourites_manga_nodes_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProfileData_Viewer_favourites_manga_nodes_coverImage build() => _build();

  _$GProfileData_Viewer_favourites_manga_nodes_coverImage _build() {
    final _$result = _$v ??
        new _$GProfileData_Viewer_favourites_manga_nodes_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProfileData_Viewer_favourites_manga_nodes_coverImage',
                'G__typename'),
            extraLarge: extraLarge,
            large: large,
            medium: medium);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
