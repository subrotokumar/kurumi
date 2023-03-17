// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchAnimeQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchAnimeQueryData> _$gSearchAnimeQueryDataSerializer =
    new _$GSearchAnimeQueryDataSerializer();
Serializer<GSearchAnimeQueryData_Page> _$gSearchAnimeQueryDataPageSerializer =
    new _$GSearchAnimeQueryData_PageSerializer();
Serializer<GSearchAnimeQueryData_Page_pageInfo>
    _$gSearchAnimeQueryDataPagePageInfoSerializer =
    new _$GSearchAnimeQueryData_Page_pageInfoSerializer();
Serializer<GSearchAnimeQueryData_Page_media>
    _$gSearchAnimeQueryDataPageMediaSerializer =
    new _$GSearchAnimeQueryData_Page_mediaSerializer();
Serializer<GSearchAnimeQueryData_Page_media_title>
    _$gSearchAnimeQueryDataPageMediaTitleSerializer =
    new _$GSearchAnimeQueryData_Page_media_titleSerializer();
Serializer<GSearchAnimeQueryData_Page_media_coverImage>
    _$gSearchAnimeQueryDataPageMediaCoverImageSerializer =
    new _$GSearchAnimeQueryData_Page_media_coverImageSerializer();
Serializer<GSearchAnimeQueryData_Page_media_startDate>
    _$gSearchAnimeQueryDataPageMediaStartDateSerializer =
    new _$GSearchAnimeQueryData_Page_media_startDateSerializer();
Serializer<GSearchAnimeQueryData_Page_media_studios>
    _$gSearchAnimeQueryDataPageMediaStudiosSerializer =
    new _$GSearchAnimeQueryData_Page_media_studiosSerializer();
Serializer<GSearchAnimeQueryData_Page_media_studios_edges>
    _$gSearchAnimeQueryDataPageMediaStudiosEdgesSerializer =
    new _$GSearchAnimeQueryData_Page_media_studios_edgesSerializer();
Serializer<GSearchAnimeQueryData_Page_media_studios_edges_node>
    _$gSearchAnimeQueryDataPageMediaStudiosEdgesNodeSerializer =
    new _$GSearchAnimeQueryData_Page_media_studios_edges_nodeSerializer();
Serializer<GSearchAnimeQueryData_Page_media_mediaListEntry>
    _$gSearchAnimeQueryDataPageMediaMediaListEntrySerializer =
    new _$GSearchAnimeQueryData_Page_media_mediaListEntrySerializer();

class _$GSearchAnimeQueryDataSerializer
    implements StructuredSerializer<GSearchAnimeQueryData> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData,
    _$GSearchAnimeQueryData
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchAnimeQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSearchAnimeQueryData_Page)));
    }
    return result;
  }

  @override
  GSearchAnimeQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryDataBuilder();

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
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSearchAnimeQueryData_Page))!
              as GSearchAnimeQueryData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_PageSerializer
    implements StructuredSerializer<GSearchAnimeQueryData_Page> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page,
    _$GSearchAnimeQueryData_Page
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchAnimeQueryData_Page object,
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
                const FullType(GSearchAnimeQueryData_Page_pageInfo)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GSearchAnimeQueryData_Page_media)
            ])));
    }
    return result;
  }

  @override
  GSearchAnimeQueryData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_PageBuilder();

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
                  specifiedType:
                      const FullType(GSearchAnimeQueryData_Page_pageInfo))!
              as GSearchAnimeQueryData_Page_pageInfo);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GSearchAnimeQueryData_Page_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_Page_pageInfoSerializer
    implements StructuredSerializer<GSearchAnimeQueryData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_pageInfo,
    _$GSearchAnimeQueryData_Page_pageInfo
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchAnimeQueryData_Page_pageInfo object,
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
  GSearchAnimeQueryData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_pageInfoBuilder();

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

class _$GSearchAnimeQueryData_Page_mediaSerializer
    implements StructuredSerializer<GSearchAnimeQueryData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media,
    _$GSearchAnimeQueryData_Page_media
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchAnimeQueryData_Page_media object,
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
            specifiedType:
                const FullType(GSearchAnimeQueryData_Page_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSearchAnimeQueryData_Page_media_coverImage)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaType)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaFormat)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaStatus)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.averageScore;
    if (value != null) {
      result
        ..add('averageScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSearchAnimeQueryData_Page_media_startDate)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.studios;
    if (value != null) {
      result
        ..add('studios')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSearchAnimeQueryData_Page_media_studios)));
    }
    value = object.mediaListEntry;
    if (value != null) {
      result
        ..add('mediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchAnimeQueryData_Page_media_mediaListEntry)));
    }
    return result;
  }

  @override
  GSearchAnimeQueryData_Page_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_mediaBuilder();

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
                  specifiedType:
                      const FullType(GSearchAnimeQueryData_Page_media_title))!
              as GSearchAnimeQueryData_Page_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchAnimeQueryData_Page_media_coverImage))!
              as GSearchAnimeQueryData_Page_media_coverImage);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GMediaType)) as _i2.GMediaType?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaFormat))
              as _i2.GMediaFormat?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaStatus))
              as _i2.GMediaStatus?;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'averageScore':
          result.averageScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'favourites':
          result.favourites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startDate':
          result.startDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchAnimeQueryData_Page_media_startDate))!
              as GSearchAnimeQueryData_Page_media_startDate);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSearchAnimeQueryData_Page_media_studios))!
              as GSearchAnimeQueryData_Page_media_studios);
          break;
        case 'mediaListEntry':
          result.mediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchAnimeQueryData_Page_media_mediaListEntry))!
              as GSearchAnimeQueryData_Page_media_mediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_Page_media_titleSerializer
    implements StructuredSerializer<GSearchAnimeQueryData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media_title,
    _$GSearchAnimeQueryData_Page_media_title
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchAnimeQueryData_Page_media_title object,
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
  GSearchAnimeQueryData_Page_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_media_titleBuilder();

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

class _$GSearchAnimeQueryData_Page_media_coverImageSerializer
    implements
        StructuredSerializer<GSearchAnimeQueryData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media_coverImage,
    _$GSearchAnimeQueryData_Page_media_coverImage
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchAnimeQueryData_Page_media_coverImage object,
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
  GSearchAnimeQueryData_Page_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_media_coverImageBuilder();

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
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_Page_media_startDateSerializer
    implements
        StructuredSerializer<GSearchAnimeQueryData_Page_media_startDate> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media_startDate,
    _$GSearchAnimeQueryData_Page_media_startDate
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media_startDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchAnimeQueryData_Page_media_startDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GSearchAnimeQueryData_Page_media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_media_startDateBuilder();

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
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_Page_media_studiosSerializer
    implements StructuredSerializer<GSearchAnimeQueryData_Page_media_studios> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media_studios,
    _$GSearchAnimeQueryData_Page_media_studios
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media_studios';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchAnimeQueryData_Page_media_studios object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GSearchAnimeQueryData_Page_media_studios_edges)
            ])));
    }
    return result;
  }

  @override
  GSearchAnimeQueryData_Page_media_studios deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_media_studiosBuilder();

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
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GSearchAnimeQueryData_Page_media_studios_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_Page_media_studios_edgesSerializer
    implements
        StructuredSerializer<GSearchAnimeQueryData_Page_media_studios_edges> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media_studios_edges,
    _$GSearchAnimeQueryData_Page_media_studios_edges
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media_studios_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchAnimeQueryData_Page_media_studios_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchAnimeQueryData_Page_media_studios_edges_node)));
    }
    return result;
  }

  @override
  GSearchAnimeQueryData_Page_media_studios_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_media_studios_edgesBuilder();

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
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchAnimeQueryData_Page_media_studios_edges_node))!
              as GSearchAnimeQueryData_Page_media_studios_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_Page_media_studios_edges_nodeSerializer
    implements
        StructuredSerializer<
            GSearchAnimeQueryData_Page_media_studios_edges_node> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media_studios_edges_node,
    _$GSearchAnimeQueryData_Page_media_studios_edges_node
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media_studios_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchAnimeQueryData_Page_media_studios_edges_node object,
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

    return result;
  }

  @override
  GSearchAnimeQueryData_Page_media_studios_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData_Page_media_mediaListEntrySerializer
    implements
        StructuredSerializer<GSearchAnimeQueryData_Page_media_mediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GSearchAnimeQueryData_Page_media_mediaListEntry,
    _$GSearchAnimeQueryData_Page_media_mediaListEntry
  ];
  @override
  final String wireName = 'GSearchAnimeQueryData_Page_media_mediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchAnimeQueryData_Page_media_mediaListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaListStatus)));
    }
    return result;
  }

  @override
  GSearchAnimeQueryData_Page_media_mediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchAnimeQueryData_Page_media_mediaListEntryBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaListStatus))
              as _i2.GMediaListStatus?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchAnimeQueryData extends GSearchAnimeQueryData {
  @override
  final String G__typename;
  @override
  final GSearchAnimeQueryData_Page? Page;

  factory _$GSearchAnimeQueryData(
          [void Function(GSearchAnimeQueryDataBuilder)? updates]) =>
      (new GSearchAnimeQueryDataBuilder()..update(updates))._build();

  _$GSearchAnimeQueryData._({required this.G__typename, this.Page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchAnimeQueryData', 'G__typename');
  }

  @override
  GSearchAnimeQueryData rebuild(
          void Function(GSearchAnimeQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryDataBuilder toBuilder() =>
      new GSearchAnimeQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchAnimeQueryData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GSearchAnimeQueryDataBuilder
    implements Builder<GSearchAnimeQueryData, GSearchAnimeQueryDataBuilder> {
  _$GSearchAnimeQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchAnimeQueryData_PageBuilder? _Page;
  GSearchAnimeQueryData_PageBuilder get Page =>
      _$this._Page ??= new GSearchAnimeQueryData_PageBuilder();
  set Page(GSearchAnimeQueryData_PageBuilder? Page) => _$this._Page = Page;

  GSearchAnimeQueryDataBuilder() {
    GSearchAnimeQueryData._initializeBuilder(this);
  }

  GSearchAnimeQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData;
  }

  @override
  void update(void Function(GSearchAnimeQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData build() => _build();

  _$GSearchAnimeQueryData _build() {
    _$GSearchAnimeQueryData _$result;
    try {
      _$result = _$v ??
          new _$GSearchAnimeQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchAnimeQueryData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchAnimeQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page extends GSearchAnimeQueryData_Page {
  @override
  final String G__typename;
  @override
  final GSearchAnimeQueryData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GSearchAnimeQueryData_Page_media?>? media;

  factory _$GSearchAnimeQueryData_Page(
          [void Function(GSearchAnimeQueryData_PageBuilder)? updates]) =>
      (new GSearchAnimeQueryData_PageBuilder()..update(updates))._build();

  _$GSearchAnimeQueryData_Page._(
      {required this.G__typename, this.pageInfo, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchAnimeQueryData_Page', 'G__typename');
  }

  @override
  GSearchAnimeQueryData_Page rebuild(
          void Function(GSearchAnimeQueryData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_PageBuilder toBuilder() =>
      new GSearchAnimeQueryData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchAnimeQueryData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('media', media))
        .toString();
  }
}

class GSearchAnimeQueryData_PageBuilder
    implements
        Builder<GSearchAnimeQueryData_Page, GSearchAnimeQueryData_PageBuilder> {
  _$GSearchAnimeQueryData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchAnimeQueryData_Page_pageInfoBuilder? _pageInfo;
  GSearchAnimeQueryData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GSearchAnimeQueryData_Page_pageInfoBuilder();
  set pageInfo(GSearchAnimeQueryData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GSearchAnimeQueryData_Page_media?>? _media;
  ListBuilder<GSearchAnimeQueryData_Page_media?> get media =>
      _$this._media ??= new ListBuilder<GSearchAnimeQueryData_Page_media?>();
  set media(ListBuilder<GSearchAnimeQueryData_Page_media?>? media) =>
      _$this._media = media;

  GSearchAnimeQueryData_PageBuilder() {
    GSearchAnimeQueryData_Page._initializeBuilder(this);
  }

  GSearchAnimeQueryData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page;
  }

  @override
  void update(void Function(GSearchAnimeQueryData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page build() => _build();

  _$GSearchAnimeQueryData_Page _build() {
    _$GSearchAnimeQueryData_Page _$result;
    try {
      _$result = _$v ??
          new _$GSearchAnimeQueryData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchAnimeQueryData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchAnimeQueryData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_pageInfo
    extends GSearchAnimeQueryData_Page_pageInfo {
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

  factory _$GSearchAnimeQueryData_Page_pageInfo(
          [void Function(GSearchAnimeQueryData_Page_pageInfoBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_pageInfoBuilder()..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchAnimeQueryData_Page_pageInfo', 'G__typename');
  }

  @override
  GSearchAnimeQueryData_Page_pageInfo rebuild(
          void Function(GSearchAnimeQueryData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_pageInfoBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GSearchAnimeQueryData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_pageInfoBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_pageInfo,
            GSearchAnimeQueryData_Page_pageInfoBuilder> {
  _$GSearchAnimeQueryData_Page_pageInfo? _$v;

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

  GSearchAnimeQueryData_Page_pageInfoBuilder() {
    GSearchAnimeQueryData_Page_pageInfo._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_pageInfoBuilder get _$this {
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
  void replace(GSearchAnimeQueryData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_pageInfo;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_pageInfo build() => _build();

  _$GSearchAnimeQueryData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GSearchAnimeQueryData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchAnimeQueryData_Page_pageInfo', 'G__typename'),
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media
    extends GSearchAnimeQueryData_Page_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GSearchAnimeQueryData_Page_media_title? title;
  @override
  final GSearchAnimeQueryData_Page_media_coverImage? coverImage;
  @override
  final _i2.GMediaType? type;
  @override
  final _i2.GMediaFormat? format;
  @override
  final _i2.GMediaStatus? status;
  @override
  final int? episodes;
  @override
  final int? averageScore;
  @override
  final int? favourites;
  @override
  final GSearchAnimeQueryData_Page_media_startDate? startDate;
  @override
  final BuiltList<String?>? genres;
  @override
  final GSearchAnimeQueryData_Page_media_studios? studios;
  @override
  final GSearchAnimeQueryData_Page_media_mediaListEntry? mediaListEntry;

  factory _$GSearchAnimeQueryData_Page_media(
          [void Function(GSearchAnimeQueryData_Page_mediaBuilder)? updates]) =>
      (new GSearchAnimeQueryData_Page_mediaBuilder()..update(updates))._build();

  _$GSearchAnimeQueryData_Page_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage,
      this.type,
      this.format,
      this.status,
      this.episodes,
      this.averageScore,
      this.favourites,
      this.startDate,
      this.genres,
      this.studios,
      this.mediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchAnimeQueryData_Page_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSearchAnimeQueryData_Page_media', 'id');
  }

  @override
  GSearchAnimeQueryData_Page_media rebuild(
          void Function(GSearchAnimeQueryData_Page_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_mediaBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        type == other.type &&
        format == other.format &&
        status == other.status &&
        episodes == other.episodes &&
        averageScore == other.averageScore &&
        favourites == other.favourites &&
        startDate == other.startDate &&
        genres == other.genres &&
        studios == other.studios &&
        mediaListEntry == other.mediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, averageScore.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, studios.hashCode);
    _$hash = $jc(_$hash, mediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchAnimeQueryData_Page_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('type', type)
          ..add('format', format)
          ..add('status', status)
          ..add('episodes', episodes)
          ..add('averageScore', averageScore)
          ..add('favourites', favourites)
          ..add('startDate', startDate)
          ..add('genres', genres)
          ..add('studios', studios)
          ..add('mediaListEntry', mediaListEntry))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_mediaBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media,
            GSearchAnimeQueryData_Page_mediaBuilder> {
  _$GSearchAnimeQueryData_Page_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GSearchAnimeQueryData_Page_media_titleBuilder? _title;
  GSearchAnimeQueryData_Page_media_titleBuilder get title =>
      _$this._title ??= new GSearchAnimeQueryData_Page_media_titleBuilder();
  set title(GSearchAnimeQueryData_Page_media_titleBuilder? title) =>
      _$this._title = title;

  GSearchAnimeQueryData_Page_media_coverImageBuilder? _coverImage;
  GSearchAnimeQueryData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GSearchAnimeQueryData_Page_media_coverImageBuilder();
  set coverImage(
          GSearchAnimeQueryData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  _i2.GMediaType? _type;
  _i2.GMediaType? get type => _$this._type;
  set type(_i2.GMediaType? type) => _$this._type = type;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  _i2.GMediaStatus? _status;
  _i2.GMediaStatus? get status => _$this._status;
  set status(_i2.GMediaStatus? status) => _$this._status = status;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  int? _averageScore;
  int? get averageScore => _$this._averageScore;
  set averageScore(int? averageScore) => _$this._averageScore = averageScore;

  int? _favourites;
  int? get favourites => _$this._favourites;
  set favourites(int? favourites) => _$this._favourites = favourites;

  GSearchAnimeQueryData_Page_media_startDateBuilder? _startDate;
  GSearchAnimeQueryData_Page_media_startDateBuilder get startDate =>
      _$this._startDate ??=
          new GSearchAnimeQueryData_Page_media_startDateBuilder();
  set startDate(GSearchAnimeQueryData_Page_media_startDateBuilder? startDate) =>
      _$this._startDate = startDate;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  GSearchAnimeQueryData_Page_media_studiosBuilder? _studios;
  GSearchAnimeQueryData_Page_media_studiosBuilder get studios =>
      _$this._studios ??= new GSearchAnimeQueryData_Page_media_studiosBuilder();
  set studios(GSearchAnimeQueryData_Page_media_studiosBuilder? studios) =>
      _$this._studios = studios;

  GSearchAnimeQueryData_Page_media_mediaListEntryBuilder? _mediaListEntry;
  GSearchAnimeQueryData_Page_media_mediaListEntryBuilder get mediaListEntry =>
      _$this._mediaListEntry ??=
          new GSearchAnimeQueryData_Page_media_mediaListEntryBuilder();
  set mediaListEntry(
          GSearchAnimeQueryData_Page_media_mediaListEntryBuilder?
              mediaListEntry) =>
      _$this._mediaListEntry = mediaListEntry;

  GSearchAnimeQueryData_Page_mediaBuilder() {
    GSearchAnimeQueryData_Page_media._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _type = $v.type;
      _format = $v.format;
      _status = $v.status;
      _episodes = $v.episodes;
      _averageScore = $v.averageScore;
      _favourites = $v.favourites;
      _startDate = $v.startDate?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _studios = $v.studios?.toBuilder();
      _mediaListEntry = $v.mediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media;
  }

  @override
  void update(void Function(GSearchAnimeQueryData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media build() => _build();

  _$GSearchAnimeQueryData_Page_media _build() {
    _$GSearchAnimeQueryData_Page_media _$result;
    try {
      _$result = _$v ??
          new _$GSearchAnimeQueryData_Page_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSearchAnimeQueryData_Page_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSearchAnimeQueryData_Page_media', 'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              type: type,
              format: format,
              status: status,
              episodes: episodes,
              averageScore: averageScore,
              favourites: favourites,
              startDate: _startDate?.build(),
              genres: _genres?.build(),
              studios: _studios?.build(),
              mediaListEntry: _mediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();

        _$failedField = 'startDate';
        _startDate?.build();
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'studios';
        _studios?.build();
        _$failedField = 'mediaListEntry';
        _mediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchAnimeQueryData_Page_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media_title
    extends GSearchAnimeQueryData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GSearchAnimeQueryData_Page_media_title(
          [void Function(GSearchAnimeQueryData_Page_media_titleBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_media_titleBuilder()..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchAnimeQueryData_Page_media_title', 'G__typename');
  }

  @override
  GSearchAnimeQueryData_Page_media_title rebuild(
          void Function(GSearchAnimeQueryData_Page_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_media_titleBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media_title &&
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
            r'GSearchAnimeQueryData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_media_titleBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media_title,
            GSearchAnimeQueryData_Page_media_titleBuilder> {
  _$GSearchAnimeQueryData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GSearchAnimeQueryData_Page_media_titleBuilder() {
    GSearchAnimeQueryData_Page_media_title._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media_title;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media_title build() => _build();

  _$GSearchAnimeQueryData_Page_media_title _build() {
    final _$result = _$v ??
        new _$GSearchAnimeQueryData_Page_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchAnimeQueryData_Page_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media_coverImage
    extends GSearchAnimeQueryData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;
  @override
  final String? color;

  factory _$GSearchAnimeQueryData_Page_media_coverImage(
          [void Function(GSearchAnimeQueryData_Page_media_coverImageBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_media_coverImage._(
      {required this.G__typename, this.large, this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchAnimeQueryData_Page_media_coverImage', 'G__typename');
  }

  @override
  GSearchAnimeQueryData_Page_media_coverImage rebuild(
          void Function(GSearchAnimeQueryData_Page_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_media_coverImageBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media_coverImage &&
        G__typename == other.G__typename &&
        large == other.large &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchAnimeQueryData_Page_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('large', large)
          ..add('color', color))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_media_coverImageBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media_coverImage,
            GSearchAnimeQueryData_Page_media_coverImageBuilder> {
  _$GSearchAnimeQueryData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GSearchAnimeQueryData_Page_media_coverImageBuilder() {
    GSearchAnimeQueryData_Page_media_coverImage._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media_coverImage;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media_coverImage build() => _build();

  _$GSearchAnimeQueryData_Page_media_coverImage _build() {
    final _$result = _$v ??
        new _$GSearchAnimeQueryData_Page_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchAnimeQueryData_Page_media_coverImage', 'G__typename'),
            large: large,
            color: color);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media_startDate
    extends GSearchAnimeQueryData_Page_media_startDate {
  @override
  final String G__typename;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$GSearchAnimeQueryData_Page_media_startDate(
          [void Function(GSearchAnimeQueryData_Page_media_startDateBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_media_startDateBuilder()..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_media_startDate._(
      {required this.G__typename, this.year, this.month, this.day})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchAnimeQueryData_Page_media_startDate', 'G__typename');
  }

  @override
  GSearchAnimeQueryData_Page_media_startDate rebuild(
          void Function(GSearchAnimeQueryData_Page_media_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_media_startDateBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_media_startDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media_startDate &&
        G__typename == other.G__typename &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchAnimeQueryData_Page_media_startDate')
          ..add('G__typename', G__typename)
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_media_startDateBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media_startDate,
            GSearchAnimeQueryData_Page_media_startDateBuilder> {
  _$GSearchAnimeQueryData_Page_media_startDate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  GSearchAnimeQueryData_Page_media_startDateBuilder() {
    GSearchAnimeQueryData_Page_media_startDate._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_media_startDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _year = $v.year;
      _month = $v.month;
      _day = $v.day;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page_media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media_startDate;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_media_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media_startDate build() => _build();

  _$GSearchAnimeQueryData_Page_media_startDate _build() {
    final _$result = _$v ??
        new _$GSearchAnimeQueryData_Page_media_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchAnimeQueryData_Page_media_startDate', 'G__typename'),
            year: year,
            month: month,
            day: day);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media_studios
    extends GSearchAnimeQueryData_Page_media_studios {
  @override
  final String G__typename;
  @override
  final BuiltList<GSearchAnimeQueryData_Page_media_studios_edges?>? edges;

  factory _$GSearchAnimeQueryData_Page_media_studios(
          [void Function(GSearchAnimeQueryData_Page_media_studiosBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_media_studiosBuilder()..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_media_studios._(
      {required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchAnimeQueryData_Page_media_studios', 'G__typename');
  }

  @override
  GSearchAnimeQueryData_Page_media_studios rebuild(
          void Function(GSearchAnimeQueryData_Page_media_studiosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_media_studiosBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_media_studiosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media_studios &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchAnimeQueryData_Page_media_studios')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_media_studiosBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media_studios,
            GSearchAnimeQueryData_Page_media_studiosBuilder> {
  _$GSearchAnimeQueryData_Page_media_studios? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GSearchAnimeQueryData_Page_media_studios_edges?>? _edges;
  ListBuilder<GSearchAnimeQueryData_Page_media_studios_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GSearchAnimeQueryData_Page_media_studios_edges?>();
  set edges(
          ListBuilder<GSearchAnimeQueryData_Page_media_studios_edges?>?
              edges) =>
      _$this._edges = edges;

  GSearchAnimeQueryData_Page_media_studiosBuilder() {
    GSearchAnimeQueryData_Page_media_studios._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_media_studiosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page_media_studios other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media_studios;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_media_studiosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media_studios build() => _build();

  _$GSearchAnimeQueryData_Page_media_studios _build() {
    _$GSearchAnimeQueryData_Page_media_studios _$result;
    try {
      _$result = _$v ??
          new _$GSearchAnimeQueryData_Page_media_studios._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSearchAnimeQueryData_Page_media_studios', 'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchAnimeQueryData_Page_media_studios',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media_studios_edges
    extends GSearchAnimeQueryData_Page_media_studios_edges {
  @override
  final String G__typename;
  @override
  final GSearchAnimeQueryData_Page_media_studios_edges_node? node;

  factory _$GSearchAnimeQueryData_Page_media_studios_edges(
          [void Function(GSearchAnimeQueryData_Page_media_studios_edgesBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_media_studios_edgesBuilder()
            ..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_media_studios_edges._(
      {required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchAnimeQueryData_Page_media_studios_edges', 'G__typename');
  }

  @override
  GSearchAnimeQueryData_Page_media_studios_edges rebuild(
          void Function(GSearchAnimeQueryData_Page_media_studios_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_media_studios_edgesBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_media_studios_edgesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media_studios_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchAnimeQueryData_Page_media_studios_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_media_studios_edgesBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media_studios_edges,
            GSearchAnimeQueryData_Page_media_studios_edgesBuilder> {
  _$GSearchAnimeQueryData_Page_media_studios_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder? _node;
  GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder get node =>
      _$this._node ??=
          new GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder();
  set node(GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder? node) =>
      _$this._node = node;

  GSearchAnimeQueryData_Page_media_studios_edgesBuilder() {
    GSearchAnimeQueryData_Page_media_studios_edges._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_media_studios_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page_media_studios_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media_studios_edges;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_media_studios_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media_studios_edges build() => _build();

  _$GSearchAnimeQueryData_Page_media_studios_edges _build() {
    _$GSearchAnimeQueryData_Page_media_studios_edges _$result;
    try {
      _$result = _$v ??
          new _$GSearchAnimeQueryData_Page_media_studios_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSearchAnimeQueryData_Page_media_studios_edges',
                  'G__typename'),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchAnimeQueryData_Page_media_studios_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media_studios_edges_node
    extends GSearchAnimeQueryData_Page_media_studios_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GSearchAnimeQueryData_Page_media_studios_edges_node(
          [void Function(
                  GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_media_studios_edges_node._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchAnimeQueryData_Page_media_studios_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSearchAnimeQueryData_Page_media_studios_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSearchAnimeQueryData_Page_media_studios_edges_node', 'name');
  }

  @override
  GSearchAnimeQueryData_Page_media_studios_edges_node rebuild(
          void Function(
                  GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media_studios_edges_node &&
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
            r'GSearchAnimeQueryData_Page_media_studios_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media_studios_edges_node,
            GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder> {
  _$GSearchAnimeQueryData_Page_media_studios_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder() {
    GSearchAnimeQueryData_Page_media_studios_edges_node._initializeBuilder(
        this);
  }

  GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder get _$this {
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
  void replace(GSearchAnimeQueryData_Page_media_studios_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media_studios_edges_node;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media_studios_edges_node build() => _build();

  _$GSearchAnimeQueryData_Page_media_studios_edges_node _build() {
    final _$result = _$v ??
        new _$GSearchAnimeQueryData_Page_media_studios_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchAnimeQueryData_Page_media_studios_edges_node',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GSearchAnimeQueryData_Page_media_studios_edges_node', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GSearchAnimeQueryData_Page_media_studios_edges_node',
                'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GSearchAnimeQueryData_Page_media_mediaListEntry
    extends GSearchAnimeQueryData_Page_media_mediaListEntry {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i2.GMediaListStatus? status;

  factory _$GSearchAnimeQueryData_Page_media_mediaListEntry(
          [void Function(
                  GSearchAnimeQueryData_Page_media_mediaListEntryBuilder)?
              updates]) =>
      (new GSearchAnimeQueryData_Page_media_mediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GSearchAnimeQueryData_Page_media_mediaListEntry._(
      {required this.G__typename, required this.id, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchAnimeQueryData_Page_media_mediaListEntry', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSearchAnimeQueryData_Page_media_mediaListEntry', 'id');
  }

  @override
  GSearchAnimeQueryData_Page_media_mediaListEntry rebuild(
          void Function(GSearchAnimeQueryData_Page_media_mediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchAnimeQueryData_Page_media_mediaListEntryBuilder toBuilder() =>
      new GSearchAnimeQueryData_Page_media_mediaListEntryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchAnimeQueryData_Page_media_mediaListEntry &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchAnimeQueryData_Page_media_mediaListEntry')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status))
        .toString();
  }
}

class GSearchAnimeQueryData_Page_media_mediaListEntryBuilder
    implements
        Builder<GSearchAnimeQueryData_Page_media_mediaListEntry,
            GSearchAnimeQueryData_Page_media_mediaListEntryBuilder> {
  _$GSearchAnimeQueryData_Page_media_mediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GMediaListStatus? _status;
  _i2.GMediaListStatus? get status => _$this._status;
  set status(_i2.GMediaListStatus? status) => _$this._status = status;

  GSearchAnimeQueryData_Page_media_mediaListEntryBuilder() {
    GSearchAnimeQueryData_Page_media_mediaListEntry._initializeBuilder(this);
  }

  GSearchAnimeQueryData_Page_media_mediaListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchAnimeQueryData_Page_media_mediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchAnimeQueryData_Page_media_mediaListEntry;
  }

  @override
  void update(
      void Function(GSearchAnimeQueryData_Page_media_mediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchAnimeQueryData_Page_media_mediaListEntry build() => _build();

  _$GSearchAnimeQueryData_Page_media_mediaListEntry _build() {
    final _$result = _$v ??
        new _$GSearchAnimeQueryData_Page_media_mediaListEntry._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchAnimeQueryData_Page_media_mediaListEntry',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GSearchAnimeQueryData_Page_media_mediaListEntry', 'id'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
