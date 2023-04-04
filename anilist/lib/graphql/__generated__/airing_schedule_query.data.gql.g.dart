// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airing_schedule_query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAiringScheduleQueryData> _$gAiringScheduleQueryDataSerializer =
    new _$GAiringScheduleQueryDataSerializer();
Serializer<GAiringScheduleQueryData_Page>
    _$gAiringScheduleQueryDataPageSerializer =
    new _$GAiringScheduleQueryData_PageSerializer();
Serializer<GAiringScheduleQueryData_Page_pageInfo>
    _$gAiringScheduleQueryDataPagePageInfoSerializer =
    new _$GAiringScheduleQueryData_Page_pageInfoSerializer();
Serializer<GAiringScheduleQueryData_Page_airingSchedules>
    _$gAiringScheduleQueryDataPageAiringSchedulesSerializer =
    new _$GAiringScheduleQueryData_Page_airingSchedulesSerializer();
Serializer<GAiringScheduleQueryData_Page_airingSchedules_media>
    _$gAiringScheduleQueryDataPageAiringSchedulesMediaSerializer =
    new _$GAiringScheduleQueryData_Page_airingSchedules_mediaSerializer();
Serializer<GAiringScheduleQueryData_Page_airingSchedules_media_title>
    _$gAiringScheduleQueryDataPageAiringSchedulesMediaTitleSerializer =
    new _$GAiringScheduleQueryData_Page_airingSchedules_media_titleSerializer();
Serializer<GAiringScheduleQueryData_Page_airingSchedules_media_coverImage>
    _$gAiringScheduleQueryDataPageAiringSchedulesMediaCoverImageSerializer =
    new _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImageSerializer();
Serializer<GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry>
    _$gAiringScheduleQueryDataPageAiringSchedulesMediaMediaListEntrySerializer =
    new _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntrySerializer();

class _$GAiringScheduleQueryDataSerializer
    implements StructuredSerializer<GAiringScheduleQueryData> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData,
    _$GAiringScheduleQueryData
  ];
  @override
  final String wireName = 'GAiringScheduleQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAiringScheduleQueryData object,
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
            specifiedType: const FullType(GAiringScheduleQueryData_Page)));
    }
    return result;
  }

  @override
  GAiringScheduleQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAiringScheduleQueryDataBuilder();

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
                  specifiedType: const FullType(GAiringScheduleQueryData_Page))!
              as GAiringScheduleQueryData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GAiringScheduleQueryData_PageSerializer
    implements StructuredSerializer<GAiringScheduleQueryData_Page> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData_Page,
    _$GAiringScheduleQueryData_Page
  ];
  @override
  final String wireName = 'GAiringScheduleQueryData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAiringScheduleQueryData_Page object,
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
                const FullType(GAiringScheduleQueryData_Page_pageInfo)));
    }
    value = object.airingSchedules;
    if (value != null) {
      result
        ..add('airingSchedules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GAiringScheduleQueryData_Page_airingSchedules)
            ])));
    }
    return result;
  }

  @override
  GAiringScheduleQueryData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAiringScheduleQueryData_PageBuilder();

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
                      const FullType(GAiringScheduleQueryData_Page_pageInfo))!
              as GAiringScheduleQueryData_Page_pageInfo);
          break;
        case 'airingSchedules':
          result.airingSchedules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GAiringScheduleQueryData_Page_airingSchedules)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAiringScheduleQueryData_Page_pageInfoSerializer
    implements StructuredSerializer<GAiringScheduleQueryData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData_Page_pageInfo,
    _$GAiringScheduleQueryData_Page_pageInfo
  ];
  @override
  final String wireName = 'GAiringScheduleQueryData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAiringScheduleQueryData_Page_pageInfo object,
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
  GAiringScheduleQueryData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAiringScheduleQueryData_Page_pageInfoBuilder();

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

class _$GAiringScheduleQueryData_Page_airingSchedulesSerializer
    implements
        StructuredSerializer<GAiringScheduleQueryData_Page_airingSchedules> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData_Page_airingSchedules,
    _$GAiringScheduleQueryData_Page_airingSchedules
  ];
  @override
  final String wireName = 'GAiringScheduleQueryData_Page_airingSchedules';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAiringScheduleQueryData_Page_airingSchedules object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAiringScheduleQueryData_Page_airingSchedules_media)));
    }
    return result;
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAiringScheduleQueryData_Page_airingSchedulesBuilder();

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
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAiringScheduleQueryData_Page_airingSchedules_media))!
              as GAiringScheduleQueryData_Page_airingSchedules_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_mediaSerializer
    implements
        StructuredSerializer<
            GAiringScheduleQueryData_Page_airingSchedules_media> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData_Page_airingSchedules_media,
    _$GAiringScheduleQueryData_Page_airingSchedules_media
  ];
  @override
  final String wireName = 'GAiringScheduleQueryData_Page_airingSchedules_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAiringScheduleQueryData_Page_airingSchedules_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.countryOfOrigin;
    if (value != null) {
      result
        ..add('countryOfOrigin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GCountryCode)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAiringScheduleQueryData_Page_airingSchedules_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAiringScheduleQueryData_Page_airingSchedules_media_coverImage)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaSeason)));
    }
    value = object.seasonYear;
    if (value != null) {
      result
        ..add('seasonYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mediaListEntry;
    if (value != null) {
      result
        ..add('mediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry)));
    }
    return result;
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder();

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
        case 'countryOfOrigin':
          result.countryOfOrigin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GCountryCode))!
              as _i2.GCountryCode);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAiringScheduleQueryData_Page_airingSchedules_media_title))!
              as GAiringScheduleQueryData_Page_airingSchedules_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAiringScheduleQueryData_Page_airingSchedules_media_coverImage))!
              as GAiringScheduleQueryData_Page_airingSchedules_media_coverImage);
          break;
        case 'season':
          result.season = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaSeason))
              as _i2.GMediaSeason?;
          break;
        case 'seasonYear':
          result.seasonYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'mediaListEntry':
          result.mediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry))!
              as GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_media_titleSerializer
    implements
        StructuredSerializer<
            GAiringScheduleQueryData_Page_airingSchedules_media_title> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData_Page_airingSchedules_media_title,
    _$GAiringScheduleQueryData_Page_airingSchedules_media_title
  ];
  @override
  final String wireName =
      'GAiringScheduleQueryData_Page_airingSchedules_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAiringScheduleQueryData_Page_airingSchedules_media_title object,
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
    value = object.romaji;
    if (value != null) {
      result
        ..add('romaji')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder();

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
        case 'romaji':
          result.romaji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImageSerializer
    implements
        StructuredSerializer<
            GAiringScheduleQueryData_Page_airingSchedules_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData_Page_airingSchedules_media_coverImage,
    _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage
  ];
  @override
  final String wireName =
      'GAiringScheduleQueryData_Page_airingSchedules_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAiringScheduleQueryData_Page_airingSchedules_media_coverImage object,
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
  GAiringScheduleQueryData_Page_airingSchedules_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder();

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
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntrySerializer
    implements
        StructuredSerializer<
            GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry,
    _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
  ];
  @override
  final String wireName =
      'GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
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
  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder();

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

class _$GAiringScheduleQueryData extends GAiringScheduleQueryData {
  @override
  final String G__typename;
  @override
  final GAiringScheduleQueryData_Page? Page;

  factory _$GAiringScheduleQueryData(
          [void Function(GAiringScheduleQueryDataBuilder)? updates]) =>
      (new GAiringScheduleQueryDataBuilder()..update(updates))._build();

  _$GAiringScheduleQueryData._({required this.G__typename, this.Page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAiringScheduleQueryData', 'G__typename');
  }

  @override
  GAiringScheduleQueryData rebuild(
          void Function(GAiringScheduleQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryDataBuilder toBuilder() =>
      new GAiringScheduleQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAiringScheduleQueryData &&
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
    return (newBuiltValueToStringHelper(r'GAiringScheduleQueryData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GAiringScheduleQueryDataBuilder
    implements
        Builder<GAiringScheduleQueryData, GAiringScheduleQueryDataBuilder> {
  _$GAiringScheduleQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAiringScheduleQueryData_PageBuilder? _Page;
  GAiringScheduleQueryData_PageBuilder get Page =>
      _$this._Page ??= new GAiringScheduleQueryData_PageBuilder();
  set Page(GAiringScheduleQueryData_PageBuilder? Page) => _$this._Page = Page;

  GAiringScheduleQueryDataBuilder() {
    GAiringScheduleQueryData._initializeBuilder(this);
  }

  GAiringScheduleQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAiringScheduleQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAiringScheduleQueryData;
  }

  @override
  void update(void Function(GAiringScheduleQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData build() => _build();

  _$GAiringScheduleQueryData _build() {
    _$GAiringScheduleQueryData _$result;
    try {
      _$result = _$v ??
          new _$GAiringScheduleQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAiringScheduleQueryData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAiringScheduleQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAiringScheduleQueryData_Page extends GAiringScheduleQueryData_Page {
  @override
  final String G__typename;
  @override
  final GAiringScheduleQueryData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GAiringScheduleQueryData_Page_airingSchedules?>?
      airingSchedules;

  factory _$GAiringScheduleQueryData_Page(
          [void Function(GAiringScheduleQueryData_PageBuilder)? updates]) =>
      (new GAiringScheduleQueryData_PageBuilder()..update(updates))._build();

  _$GAiringScheduleQueryData_Page._(
      {required this.G__typename, this.pageInfo, this.airingSchedules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAiringScheduleQueryData_Page', 'G__typename');
  }

  @override
  GAiringScheduleQueryData_Page rebuild(
          void Function(GAiringScheduleQueryData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryData_PageBuilder toBuilder() =>
      new GAiringScheduleQueryData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAiringScheduleQueryData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        airingSchedules == other.airingSchedules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, airingSchedules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAiringScheduleQueryData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('airingSchedules', airingSchedules))
        .toString();
  }
}

class GAiringScheduleQueryData_PageBuilder
    implements
        Builder<GAiringScheduleQueryData_Page,
            GAiringScheduleQueryData_PageBuilder> {
  _$GAiringScheduleQueryData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAiringScheduleQueryData_Page_pageInfoBuilder? _pageInfo;
  GAiringScheduleQueryData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GAiringScheduleQueryData_Page_pageInfoBuilder();
  set pageInfo(GAiringScheduleQueryData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GAiringScheduleQueryData_Page_airingSchedules?>? _airingSchedules;
  ListBuilder<GAiringScheduleQueryData_Page_airingSchedules?>
      get airingSchedules => _$this._airingSchedules ??=
          new ListBuilder<GAiringScheduleQueryData_Page_airingSchedules?>();
  set airingSchedules(
          ListBuilder<GAiringScheduleQueryData_Page_airingSchedules?>?
              airingSchedules) =>
      _$this._airingSchedules = airingSchedules;

  GAiringScheduleQueryData_PageBuilder() {
    GAiringScheduleQueryData_Page._initializeBuilder(this);
  }

  GAiringScheduleQueryData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _airingSchedules = $v.airingSchedules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAiringScheduleQueryData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAiringScheduleQueryData_Page;
  }

  @override
  void update(void Function(GAiringScheduleQueryData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData_Page build() => _build();

  _$GAiringScheduleQueryData_Page _build() {
    _$GAiringScheduleQueryData_Page _$result;
    try {
      _$result = _$v ??
          new _$GAiringScheduleQueryData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAiringScheduleQueryData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              airingSchedules: _airingSchedules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'airingSchedules';
        _airingSchedules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAiringScheduleQueryData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAiringScheduleQueryData_Page_pageInfo
    extends GAiringScheduleQueryData_Page_pageInfo {
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

  factory _$GAiringScheduleQueryData_Page_pageInfo(
          [void Function(GAiringScheduleQueryData_Page_pageInfoBuilder)?
              updates]) =>
      (new GAiringScheduleQueryData_Page_pageInfoBuilder()..update(updates))
          ._build();

  _$GAiringScheduleQueryData_Page_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAiringScheduleQueryData_Page_pageInfo', 'G__typename');
  }

  @override
  GAiringScheduleQueryData_Page_pageInfo rebuild(
          void Function(GAiringScheduleQueryData_Page_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryData_Page_pageInfoBuilder toBuilder() =>
      new GAiringScheduleQueryData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAiringScheduleQueryData_Page_pageInfo &&
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
            r'GAiringScheduleQueryData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GAiringScheduleQueryData_Page_pageInfoBuilder
    implements
        Builder<GAiringScheduleQueryData_Page_pageInfo,
            GAiringScheduleQueryData_Page_pageInfoBuilder> {
  _$GAiringScheduleQueryData_Page_pageInfo? _$v;

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

  GAiringScheduleQueryData_Page_pageInfoBuilder() {
    GAiringScheduleQueryData_Page_pageInfo._initializeBuilder(this);
  }

  GAiringScheduleQueryData_Page_pageInfoBuilder get _$this {
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
  void replace(GAiringScheduleQueryData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAiringScheduleQueryData_Page_pageInfo;
  }

  @override
  void update(
      void Function(GAiringScheduleQueryData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData_Page_pageInfo build() => _build();

  _$GAiringScheduleQueryData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GAiringScheduleQueryData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAiringScheduleQueryData_Page_pageInfo', 'G__typename'),
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules
    extends GAiringScheduleQueryData_Page_airingSchedules {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;
  @override
  final GAiringScheduleQueryData_Page_airingSchedules_media? media;

  factory _$GAiringScheduleQueryData_Page_airingSchedules(
          [void Function(GAiringScheduleQueryData_Page_airingSchedulesBuilder)?
              updates]) =>
      (new GAiringScheduleQueryData_Page_airingSchedulesBuilder()
            ..update(updates))
          ._build();

  _$GAiringScheduleQueryData_Page_airingSchedules._(
      {required this.G__typename,
      required this.id,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GAiringScheduleQueryData_Page_airingSchedules', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAiringScheduleQueryData_Page_airingSchedules', 'id');
    BuiltValueNullFieldError.checkNotNull(
        airingAt, r'GAiringScheduleQueryData_Page_airingSchedules', 'airingAt');
    BuiltValueNullFieldError.checkNotNull(timeUntilAiring,
        r'GAiringScheduleQueryData_Page_airingSchedules', 'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(
        episode, r'GAiringScheduleQueryData_Page_airingSchedules', 'episode');
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules rebuild(
          void Function(GAiringScheduleQueryData_Page_airingSchedulesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryData_Page_airingSchedulesBuilder toBuilder() =>
      new GAiringScheduleQueryData_Page_airingSchedulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAiringScheduleQueryData_Page_airingSchedules &&
        G__typename == other.G__typename &&
        id == other.id &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAiringScheduleQueryData_Page_airingSchedules')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode)
          ..add('media', media))
        .toString();
  }
}

class GAiringScheduleQueryData_Page_airingSchedulesBuilder
    implements
        Builder<GAiringScheduleQueryData_Page_airingSchedules,
            GAiringScheduleQueryData_Page_airingSchedulesBuilder> {
  _$GAiringScheduleQueryData_Page_airingSchedules? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder? _media;
  GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder get media =>
      _$this._media ??=
          new GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder();
  set media(
          GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder? media) =>
      _$this._media = media;

  GAiringScheduleQueryData_Page_airingSchedulesBuilder() {
    GAiringScheduleQueryData_Page_airingSchedules._initializeBuilder(this);
  }

  GAiringScheduleQueryData_Page_airingSchedulesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAiringScheduleQueryData_Page_airingSchedules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAiringScheduleQueryData_Page_airingSchedules;
  }

  @override
  void update(
      void Function(GAiringScheduleQueryData_Page_airingSchedulesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules build() => _build();

  _$GAiringScheduleQueryData_Page_airingSchedules _build() {
    _$GAiringScheduleQueryData_Page_airingSchedules _$result;
    try {
      _$result = _$v ??
          new _$GAiringScheduleQueryData_Page_airingSchedules._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GAiringScheduleQueryData_Page_airingSchedules',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GAiringScheduleQueryData_Page_airingSchedules', 'id'),
              airingAt: BuiltValueNullFieldError.checkNotNull(airingAt,
                  r'GAiringScheduleQueryData_Page_airingSchedules', 'airingAt'),
              timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                  timeUntilAiring,
                  r'GAiringScheduleQueryData_Page_airingSchedules',
                  'timeUntilAiring'),
              episode: BuiltValueNullFieldError.checkNotNull(episode,
                  r'GAiringScheduleQueryData_Page_airingSchedules', 'episode'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAiringScheduleQueryData_Page_airingSchedules',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_media
    extends GAiringScheduleQueryData_Page_airingSchedules_media {
  @override
  final String G__typename;
  @override
  final _i2.GCountryCode? countryOfOrigin;
  @override
  final int id;
  @override
  final GAiringScheduleQueryData_Page_airingSchedules_media_title? title;
  @override
  final GAiringScheduleQueryData_Page_airingSchedules_media_coverImage?
      coverImage;
  @override
  final _i2.GMediaSeason? season;
  @override
  final int? seasonYear;
  @override
  final String? bannerImage;
  @override
  final bool? isAdult;
  @override
  final GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry?
      mediaListEntry;

  factory _$GAiringScheduleQueryData_Page_airingSchedules_media(
          [void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder)?
              updates]) =>
      (new GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder()
            ..update(updates))
          ._build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media._(
      {required this.G__typename,
      this.countryOfOrigin,
      required this.id,
      this.title,
      this.coverImage,
      this.season,
      this.seasonYear,
      this.bannerImage,
      this.isAdult,
      this.mediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GAiringScheduleQueryData_Page_airingSchedules_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAiringScheduleQueryData_Page_airingSchedules_media', 'id');
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media rebuild(
          void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder toBuilder() =>
      new GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAiringScheduleQueryData_Page_airingSchedules_media &&
        G__typename == other.G__typename &&
        countryOfOrigin == other.countryOfOrigin &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        season == other.season &&
        seasonYear == other.seasonYear &&
        bannerImage == other.bannerImage &&
        isAdult == other.isAdult &&
        mediaListEntry == other.mediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, countryOfOrigin.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, seasonYear.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, mediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAiringScheduleQueryData_Page_airingSchedules_media')
          ..add('G__typename', G__typename)
          ..add('countryOfOrigin', countryOfOrigin)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('season', season)
          ..add('seasonYear', seasonYear)
          ..add('bannerImage', bannerImage)
          ..add('isAdult', isAdult)
          ..add('mediaListEntry', mediaListEntry))
        .toString();
  }
}

class GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder
    implements
        Builder<GAiringScheduleQueryData_Page_airingSchedules_media,
            GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder> {
  _$GAiringScheduleQueryData_Page_airingSchedules_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GCountryCodeBuilder? _countryOfOrigin;
  _i2.GCountryCodeBuilder get countryOfOrigin =>
      _$this._countryOfOrigin ??= new _i2.GCountryCodeBuilder();
  set countryOfOrigin(_i2.GCountryCodeBuilder? countryOfOrigin) =>
      _$this._countryOfOrigin = countryOfOrigin;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder? _title;
  GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder get title =>
      _$this._title ??=
          new GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder();
  set title(
          GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder?
              title) =>
      _$this._title = title;

  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder?
      _coverImage;
  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder();
  set coverImage(
          GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  _i2.GMediaSeason? _season;
  _i2.GMediaSeason? get season => _$this._season;
  set season(_i2.GMediaSeason? season) => _$this._season = season;

  int? _seasonYear;
  int? get seasonYear => _$this._seasonYear;
  set seasonYear(int? seasonYear) => _$this._seasonYear = seasonYear;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder?
      _mediaListEntry;
  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder
      get mediaListEntry => _$this._mediaListEntry ??=
          new GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder();
  set mediaListEntry(
          GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder?
              mediaListEntry) =>
      _$this._mediaListEntry = mediaListEntry;

  GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder() {
    GAiringScheduleQueryData_Page_airingSchedules_media._initializeBuilder(
        this);
  }

  GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _countryOfOrigin = $v.countryOfOrigin?.toBuilder();
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _season = $v.season;
      _seasonYear = $v.seasonYear;
      _bannerImage = $v.bannerImage;
      _isAdult = $v.isAdult;
      _mediaListEntry = $v.mediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAiringScheduleQueryData_Page_airingSchedules_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAiringScheduleQueryData_Page_airingSchedules_media;
  }

  @override
  void update(
      void Function(GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media build() => _build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media _build() {
    _$GAiringScheduleQueryData_Page_airingSchedules_media _$result;
    try {
      _$result = _$v ??
          new _$GAiringScheduleQueryData_Page_airingSchedules_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GAiringScheduleQueryData_Page_airingSchedules_media',
                  'G__typename'),
              countryOfOrigin: _countryOfOrigin?.build(),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GAiringScheduleQueryData_Page_airingSchedules_media', 'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              season: season,
              seasonYear: seasonYear,
              bannerImage: bannerImage,
              isAdult: isAdult,
              mediaListEntry: _mediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countryOfOrigin';
        _countryOfOrigin?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();

        _$failedField = 'mediaListEntry';
        _mediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAiringScheduleQueryData_Page_airingSchedules_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_media_title
    extends GAiringScheduleQueryData_Page_airingSchedules_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;
  @override
  final String? romaji;
  @override
  final String? english;

  factory _$GAiringScheduleQueryData_Page_airingSchedules_media_title(
          [void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder)?
              updates]) =>
      (new GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media_title._(
      {required this.G__typename,
      this.userPreferred,
      this.romaji,
      this.english})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAiringScheduleQueryData_Page_airingSchedules_media_title',
        'G__typename');
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_title rebuild(
          void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder
      toBuilder() =>
          new GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAiringScheduleQueryData_Page_airingSchedules_media_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred &&
        romaji == other.romaji &&
        english == other.english;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jc(_$hash, romaji.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAiringScheduleQueryData_Page_airingSchedules_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred)
          ..add('romaji', romaji)
          ..add('english', english))
        .toString();
  }
}

class GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder
    implements
        Builder<GAiringScheduleQueryData_Page_airingSchedules_media_title,
            GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder> {
  _$GAiringScheduleQueryData_Page_airingSchedules_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  String? _romaji;
  String? get romaji => _$this._romaji;
  set romaji(String? romaji) => _$this._romaji = romaji;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder() {
    GAiringScheduleQueryData_Page_airingSchedules_media_title
        ._initializeBuilder(this);
  }

  GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _romaji = $v.romaji;
      _english = $v.english;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAiringScheduleQueryData_Page_airingSchedules_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAiringScheduleQueryData_Page_airingSchedules_media_title;
  }

  @override
  void update(
      void Function(
              GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_title build() => _build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media_title _build() {
    final _$result = _$v ??
        new _$GAiringScheduleQueryData_Page_airingSchedules_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAiringScheduleQueryData_Page_airingSchedules_media_title',
                'G__typename'),
            userPreferred: userPreferred,
            romaji: romaji,
            english: english);
    replace(_$result);
    return _$result;
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage
    extends GAiringScheduleQueryData_Page_airingSchedules_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;
  @override
  final String? medium;
  @override
  final String? color;

  factory _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage(
          [void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder)?
              updates]) =>
      (new GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage._(
      {required this.G__typename, this.large, this.medium, this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAiringScheduleQueryData_Page_airingSchedules_media_coverImage',
        'G__typename');
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_coverImage rebuild(
          void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder
      toBuilder() =>
          new GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAiringScheduleQueryData_Page_airingSchedules_media_coverImage &&
        G__typename == other.G__typename &&
        large == other.large &&
        medium == other.medium &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAiringScheduleQueryData_Page_airingSchedules_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('large', large)
          ..add('medium', medium)
          ..add('color', color))
        .toString();
  }
}

class GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder
    implements
        Builder<GAiringScheduleQueryData_Page_airingSchedules_media_coverImage,
            GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder> {
  _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder() {
    GAiringScheduleQueryData_Page_airingSchedules_media_coverImage
        ._initializeBuilder(this);
  }

  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _medium = $v.medium;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAiringScheduleQueryData_Page_airingSchedules_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage;
  }

  @override
  void update(
      void Function(
              GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_coverImage build() =>
      _build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage _build() {
    final _$result = _$v ??
        new _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAiringScheduleQueryData_Page_airingSchedules_media_coverImage',
                'G__typename'),
            large: large,
            medium: medium,
            color: color);
    replace(_$result);
    return _$result;
  }
}

class _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
    extends GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry {
  @override
  final String G__typename;
  @override
  final _i2.GMediaListStatus? status;

  factory _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry(
          [void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder)?
              updates]) =>
      (new GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry._(
      {required this.G__typename, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry',
        'G__typename');
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry rebuild(
          void Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder
      toBuilder() =>
          new GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry &&
        G__typename == other.G__typename &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry')
          ..add('G__typename', G__typename)
          ..add('status', status))
        .toString();
  }
}

class GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder
    implements
        Builder<
            GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry,
            GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder> {
  _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GMediaListStatus? _status;
  _i2.GMediaListStatus? get status => _$this._status;
  set status(_i2.GMediaListStatus? status) => _$this._status = status;

  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder() {
    GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
        ._initializeBuilder(this);
  }

  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry;
  }

  @override
  void update(
      void Function(
              GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry build() =>
      _build();

  _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
      _build() {
    final _$result = _$v ??
        new _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry',
                'G__typename'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
