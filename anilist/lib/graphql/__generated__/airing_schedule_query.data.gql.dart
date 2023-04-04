// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'airing_schedule_query.data.gql.g.dart';

abstract class GAiringScheduleQueryData
    implements
        Built<GAiringScheduleQueryData, GAiringScheduleQueryDataBuilder> {
  GAiringScheduleQueryData._();

  factory GAiringScheduleQueryData(
          [Function(GAiringScheduleQueryDataBuilder b) updates]) =
      _$GAiringScheduleQueryData;

  static void _initializeBuilder(GAiringScheduleQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAiringScheduleQueryData_Page? get Page;
  static Serializer<GAiringScheduleQueryData> get serializer =>
      _$gAiringScheduleQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleQueryData.serializer,
        json,
      );
}

abstract class GAiringScheduleQueryData_Page
    implements
        Built<GAiringScheduleQueryData_Page,
            GAiringScheduleQueryData_PageBuilder> {
  GAiringScheduleQueryData_Page._();

  factory GAiringScheduleQueryData_Page(
          [Function(GAiringScheduleQueryData_PageBuilder b) updates]) =
      _$GAiringScheduleQueryData_Page;

  static void _initializeBuilder(GAiringScheduleQueryData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAiringScheduleQueryData_Page_pageInfo? get pageInfo;
  BuiltList<GAiringScheduleQueryData_Page_airingSchedules?>?
      get airingSchedules;
  static Serializer<GAiringScheduleQueryData_Page> get serializer =>
      _$gAiringScheduleQueryDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleQueryData_Page.serializer,
        json,
      );
}

abstract class GAiringScheduleQueryData_Page_pageInfo
    implements
        Built<GAiringScheduleQueryData_Page_pageInfo,
            GAiringScheduleQueryData_Page_pageInfoBuilder> {
  GAiringScheduleQueryData_Page_pageInfo._();

  factory GAiringScheduleQueryData_Page_pageInfo(
          [Function(GAiringScheduleQueryData_Page_pageInfoBuilder b) updates]) =
      _$GAiringScheduleQueryData_Page_pageInfo;

  static void _initializeBuilder(
          GAiringScheduleQueryData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GAiringScheduleQueryData_Page_pageInfo> get serializer =>
      _$gAiringScheduleQueryDataPagePageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleQueryData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GAiringScheduleQueryData_Page_airingSchedules
    implements
        Built<GAiringScheduleQueryData_Page_airingSchedules,
            GAiringScheduleQueryData_Page_airingSchedulesBuilder> {
  GAiringScheduleQueryData_Page_airingSchedules._();

  factory GAiringScheduleQueryData_Page_airingSchedules(
      [Function(GAiringScheduleQueryData_Page_airingSchedulesBuilder b)
          updates]) = _$GAiringScheduleQueryData_Page_airingSchedules;

  static void _initializeBuilder(
          GAiringScheduleQueryData_Page_airingSchedulesBuilder b) =>
      b..G__typename = 'AiringSchedule';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get airingAt;
  int get timeUntilAiring;
  int get episode;
  GAiringScheduleQueryData_Page_airingSchedules_media? get media;
  static Serializer<GAiringScheduleQueryData_Page_airingSchedules>
      get serializer => _$gAiringScheduleQueryDataPageAiringSchedulesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData_Page_airingSchedules.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData_Page_airingSchedules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleQueryData_Page_airingSchedules.serializer,
        json,
      );
}

abstract class GAiringScheduleQueryData_Page_airingSchedules_media
    implements
        Built<GAiringScheduleQueryData_Page_airingSchedules_media,
            GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder> {
  GAiringScheduleQueryData_Page_airingSchedules_media._();

  factory GAiringScheduleQueryData_Page_airingSchedules_media(
      [Function(GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder b)
          updates]) = _$GAiringScheduleQueryData_Page_airingSchedules_media;

  static void _initializeBuilder(
          GAiringScheduleQueryData_Page_airingSchedules_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GCountryCode? get countryOfOrigin;
  int get id;
  GAiringScheduleQueryData_Page_airingSchedules_media_title? get title;
  GAiringScheduleQueryData_Page_airingSchedules_media_coverImage?
      get coverImage;
  _i2.GMediaSeason? get season;
  int? get seasonYear;
  String? get bannerImage;
  bool? get isAdult;
  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry?
      get mediaListEntry;
  static Serializer<GAiringScheduleQueryData_Page_airingSchedules_media>
      get serializer =>
          _$gAiringScheduleQueryDataPageAiringSchedulesMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData_Page_airingSchedules_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData_Page_airingSchedules_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleQueryData_Page_airingSchedules_media.serializer,
        json,
      );
}

abstract class GAiringScheduleQueryData_Page_airingSchedules_media_title
    implements
        Built<GAiringScheduleQueryData_Page_airingSchedules_media_title,
            GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder> {
  GAiringScheduleQueryData_Page_airingSchedules_media_title._();

  factory GAiringScheduleQueryData_Page_airingSchedules_media_title(
      [Function(
              GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder
                  b)
          updates]) = _$GAiringScheduleQueryData_Page_airingSchedules_media_title;

  static void _initializeBuilder(
          GAiringScheduleQueryData_Page_airingSchedules_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  String? get romaji;
  String? get english;
  static Serializer<GAiringScheduleQueryData_Page_airingSchedules_media_title>
      get serializer =>
          _$gAiringScheduleQueryDataPageAiringSchedulesMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData_Page_airingSchedules_media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData_Page_airingSchedules_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleQueryData_Page_airingSchedules_media_title.serializer,
        json,
      );
}

abstract class GAiringScheduleQueryData_Page_airingSchedules_media_coverImage
    implements
        Built<GAiringScheduleQueryData_Page_airingSchedules_media_coverImage,
            GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder> {
  GAiringScheduleQueryData_Page_airingSchedules_media_coverImage._();

  factory GAiringScheduleQueryData_Page_airingSchedules_media_coverImage(
          [Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder
                      b)
              updates]) =
      _$GAiringScheduleQueryData_Page_airingSchedules_media_coverImage;

  static void _initializeBuilder(
          GAiringScheduleQueryData_Page_airingSchedules_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  String? get medium;
  String? get color;
  static Serializer<
          GAiringScheduleQueryData_Page_airingSchedules_media_coverImage>
      get serializer =>
          _$gAiringScheduleQueryDataPageAiringSchedulesMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData_Page_airingSchedules_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData_Page_airingSchedules_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAiringScheduleQueryData_Page_airingSchedules_media_coverImage
                .serializer,
            json,
          );
}

abstract class GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
    implements
        Built<
            GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry,
            GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder> {
  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry._();

  factory GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry(
          [Function(
                  GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder
                      b)
              updates]) =
      _$GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry;

  static void _initializeBuilder(
          GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntryBuilder
              b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GMediaListStatus? get status;
  static Serializer<
          GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry>
      get serializer =>
          _$gAiringScheduleQueryDataPageAiringSchedulesMediaMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAiringScheduleQueryData_Page_airingSchedules_media_mediaListEntry
                .serializer,
            json,
          );
}
