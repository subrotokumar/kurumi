// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'SearchMangaQuery.data.gql.g.dart';

abstract class GSearchMangaQueryData
    implements Built<GSearchMangaQueryData, GSearchMangaQueryDataBuilder> {
  GSearchMangaQueryData._();

  factory GSearchMangaQueryData(
          [Function(GSearchMangaQueryDataBuilder b) updates]) =
      _$GSearchMangaQueryData;

  static void _initializeBuilder(GSearchMangaQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchMangaQueryData_Page? get Page;
  static Serializer<GSearchMangaQueryData> get serializer =>
      _$gSearchMangaQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page
    implements
        Built<GSearchMangaQueryData_Page, GSearchMangaQueryData_PageBuilder> {
  GSearchMangaQueryData_Page._();

  factory GSearchMangaQueryData_Page(
          [Function(GSearchMangaQueryData_PageBuilder b) updates]) =
      _$GSearchMangaQueryData_Page;

  static void _initializeBuilder(GSearchMangaQueryData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchMangaQueryData_Page_pageInfo? get pageInfo;
  BuiltList<GSearchMangaQueryData_Page_media?>? get media;
  static Serializer<GSearchMangaQueryData_Page> get serializer =>
      _$gSearchMangaQueryDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_pageInfo
    implements
        Built<GSearchMangaQueryData_Page_pageInfo,
            GSearchMangaQueryData_Page_pageInfoBuilder> {
  GSearchMangaQueryData_Page_pageInfo._();

  factory GSearchMangaQueryData_Page_pageInfo(
          [Function(GSearchMangaQueryData_Page_pageInfoBuilder b) updates]) =
      _$GSearchMangaQueryData_Page_pageInfo;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GSearchMangaQueryData_Page_pageInfo> get serializer =>
      _$gSearchMangaQueryDataPagePageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media
    implements
        Built<GSearchMangaQueryData_Page_media,
            GSearchMangaQueryData_Page_mediaBuilder> {
  GSearchMangaQueryData_Page_media._();

  factory GSearchMangaQueryData_Page_media(
          [Function(GSearchMangaQueryData_Page_mediaBuilder b) updates]) =
      _$GSearchMangaQueryData_Page_media;

  static void _initializeBuilder(GSearchMangaQueryData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GSearchMangaQueryData_Page_media_title? get title;
  GSearchMangaQueryData_Page_media_coverImage? get coverImage;
  _i2.GMediaType? get type;
  _i2.GMediaFormat? get format;
  int? get chapters;
  int? get volumes;
  int? get averageScore;
  int? get favourites;
  GSearchMangaQueryData_Page_media_startDate? get startDate;
  BuiltList<String?>? get genres;
  GSearchMangaQueryData_Page_media_staff? get staff;
  GSearchMangaQueryData_Page_media_mediaListEntry? get mediaListEntry;
  static Serializer<GSearchMangaQueryData_Page_media> get serializer =>
      _$gSearchMangaQueryDataPageMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_title
    implements
        Built<GSearchMangaQueryData_Page_media_title,
            GSearchMangaQueryData_Page_media_titleBuilder> {
  GSearchMangaQueryData_Page_media_title._();

  factory GSearchMangaQueryData_Page_media_title(
          [Function(GSearchMangaQueryData_Page_media_titleBuilder b) updates]) =
      _$GSearchMangaQueryData_Page_media_title;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<GSearchMangaQueryData_Page_media_title> get serializer =>
      _$gSearchMangaQueryDataPageMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_title.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_coverImage
    implements
        Built<GSearchMangaQueryData_Page_media_coverImage,
            GSearchMangaQueryData_Page_media_coverImageBuilder> {
  GSearchMangaQueryData_Page_media_coverImage._();

  factory GSearchMangaQueryData_Page_media_coverImage(
      [Function(GSearchMangaQueryData_Page_media_coverImageBuilder b)
          updates]) = _$GSearchMangaQueryData_Page_media_coverImage;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GSearchMangaQueryData_Page_media_coverImage>
      get serializer => _$gSearchMangaQueryDataPageMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_coverImage.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_startDate
    implements
        Built<GSearchMangaQueryData_Page_media_startDate,
            GSearchMangaQueryData_Page_media_startDateBuilder> {
  GSearchMangaQueryData_Page_media_startDate._();

  factory GSearchMangaQueryData_Page_media_startDate(
      [Function(GSearchMangaQueryData_Page_media_startDateBuilder b)
          updates]) = _$GSearchMangaQueryData_Page_media_startDate;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_startDateBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<GSearchMangaQueryData_Page_media_startDate>
      get serializer => _$gSearchMangaQueryDataPageMediaStartDateSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_startDate.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_staff
    implements
        Built<GSearchMangaQueryData_Page_media_staff,
            GSearchMangaQueryData_Page_media_staffBuilder> {
  GSearchMangaQueryData_Page_media_staff._();

  factory GSearchMangaQueryData_Page_media_staff(
          [Function(GSearchMangaQueryData_Page_media_staffBuilder b) updates]) =
      _$GSearchMangaQueryData_Page_media_staff;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_staffBuilder b) =>
      b..G__typename = 'StaffConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GSearchMangaQueryData_Page_media_staff_edges?>? get edges;
  static Serializer<GSearchMangaQueryData_Page_media_staff> get serializer =>
      _$gSearchMangaQueryDataPageMediaStaffSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_staff.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_staff? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_staff.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_staff_edges
    implements
        Built<GSearchMangaQueryData_Page_media_staff_edges,
            GSearchMangaQueryData_Page_media_staff_edgesBuilder> {
  GSearchMangaQueryData_Page_media_staff_edges._();

  factory GSearchMangaQueryData_Page_media_staff_edges(
      [Function(GSearchMangaQueryData_Page_media_staff_edgesBuilder b)
          updates]) = _$GSearchMangaQueryData_Page_media_staff_edges;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_staff_edgesBuilder b) =>
      b..G__typename = 'StaffEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchMangaQueryData_Page_media_staff_edges_node? get node;
  String? get role;
  static Serializer<GSearchMangaQueryData_Page_media_staff_edges>
      get serializer => _$gSearchMangaQueryDataPageMediaStaffEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_staff_edges.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_staff_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_staff_edges.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_staff_edges_node
    implements
        Built<GSearchMangaQueryData_Page_media_staff_edges_node,
            GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder> {
  GSearchMangaQueryData_Page_media_staff_edges_node._();

  factory GSearchMangaQueryData_Page_media_staff_edges_node(
      [Function(GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder b)
          updates]) = _$GSearchMangaQueryData_Page_media_staff_edges_node;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_staff_edges_nodeBuilder b) =>
      b..G__typename = 'Staff';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GSearchMangaQueryData_Page_media_staff_edges_node_name? get name;
  static Serializer<GSearchMangaQueryData_Page_media_staff_edges_node>
      get serializer =>
          _$gSearchMangaQueryDataPageMediaStaffEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_staff_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_staff_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_staff_edges_node.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_staff_edges_node_name
    implements
        Built<GSearchMangaQueryData_Page_media_staff_edges_node_name,
            GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder> {
  GSearchMangaQueryData_Page_media_staff_edges_node_name._();

  factory GSearchMangaQueryData_Page_media_staff_edges_node_name(
      [Function(GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder b)
          updates]) = _$GSearchMangaQueryData_Page_media_staff_edges_node_name;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_staff_edges_node_nameBuilder b) =>
      b..G__typename = 'StaffName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  static Serializer<GSearchMangaQueryData_Page_media_staff_edges_node_name>
      get serializer =>
          _$gSearchMangaQueryDataPageMediaStaffEdgesNodeNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_staff_edges_node_name.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_staff_edges_node_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_staff_edges_node_name.serializer,
        json,
      );
}

abstract class GSearchMangaQueryData_Page_media_mediaListEntry
    implements
        Built<GSearchMangaQueryData_Page_media_mediaListEntry,
            GSearchMangaQueryData_Page_media_mediaListEntryBuilder> {
  GSearchMangaQueryData_Page_media_mediaListEntry._();

  factory GSearchMangaQueryData_Page_media_mediaListEntry(
      [Function(GSearchMangaQueryData_Page_media_mediaListEntryBuilder b)
          updates]) = _$GSearchMangaQueryData_Page_media_mediaListEntry;

  static void _initializeBuilder(
          GSearchMangaQueryData_Page_media_mediaListEntryBuilder b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GMediaListStatus? get status;
  static Serializer<GSearchMangaQueryData_Page_media_mediaListEntry>
      get serializer =>
          _$gSearchMangaQueryDataPageMediaMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchMangaQueryData_Page_media_mediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryData_Page_media_mediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchMangaQueryData_Page_media_mediaListEntry.serializer,
        json,
      );
}
