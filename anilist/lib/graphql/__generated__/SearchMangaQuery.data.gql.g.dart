// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchMangaQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchMangaQueryData> _$gSearchMangaQueryDataSerializer =
    new _$GSearchMangaQueryDataSerializer();
Serializer<GSearchMangaQueryData_Page> _$gSearchMangaQueryDataPageSerializer =
    new _$GSearchMangaQueryData_PageSerializer();
Serializer<GSearchMangaQueryData_Page_pageInfo>
    _$gSearchMangaQueryDataPagePageInfoSerializer =
    new _$GSearchMangaQueryData_Page_pageInfoSerializer();
Serializer<GSearchMangaQueryData_Page_media>
    _$gSearchMangaQueryDataPageMediaSerializer =
    new _$GSearchMangaQueryData_Page_mediaSerializer();
Serializer<GSearchMangaQueryData_Page_media_title>
    _$gSearchMangaQueryDataPageMediaTitleSerializer =
    new _$GSearchMangaQueryData_Page_media_titleSerializer();
Serializer<GSearchMangaQueryData_Page_media_coverImage>
    _$gSearchMangaQueryDataPageMediaCoverImageSerializer =
    new _$GSearchMangaQueryData_Page_media_coverImageSerializer();
Serializer<GSearchMangaQueryData_Page_media_startDate>
    _$gSearchMangaQueryDataPageMediaStartDateSerializer =
    new _$GSearchMangaQueryData_Page_media_startDateSerializer();
Serializer<GSearchMangaQueryData_Page_media_staff>
    _$gSearchMangaQueryDataPageMediaStaffSerializer =
    new _$GSearchMangaQueryData_Page_media_staffSerializer();
Serializer<GSearchMangaQueryData_Page_media_staff_edges>
    _$gSearchMangaQueryDataPageMediaStaffEdgesSerializer =
    new _$GSearchMangaQueryData_Page_media_staff_edgesSerializer();
Serializer<GSearchMangaQueryData_Page_media_staff_edges_node>
    _$gSearchMangaQueryDataPageMediaStaffEdgesNodeSerializer =
    new _$GSearchMangaQueryData_Page_media_staff_edges_nodeSerializer();
Serializer<GSearchMangaQueryData_Page_media_staff_edges_node_name>
    _$gSearchMangaQueryDataPageMediaStaffEdgesNodeNameSerializer =
    new _$GSearchMangaQueryData_Page_media_staff_edges_node_nameSerializer();
Serializer<GSearchMangaQueryData_Page_media_mediaListEntry>
    _$gSearchMangaQueryDataPageMediaMediaListEntrySerializer =
    new _$GSearchMangaQueryData_Page_media_mediaListEntrySerializer();

class _$GSearchMangaQueryDataSerializer
    implements StructuredSerializer<GSearchMangaQueryData> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData,
    _$GSearchMangaQueryData
  ];
  @override
  final String wireName = 'GSearchMangaQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchMangaQueryData object,
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
            specifiedType: const FullType(GSearchMangaQueryData_Page)));
    }
    return result;
  }

  @override
  GSearchMangaQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryDataBuilder();

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
                  specifiedType: const FullType(GSearchMangaQueryData_Page))!
              as GSearchMangaQueryData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryData_PageSerializer
    implements StructuredSerializer<GSearchMangaQueryData_Page> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page,
    _$GSearchMangaQueryData_Page
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchMangaQueryData_Page object,
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
                const FullType(GSearchMangaQueryData_Page_pageInfo)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GSearchMangaQueryData_Page_media)
            ])));
    }
    return result;
  }

  @override
  GSearchMangaQueryData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_PageBuilder();

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
                      const FullType(GSearchMangaQueryData_Page_pageInfo))!
              as GSearchMangaQueryData_Page_pageInfo);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GSearchMangaQueryData_Page_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryData_Page_pageInfoSerializer
    implements StructuredSerializer<GSearchMangaQueryData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_pageInfo,
    _$GSearchMangaQueryData_Page_pageInfo
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchMangaQueryData_Page_pageInfo object,
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
  GSearchMangaQueryData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_pageInfoBuilder();

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

class _$GSearchMangaQueryData_Page_mediaSerializer
    implements StructuredSerializer<GSearchMangaQueryData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media,
    _$GSearchMangaQueryData_Page_media
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchMangaQueryData_Page_media object,
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
                const FullType(GSearchMangaQueryData_Page_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSearchMangaQueryData_Page_media_coverImage)));
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
    value = object.chapters;
    if (value != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumes;
    if (value != null) {
      result
        ..add('volumes')
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
                const FullType(GSearchMangaQueryData_Page_media_startDate)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.staff;
    if (value != null) {
      result
        ..add('staff')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSearchMangaQueryData_Page_media_staff)));
    }
    value = object.mediaListEntry;
    if (value != null) {
      result
        ..add('mediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchMangaQueryData_Page_media_mediaListEntry)));
    }
    return result;
  }

  @override
  GSearchMangaQueryData_Page_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_mediaBuilder();

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
                      const FullType(GSearchMangaQueryData_Page_media_title))!
              as GSearchMangaQueryData_Page_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchMangaQueryData_Page_media_coverImage))!
              as GSearchMangaQueryData_Page_media_coverImage);
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
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumes':
          result.volumes = serializers.deserialize(value,
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
                      GSearchMangaQueryData_Page_media_startDate))!
              as GSearchMangaQueryData_Page_media_startDate);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSearchMangaQueryData_Page_media_staff))!
              as GSearchMangaQueryData_Page_media_staff);
          break;
        case 'mediaListEntry':
          result.mediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchMangaQueryData_Page_media_mediaListEntry))!
              as GSearchMangaQueryData_Page_media_mediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryData_Page_media_titleSerializer
    implements StructuredSerializer<GSearchMangaQueryData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_title,
    _$GSearchMangaQueryData_Page_media_title
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchMangaQueryData_Page_media_title object,
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
  GSearchMangaQueryData_Page_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_media_titleBuilder();

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

class _$GSearchMangaQueryData_Page_media_coverImageSerializer
    implements
        StructuredSerializer<GSearchMangaQueryData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_coverImage,
    _$GSearchMangaQueryData_Page_media_coverImage
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchMangaQueryData_Page_media_coverImage object,
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
    return result;
  }

  @override
  GSearchMangaQueryData_Page_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_media_coverImageBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryData_Page_media_startDateSerializer
    implements
        StructuredSerializer<GSearchMangaQueryData_Page_media_startDate> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_startDate,
    _$GSearchMangaQueryData_Page_media_startDate
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media_startDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchMangaQueryData_Page_media_startDate object,
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
  GSearchMangaQueryData_Page_media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_media_startDateBuilder();

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

class _$GSearchMangaQueryData_Page_media_staffSerializer
    implements StructuredSerializer<GSearchMangaQueryData_Page_media_staff> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_staff,
    _$GSearchMangaQueryData_Page_media_staff
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media_staff';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchMangaQueryData_Page_media_staff object,
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
                  GSearchMangaQueryData_Page_media_staff_edges)
            ])));
    }
    return result;
  }

  @override
  GSearchMangaQueryData_Page_media_staff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_media_staffBuilder();

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
                    GSearchMangaQueryData_Page_media_staff_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryData_Page_media_staff_edgesSerializer
    implements
        StructuredSerializer<GSearchMangaQueryData_Page_media_staff_edges> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_staff_edges,
    _$GSearchMangaQueryData_Page_media_staff_edges
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media_staff_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchMangaQueryData_Page_media_staff_edges object,
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
                GSearchMangaQueryData_Page_media_staff_edges_node)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_media_staff_edgesBuilder();

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
                      GSearchMangaQueryData_Page_media_staff_edges_node))!
              as GSearchMangaQueryData_Page_media_staff_edges_node);
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryData_Page_media_staff_edges_nodeSerializer
    implements
        StructuredSerializer<
            GSearchMangaQueryData_Page_media_staff_edges_node> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_staff_edges_node,
    _$GSearchMangaQueryData_Page_media_staff_edges_node
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media_staff_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchMangaQueryData_Page_media_staff_edges_node object,
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
                GSearchMangaQueryData_Page_media_staff_edges_node_name)));
    }
    return result;
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder();

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
                      GSearchMangaQueryData_Page_media_staff_edges_node_name))!
              as GSearchMangaQueryData_Page_media_staff_edges_node_name);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryData_Page_media_staff_edges_node_nameSerializer
    implements
        StructuredSerializer<
            GSearchMangaQueryData_Page_media_staff_edges_node_name> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_staff_edges_node_name,
    _$GSearchMangaQueryData_Page_media_staff_edges_node_name
  ];
  @override
  final String wireName =
      'GSearchMangaQueryData_Page_media_staff_edges_node_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchMangaQueryData_Page_media_staff_edges_node_name object,
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
  GSearchMangaQueryData_Page_media_staff_edges_node_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder();

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

class _$GSearchMangaQueryData_Page_media_mediaListEntrySerializer
    implements
        StructuredSerializer<GSearchMangaQueryData_Page_media_mediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryData_Page_media_mediaListEntry,
    _$GSearchMangaQueryData_Page_media_mediaListEntry
  ];
  @override
  final String wireName = 'GSearchMangaQueryData_Page_media_mediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchMangaQueryData_Page_media_mediaListEntry object,
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
  GSearchMangaQueryData_Page_media_mediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryData_Page_media_mediaListEntryBuilder();

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

class _$GSearchMangaQueryData extends GSearchMangaQueryData {
  @override
  final String G__typename;
  @override
  final GSearchMangaQueryData_Page? Page;

  factory _$GSearchMangaQueryData(
          [void Function(GSearchMangaQueryDataBuilder)? updates]) =>
      (new GSearchMangaQueryDataBuilder()..update(updates))._build();

  _$GSearchMangaQueryData._({required this.G__typename, this.Page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchMangaQueryData', 'G__typename');
  }

  @override
  GSearchMangaQueryData rebuild(
          void Function(GSearchMangaQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryDataBuilder toBuilder() =>
      new GSearchMangaQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData &&
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
    return (newBuiltValueToStringHelper(r'GSearchMangaQueryData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GSearchMangaQueryDataBuilder
    implements Builder<GSearchMangaQueryData, GSearchMangaQueryDataBuilder> {
  _$GSearchMangaQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchMangaQueryData_PageBuilder? _Page;
  GSearchMangaQueryData_PageBuilder get Page =>
      _$this._Page ??= new GSearchMangaQueryData_PageBuilder();
  set Page(GSearchMangaQueryData_PageBuilder? Page) => _$this._Page = Page;

  GSearchMangaQueryDataBuilder() {
    GSearchMangaQueryData._initializeBuilder(this);
  }

  GSearchMangaQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData;
  }

  @override
  void update(void Function(GSearchMangaQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData build() => _build();

  _$GSearchMangaQueryData _build() {
    _$GSearchMangaQueryData _$result;
    try {
      _$result = _$v ??
          new _$GSearchMangaQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchMangaQueryData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchMangaQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page extends GSearchMangaQueryData_Page {
  @override
  final String G__typename;
  @override
  final GSearchMangaQueryData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GSearchMangaQueryData_Page_media?>? media;

  factory _$GSearchMangaQueryData_Page(
          [void Function(GSearchMangaQueryData_PageBuilder)? updates]) =>
      (new GSearchMangaQueryData_PageBuilder()..update(updates))._build();

  _$GSearchMangaQueryData_Page._(
      {required this.G__typename, this.pageInfo, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchMangaQueryData_Page', 'G__typename');
  }

  @override
  GSearchMangaQueryData_Page rebuild(
          void Function(GSearchMangaQueryData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_PageBuilder toBuilder() =>
      new GSearchMangaQueryData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page &&
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
    return (newBuiltValueToStringHelper(r'GSearchMangaQueryData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('media', media))
        .toString();
  }
}

class GSearchMangaQueryData_PageBuilder
    implements
        Builder<GSearchMangaQueryData_Page, GSearchMangaQueryData_PageBuilder> {
  _$GSearchMangaQueryData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchMangaQueryData_Page_pageInfoBuilder? _pageInfo;
  GSearchMangaQueryData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GSearchMangaQueryData_Page_pageInfoBuilder();
  set pageInfo(GSearchMangaQueryData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GSearchMangaQueryData_Page_media?>? _media;
  ListBuilder<GSearchMangaQueryData_Page_media?> get media =>
      _$this._media ??= new ListBuilder<GSearchMangaQueryData_Page_media?>();
  set media(ListBuilder<GSearchMangaQueryData_Page_media?>? media) =>
      _$this._media = media;

  GSearchMangaQueryData_PageBuilder() {
    GSearchMangaQueryData_Page._initializeBuilder(this);
  }

  GSearchMangaQueryData_PageBuilder get _$this {
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
  void replace(GSearchMangaQueryData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page;
  }

  @override
  void update(void Function(GSearchMangaQueryData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page build() => _build();

  _$GSearchMangaQueryData_Page _build() {
    _$GSearchMangaQueryData_Page _$result;
    try {
      _$result = _$v ??
          new _$GSearchMangaQueryData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchMangaQueryData_Page', 'G__typename'),
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
            r'GSearchMangaQueryData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_pageInfo
    extends GSearchMangaQueryData_Page_pageInfo {
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

  factory _$GSearchMangaQueryData_Page_pageInfo(
          [void Function(GSearchMangaQueryData_Page_pageInfoBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_pageInfoBuilder()..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchMangaQueryData_Page_pageInfo', 'G__typename');
  }

  @override
  GSearchMangaQueryData_Page_pageInfo rebuild(
          void Function(GSearchMangaQueryData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_pageInfoBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GSearchMangaQueryData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GSearchMangaQueryData_Page_pageInfoBuilder
    implements
        Builder<GSearchMangaQueryData_Page_pageInfo,
            GSearchMangaQueryData_Page_pageInfoBuilder> {
  _$GSearchMangaQueryData_Page_pageInfo? _$v;

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

  GSearchMangaQueryData_Page_pageInfoBuilder() {
    GSearchMangaQueryData_Page_pageInfo._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_pageInfoBuilder get _$this {
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
  void replace(GSearchMangaQueryData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_pageInfo;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_pageInfo build() => _build();

  _$GSearchMangaQueryData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GSearchMangaQueryData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchMangaQueryData_Page_pageInfo', 'G__typename'),
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media
    extends GSearchMangaQueryData_Page_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GSearchMangaQueryData_Page_media_title? title;
  @override
  final GSearchMangaQueryData_Page_media_coverImage? coverImage;
  @override
  final _i2.GMediaType? type;
  @override
  final _i2.GMediaFormat? format;
  @override
  final int? chapters;
  @override
  final int? volumes;
  @override
  final int? averageScore;
  @override
  final int? favourites;
  @override
  final GSearchMangaQueryData_Page_media_startDate? startDate;
  @override
  final BuiltList<String?>? genres;
  @override
  final GSearchMangaQueryData_Page_media_staff? staff;
  @override
  final GSearchMangaQueryData_Page_media_mediaListEntry? mediaListEntry;

  factory _$GSearchMangaQueryData_Page_media(
          [void Function(GSearchMangaQueryData_Page_mediaBuilder)? updates]) =>
      (new GSearchMangaQueryData_Page_mediaBuilder()..update(updates))._build();

  _$GSearchMangaQueryData_Page_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage,
      this.type,
      this.format,
      this.chapters,
      this.volumes,
      this.averageScore,
      this.favourites,
      this.startDate,
      this.genres,
      this.staff,
      this.mediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchMangaQueryData_Page_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSearchMangaQueryData_Page_media', 'id');
  }

  @override
  GSearchMangaQueryData_Page_media rebuild(
          void Function(GSearchMangaQueryData_Page_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_mediaBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        type == other.type &&
        format == other.format &&
        chapters == other.chapters &&
        volumes == other.volumes &&
        averageScore == other.averageScore &&
        favourites == other.favourites &&
        startDate == other.startDate &&
        genres == other.genres &&
        staff == other.staff &&
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
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, volumes.hashCode);
    _$hash = $jc(_$hash, averageScore.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, staff.hashCode);
    _$hash = $jc(_$hash, mediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchMangaQueryData_Page_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('type', type)
          ..add('format', format)
          ..add('chapters', chapters)
          ..add('volumes', volumes)
          ..add('averageScore', averageScore)
          ..add('favourites', favourites)
          ..add('startDate', startDate)
          ..add('genres', genres)
          ..add('staff', staff)
          ..add('mediaListEntry', mediaListEntry))
        .toString();
  }
}

class GSearchMangaQueryData_Page_mediaBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media,
            GSearchMangaQueryData_Page_mediaBuilder> {
  _$GSearchMangaQueryData_Page_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GSearchMangaQueryData_Page_media_titleBuilder? _title;
  GSearchMangaQueryData_Page_media_titleBuilder get title =>
      _$this._title ??= new GSearchMangaQueryData_Page_media_titleBuilder();
  set title(GSearchMangaQueryData_Page_media_titleBuilder? title) =>
      _$this._title = title;

  GSearchMangaQueryData_Page_media_coverImageBuilder? _coverImage;
  GSearchMangaQueryData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GSearchMangaQueryData_Page_media_coverImageBuilder();
  set coverImage(
          GSearchMangaQueryData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  _i2.GMediaType? _type;
  _i2.GMediaType? get type => _$this._type;
  set type(_i2.GMediaType? type) => _$this._type = type;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  int? _volumes;
  int? get volumes => _$this._volumes;
  set volumes(int? volumes) => _$this._volumes = volumes;

  int? _averageScore;
  int? get averageScore => _$this._averageScore;
  set averageScore(int? averageScore) => _$this._averageScore = averageScore;

  int? _favourites;
  int? get favourites => _$this._favourites;
  set favourites(int? favourites) => _$this._favourites = favourites;

  GSearchMangaQueryData_Page_media_startDateBuilder? _startDate;
  GSearchMangaQueryData_Page_media_startDateBuilder get startDate =>
      _$this._startDate ??=
          new GSearchMangaQueryData_Page_media_startDateBuilder();
  set startDate(GSearchMangaQueryData_Page_media_startDateBuilder? startDate) =>
      _$this._startDate = startDate;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  GSearchMangaQueryData_Page_media_staffBuilder? _staff;
  GSearchMangaQueryData_Page_media_staffBuilder get staff =>
      _$this._staff ??= new GSearchMangaQueryData_Page_media_staffBuilder();
  set staff(GSearchMangaQueryData_Page_media_staffBuilder? staff) =>
      _$this._staff = staff;

  GSearchMangaQueryData_Page_media_mediaListEntryBuilder? _mediaListEntry;
  GSearchMangaQueryData_Page_media_mediaListEntryBuilder get mediaListEntry =>
      _$this._mediaListEntry ??=
          new GSearchMangaQueryData_Page_media_mediaListEntryBuilder();
  set mediaListEntry(
          GSearchMangaQueryData_Page_media_mediaListEntryBuilder?
              mediaListEntry) =>
      _$this._mediaListEntry = mediaListEntry;

  GSearchMangaQueryData_Page_mediaBuilder() {
    GSearchMangaQueryData_Page_media._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _type = $v.type;
      _format = $v.format;
      _chapters = $v.chapters;
      _volumes = $v.volumes;
      _averageScore = $v.averageScore;
      _favourites = $v.favourites;
      _startDate = $v.startDate?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _staff = $v.staff?.toBuilder();
      _mediaListEntry = $v.mediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData_Page_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media;
  }

  @override
  void update(void Function(GSearchMangaQueryData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media build() => _build();

  _$GSearchMangaQueryData_Page_media _build() {
    _$GSearchMangaQueryData_Page_media _$result;
    try {
      _$result = _$v ??
          new _$GSearchMangaQueryData_Page_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSearchMangaQueryData_Page_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSearchMangaQueryData_Page_media', 'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              type: type,
              format: format,
              chapters: chapters,
              volumes: volumes,
              averageScore: averageScore,
              favourites: favourites,
              startDate: _startDate?.build(),
              genres: _genres?.build(),
              staff: _staff?.build(),
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
        _$failedField = 'staff';
        _staff?.build();
        _$failedField = 'mediaListEntry';
        _mediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchMangaQueryData_Page_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_title
    extends GSearchMangaQueryData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GSearchMangaQueryData_Page_media_title(
          [void Function(GSearchMangaQueryData_Page_media_titleBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_titleBuilder()..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchMangaQueryData_Page_media_title', 'G__typename');
  }

  @override
  GSearchMangaQueryData_Page_media_title rebuild(
          void Function(GSearchMangaQueryData_Page_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_titleBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_title &&
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
            r'GSearchMangaQueryData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_titleBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_title,
            GSearchMangaQueryData_Page_media_titleBuilder> {
  _$GSearchMangaQueryData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GSearchMangaQueryData_Page_media_titleBuilder() {
    GSearchMangaQueryData_Page_media_title._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData_Page_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_title;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_title build() => _build();

  _$GSearchMangaQueryData_Page_media_title _build() {
    final _$result = _$v ??
        new _$GSearchMangaQueryData_Page_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchMangaQueryData_Page_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_coverImage
    extends GSearchMangaQueryData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GSearchMangaQueryData_Page_media_coverImage(
          [void Function(GSearchMangaQueryData_Page_media_coverImageBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_coverImage._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchMangaQueryData_Page_media_coverImage', 'G__typename');
  }

  @override
  GSearchMangaQueryData_Page_media_coverImage rebuild(
          void Function(GSearchMangaQueryData_Page_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_coverImageBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_coverImage &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchMangaQueryData_Page_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_coverImageBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_coverImage,
            GSearchMangaQueryData_Page_media_coverImageBuilder> {
  _$GSearchMangaQueryData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GSearchMangaQueryData_Page_media_coverImageBuilder() {
    GSearchMangaQueryData_Page_media_coverImage._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData_Page_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_coverImage;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_coverImage build() => _build();

  _$GSearchMangaQueryData_Page_media_coverImage _build() {
    final _$result = _$v ??
        new _$GSearchMangaQueryData_Page_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchMangaQueryData_Page_media_coverImage', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_startDate
    extends GSearchMangaQueryData_Page_media_startDate {
  @override
  final String G__typename;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$GSearchMangaQueryData_Page_media_startDate(
          [void Function(GSearchMangaQueryData_Page_media_startDateBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_startDateBuilder()..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_startDate._(
      {required this.G__typename, this.year, this.month, this.day})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchMangaQueryData_Page_media_startDate', 'G__typename');
  }

  @override
  GSearchMangaQueryData_Page_media_startDate rebuild(
          void Function(GSearchMangaQueryData_Page_media_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_startDateBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_startDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_startDate &&
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
            r'GSearchMangaQueryData_Page_media_startDate')
          ..add('G__typename', G__typename)
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_startDateBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_startDate,
            GSearchMangaQueryData_Page_media_startDateBuilder> {
  _$GSearchMangaQueryData_Page_media_startDate? _$v;

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

  GSearchMangaQueryData_Page_media_startDateBuilder() {
    GSearchMangaQueryData_Page_media_startDate._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_media_startDateBuilder get _$this {
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
  void replace(GSearchMangaQueryData_Page_media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_startDate;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_media_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_startDate build() => _build();

  _$GSearchMangaQueryData_Page_media_startDate _build() {
    final _$result = _$v ??
        new _$GSearchMangaQueryData_Page_media_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchMangaQueryData_Page_media_startDate', 'G__typename'),
            year: year,
            month: month,
            day: day);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_staff
    extends GSearchMangaQueryData_Page_media_staff {
  @override
  final String G__typename;
  @override
  final BuiltList<GSearchMangaQueryData_Page_media_staff_edges?>? edges;

  factory _$GSearchMangaQueryData_Page_media_staff(
          [void Function(GSearchMangaQueryData_Page_media_staffBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_staffBuilder()..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_staff._(
      {required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchMangaQueryData_Page_media_staff', 'G__typename');
  }

  @override
  GSearchMangaQueryData_Page_media_staff rebuild(
          void Function(GSearchMangaQueryData_Page_media_staffBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_staffBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_staffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_staff &&
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
            r'GSearchMangaQueryData_Page_media_staff')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_staffBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_staff,
            GSearchMangaQueryData_Page_media_staffBuilder> {
  _$GSearchMangaQueryData_Page_media_staff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GSearchMangaQueryData_Page_media_staff_edges?>? _edges;
  ListBuilder<GSearchMangaQueryData_Page_media_staff_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GSearchMangaQueryData_Page_media_staff_edges?>();
  set edges(
          ListBuilder<GSearchMangaQueryData_Page_media_staff_edges?>? edges) =>
      _$this._edges = edges;

  GSearchMangaQueryData_Page_media_staffBuilder() {
    GSearchMangaQueryData_Page_media_staff._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_media_staffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData_Page_media_staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_staff;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_media_staffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_staff build() => _build();

  _$GSearchMangaQueryData_Page_media_staff _build() {
    _$GSearchMangaQueryData_Page_media_staff _$result;
    try {
      _$result = _$v ??
          new _$GSearchMangaQueryData_Page_media_staff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSearchMangaQueryData_Page_media_staff', 'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchMangaQueryData_Page_media_staff',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_staff_edges
    extends GSearchMangaQueryData_Page_media_staff_edges {
  @override
  final String G__typename;
  @override
  final GSearchMangaQueryData_Page_media_staff_edges_node? node;
  @override
  final String? role;

  factory _$GSearchMangaQueryData_Page_media_staff_edges(
          [void Function(GSearchMangaQueryData_Page_media_staff_edgesBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_staff_edgesBuilder()
            ..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_staff_edges._(
      {required this.G__typename, this.node, this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchMangaQueryData_Page_media_staff_edges', 'G__typename');
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges rebuild(
          void Function(GSearchMangaQueryData_Page_media_staff_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_staff_edgesBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_staff_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_staff_edges &&
        G__typename == other.G__typename &&
        node == other.node &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchMangaQueryData_Page_media_staff_edges')
          ..add('G__typename', G__typename)
          ..add('node', node)
          ..add('role', role))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_staff_edgesBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_staff_edges,
            GSearchMangaQueryData_Page_media_staff_edgesBuilder> {
  _$GSearchMangaQueryData_Page_media_staff_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder? _node;
  GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder get node =>
      _$this._node ??=
          new GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder();
  set node(GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder? node) =>
      _$this._node = node;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  GSearchMangaQueryData_Page_media_staff_edgesBuilder() {
    GSearchMangaQueryData_Page_media_staff_edges._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_media_staff_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData_Page_media_staff_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_staff_edges;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_media_staff_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges build() => _build();

  _$GSearchMangaQueryData_Page_media_staff_edges _build() {
    _$GSearchMangaQueryData_Page_media_staff_edges _$result;
    try {
      _$result = _$v ??
          new _$GSearchMangaQueryData_Page_media_staff_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSearchMangaQueryData_Page_media_staff_edges',
                  'G__typename'),
              node: _node?.build(),
              role: role);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchMangaQueryData_Page_media_staff_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_staff_edges_node
    extends GSearchMangaQueryData_Page_media_staff_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GSearchMangaQueryData_Page_media_staff_edges_node_name? name;

  factory _$GSearchMangaQueryData_Page_media_staff_edges_node(
          [void Function(
                  GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_staff_edges_node._(
      {required this.G__typename, required this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchMangaQueryData_Page_media_staff_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSearchMangaQueryData_Page_media_staff_edges_node', 'id');
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges_node rebuild(
          void Function(
                  GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_staff_edges_node &&
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
            r'GSearchMangaQueryData_Page_media_staff_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_staff_edges_node,
            GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder> {
  _$GSearchMangaQueryData_Page_media_staff_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder? _name;
  GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder get name =>
      _$this._name ??=
          new GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder();
  set name(
          GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder?
              name) =>
      _$this._name = name;

  GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder() {
    GSearchMangaQueryData_Page_media_staff_edges_node._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData_Page_media_staff_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_staff_edges_node;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges_node build() => _build();

  _$GSearchMangaQueryData_Page_media_staff_edges_node _build() {
    _$GSearchMangaQueryData_Page_media_staff_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GSearchMangaQueryData_Page_media_staff_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSearchMangaQueryData_Page_media_staff_edges_node',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GSearchMangaQueryData_Page_media_staff_edges_node', 'id'),
              name: _name?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchMangaQueryData_Page_media_staff_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_staff_edges_node_name
    extends GSearchMangaQueryData_Page_media_staff_edges_node_name {
  @override
  final String G__typename;
  @override
  final String? full;

  factory _$GSearchMangaQueryData_Page_media_staff_edges_node_name(
          [void Function(
                  GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder()
            ..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_staff_edges_node_name._(
      {required this.G__typename, this.full})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSearchMangaQueryData_Page_media_staff_edges_node_name',
        'G__typename');
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges_node_name rebuild(
          void Function(
                  GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_staff_edges_node_name &&
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
            r'GSearchMangaQueryData_Page_media_staff_edges_node_name')
          ..add('G__typename', G__typename)
          ..add('full', full))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_staff_edges_node_name,
            GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder> {
  _$GSearchMangaQueryData_Page_media_staff_edges_node_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder() {
    GSearchMangaQueryData_Page_media_staff_edges_node_name._initializeBuilder(
        this);
  }

  GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _full = $v.full;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryData_Page_media_staff_edges_node_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_staff_edges_node_name;
  }

  @override
  void update(
      void Function(
              GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_staff_edges_node_name build() => _build();

  _$GSearchMangaQueryData_Page_media_staff_edges_node_name _build() {
    final _$result = _$v ??
        new _$GSearchMangaQueryData_Page_media_staff_edges_node_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchMangaQueryData_Page_media_staff_edges_node_name',
                'G__typename'),
            full: full);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchMangaQueryData_Page_media_mediaListEntry
    extends GSearchMangaQueryData_Page_media_mediaListEntry {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i2.GMediaListStatus? status;

  factory _$GSearchMangaQueryData_Page_media_mediaListEntry(
          [void Function(
                  GSearchMangaQueryData_Page_media_mediaListEntryBuilder)?
              updates]) =>
      (new GSearchMangaQueryData_Page_media_mediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GSearchMangaQueryData_Page_media_mediaListEntry._(
      {required this.G__typename, required this.id, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchMangaQueryData_Page_media_mediaListEntry', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSearchMangaQueryData_Page_media_mediaListEntry', 'id');
  }

  @override
  GSearchMangaQueryData_Page_media_mediaListEntry rebuild(
          void Function(GSearchMangaQueryData_Page_media_mediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryData_Page_media_mediaListEntryBuilder toBuilder() =>
      new GSearchMangaQueryData_Page_media_mediaListEntryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryData_Page_media_mediaListEntry &&
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
            r'GSearchMangaQueryData_Page_media_mediaListEntry')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status))
        .toString();
  }
}

class GSearchMangaQueryData_Page_media_mediaListEntryBuilder
    implements
        Builder<GSearchMangaQueryData_Page_media_mediaListEntry,
            GSearchMangaQueryData_Page_media_mediaListEntryBuilder> {
  _$GSearchMangaQueryData_Page_media_mediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GMediaListStatus? _status;
  _i2.GMediaListStatus? get status => _$this._status;
  set status(_i2.GMediaListStatus? status) => _$this._status = status;

  GSearchMangaQueryData_Page_media_mediaListEntryBuilder() {
    GSearchMangaQueryData_Page_media_mediaListEntry._initializeBuilder(this);
  }

  GSearchMangaQueryData_Page_media_mediaListEntryBuilder get _$this {
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
  void replace(GSearchMangaQueryData_Page_media_mediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryData_Page_media_mediaListEntry;
  }

  @override
  void update(
      void Function(GSearchMangaQueryData_Page_media_mediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryData_Page_media_mediaListEntry build() => _build();

  _$GSearchMangaQueryData_Page_media_mediaListEntry _build() {
    final _$result = _$v ??
        new _$GSearchMangaQueryData_Page_media_mediaListEntry._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchMangaQueryData_Page_media_mediaListEntry',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GSearchMangaQueryData_Page_media_mediaListEntry', 'id'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
