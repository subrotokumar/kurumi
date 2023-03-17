// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'SearchAnimeQuery.data.gql.g.dart';

abstract class GSearchAnimeQueryData
    implements Built<GSearchAnimeQueryData, GSearchAnimeQueryDataBuilder> {
  GSearchAnimeQueryData._();

  factory GSearchAnimeQueryData(
          [Function(GSearchAnimeQueryDataBuilder b) updates]) =
      _$GSearchAnimeQueryData;

  static void _initializeBuilder(GSearchAnimeQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchAnimeQueryData_Page? get Page;
  static Serializer<GSearchAnimeQueryData> get serializer =>
      _$gSearchAnimeQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page
    implements
        Built<GSearchAnimeQueryData_Page, GSearchAnimeQueryData_PageBuilder> {
  GSearchAnimeQueryData_Page._();

  factory GSearchAnimeQueryData_Page(
          [Function(GSearchAnimeQueryData_PageBuilder b) updates]) =
      _$GSearchAnimeQueryData_Page;

  static void _initializeBuilder(GSearchAnimeQueryData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchAnimeQueryData_Page_pageInfo? get pageInfo;
  BuiltList<GSearchAnimeQueryData_Page_media?>? get media;
  static Serializer<GSearchAnimeQueryData_Page> get serializer =>
      _$gSearchAnimeQueryDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_pageInfo
    implements
        Built<GSearchAnimeQueryData_Page_pageInfo,
            GSearchAnimeQueryData_Page_pageInfoBuilder> {
  GSearchAnimeQueryData_Page_pageInfo._();

  factory GSearchAnimeQueryData_Page_pageInfo(
          [Function(GSearchAnimeQueryData_Page_pageInfoBuilder b) updates]) =
      _$GSearchAnimeQueryData_Page_pageInfo;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GSearchAnimeQueryData_Page_pageInfo> get serializer =>
      _$gSearchAnimeQueryDataPagePageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media
    implements
        Built<GSearchAnimeQueryData_Page_media,
            GSearchAnimeQueryData_Page_mediaBuilder> {
  GSearchAnimeQueryData_Page_media._();

  factory GSearchAnimeQueryData_Page_media(
          [Function(GSearchAnimeQueryData_Page_mediaBuilder b) updates]) =
      _$GSearchAnimeQueryData_Page_media;

  static void _initializeBuilder(GSearchAnimeQueryData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GSearchAnimeQueryData_Page_media_title? get title;
  GSearchAnimeQueryData_Page_media_coverImage? get coverImage;
  _i2.GMediaType? get type;
  _i2.GMediaFormat? get format;
  _i2.GMediaStatus? get status;
  int? get episodes;
  int? get averageScore;
  int? get favourites;
  GSearchAnimeQueryData_Page_media_startDate? get startDate;
  BuiltList<String?>? get genres;
  GSearchAnimeQueryData_Page_media_studios? get studios;
  GSearchAnimeQueryData_Page_media_mediaListEntry? get mediaListEntry;
  static Serializer<GSearchAnimeQueryData_Page_media> get serializer =>
      _$gSearchAnimeQueryDataPageMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media_title
    implements
        Built<GSearchAnimeQueryData_Page_media_title,
            GSearchAnimeQueryData_Page_media_titleBuilder> {
  GSearchAnimeQueryData_Page_media_title._();

  factory GSearchAnimeQueryData_Page_media_title(
          [Function(GSearchAnimeQueryData_Page_media_titleBuilder b) updates]) =
      _$GSearchAnimeQueryData_Page_media_title;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<GSearchAnimeQueryData_Page_media_title> get serializer =>
      _$gSearchAnimeQueryDataPageMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media_title.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media_coverImage
    implements
        Built<GSearchAnimeQueryData_Page_media_coverImage,
            GSearchAnimeQueryData_Page_media_coverImageBuilder> {
  GSearchAnimeQueryData_Page_media_coverImage._();

  factory GSearchAnimeQueryData_Page_media_coverImage(
      [Function(GSearchAnimeQueryData_Page_media_coverImageBuilder b)
          updates]) = _$GSearchAnimeQueryData_Page_media_coverImage;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  String? get color;
  static Serializer<GSearchAnimeQueryData_Page_media_coverImage>
      get serializer => _$gSearchAnimeQueryDataPageMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media_coverImage.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media_startDate
    implements
        Built<GSearchAnimeQueryData_Page_media_startDate,
            GSearchAnimeQueryData_Page_media_startDateBuilder> {
  GSearchAnimeQueryData_Page_media_startDate._();

  factory GSearchAnimeQueryData_Page_media_startDate(
      [Function(GSearchAnimeQueryData_Page_media_startDateBuilder b)
          updates]) = _$GSearchAnimeQueryData_Page_media_startDate;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_media_startDateBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<GSearchAnimeQueryData_Page_media_startDate>
      get serializer => _$gSearchAnimeQueryDataPageMediaStartDateSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media_startDate.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media_studios
    implements
        Built<GSearchAnimeQueryData_Page_media_studios,
            GSearchAnimeQueryData_Page_media_studiosBuilder> {
  GSearchAnimeQueryData_Page_media_studios._();

  factory GSearchAnimeQueryData_Page_media_studios(
      [Function(GSearchAnimeQueryData_Page_media_studiosBuilder b)
          updates]) = _$GSearchAnimeQueryData_Page_media_studios;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_media_studiosBuilder b) =>
      b..G__typename = 'StudioConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GSearchAnimeQueryData_Page_media_studios_edges?>? get edges;
  static Serializer<GSearchAnimeQueryData_Page_media_studios> get serializer =>
      _$gSearchAnimeQueryDataPageMediaStudiosSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media_studios.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media_studios? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media_studios.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media_studios_edges
    implements
        Built<GSearchAnimeQueryData_Page_media_studios_edges,
            GSearchAnimeQueryData_Page_media_studios_edgesBuilder> {
  GSearchAnimeQueryData_Page_media_studios_edges._();

  factory GSearchAnimeQueryData_Page_media_studios_edges(
      [Function(GSearchAnimeQueryData_Page_media_studios_edgesBuilder b)
          updates]) = _$GSearchAnimeQueryData_Page_media_studios_edges;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_media_studios_edgesBuilder b) =>
      b..G__typename = 'StudioEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchAnimeQueryData_Page_media_studios_edges_node? get node;
  static Serializer<GSearchAnimeQueryData_Page_media_studios_edges>
      get serializer => _$gSearchAnimeQueryDataPageMediaStudiosEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media_studios_edges.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media_studios_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media_studios_edges.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media_studios_edges_node
    implements
        Built<GSearchAnimeQueryData_Page_media_studios_edges_node,
            GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder> {
  GSearchAnimeQueryData_Page_media_studios_edges_node._();

  factory GSearchAnimeQueryData_Page_media_studios_edges_node(
      [Function(GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder b)
          updates]) = _$GSearchAnimeQueryData_Page_media_studios_edges_node;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_media_studios_edges_nodeBuilder b) =>
      b..G__typename = 'Studio';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  static Serializer<GSearchAnimeQueryData_Page_media_studios_edges_node>
      get serializer =>
          _$gSearchAnimeQueryDataPageMediaStudiosEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media_studios_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media_studios_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media_studios_edges_node.serializer,
        json,
      );
}

abstract class GSearchAnimeQueryData_Page_media_mediaListEntry
    implements
        Built<GSearchAnimeQueryData_Page_media_mediaListEntry,
            GSearchAnimeQueryData_Page_media_mediaListEntryBuilder> {
  GSearchAnimeQueryData_Page_media_mediaListEntry._();

  factory GSearchAnimeQueryData_Page_media_mediaListEntry(
      [Function(GSearchAnimeQueryData_Page_media_mediaListEntryBuilder b)
          updates]) = _$GSearchAnimeQueryData_Page_media_mediaListEntry;

  static void _initializeBuilder(
          GSearchAnimeQueryData_Page_media_mediaListEntryBuilder b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GMediaListStatus? get status;
  static Serializer<GSearchAnimeQueryData_Page_media_mediaListEntry>
      get serializer =>
          _$gSearchAnimeQueryDataPageMediaMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchAnimeQueryData_Page_media_mediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryData_Page_media_mediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchAnimeQueryData_Page_media_mediaListEntry.serializer,
        json,
      );
}
