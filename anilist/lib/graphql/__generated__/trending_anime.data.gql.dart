// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trending_anime.data.gql.g.dart';

abstract class GtrendingAnimeData
    implements Built<GtrendingAnimeData, GtrendingAnimeDataBuilder> {
  GtrendingAnimeData._();

  factory GtrendingAnimeData([Function(GtrendingAnimeDataBuilder b) updates]) =
      _$GtrendingAnimeData;

  static void _initializeBuilder(GtrendingAnimeDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GtrendingAnimeData_Page? get Page;
  static Serializer<GtrendingAnimeData> get serializer =>
      _$gtrendingAnimeDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtrendingAnimeData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtrendingAnimeData.serializer,
        json,
      );
}

abstract class GtrendingAnimeData_Page
    implements Built<GtrendingAnimeData_Page, GtrendingAnimeData_PageBuilder> {
  GtrendingAnimeData_Page._();

  factory GtrendingAnimeData_Page(
          [Function(GtrendingAnimeData_PageBuilder b) updates]) =
      _$GtrendingAnimeData_Page;

  static void _initializeBuilder(GtrendingAnimeData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GtrendingAnimeData_Page_pageInfo? get pageInfo;
  BuiltList<GtrendingAnimeData_Page_media?>? get media;
  static Serializer<GtrendingAnimeData_Page> get serializer =>
      _$gtrendingAnimeDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtrendingAnimeData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtrendingAnimeData_Page.serializer,
        json,
      );
}

abstract class GtrendingAnimeData_Page_pageInfo
    implements
        Built<GtrendingAnimeData_Page_pageInfo,
            GtrendingAnimeData_Page_pageInfoBuilder> {
  GtrendingAnimeData_Page_pageInfo._();

  factory GtrendingAnimeData_Page_pageInfo(
          [Function(GtrendingAnimeData_Page_pageInfoBuilder b) updates]) =
      _$GtrendingAnimeData_Page_pageInfo;

  static void _initializeBuilder(GtrendingAnimeData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GtrendingAnimeData_Page_pageInfo> get serializer =>
      _$gtrendingAnimeDataPagePageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtrendingAnimeData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtrendingAnimeData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GtrendingAnimeData_Page_media
    implements
        Built<GtrendingAnimeData_Page_media,
            GtrendingAnimeData_Page_mediaBuilder> {
  GtrendingAnimeData_Page_media._();

  factory GtrendingAnimeData_Page_media(
          [Function(GtrendingAnimeData_Page_mediaBuilder b) updates]) =
      _$GtrendingAnimeData_Page_media;

  static void _initializeBuilder(GtrendingAnimeData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get idMal;
  GtrendingAnimeData_Page_media_title? get title;
  String? get bannerImage;
  GtrendingAnimeData_Page_media_coverImage? get coverImage;
  static Serializer<GtrendingAnimeData_Page_media> get serializer =>
      _$gtrendingAnimeDataPageMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtrendingAnimeData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtrendingAnimeData_Page_media.serializer,
        json,
      );
}

abstract class GtrendingAnimeData_Page_media_title
    implements
        Built<GtrendingAnimeData_Page_media_title,
            GtrendingAnimeData_Page_media_titleBuilder> {
  GtrendingAnimeData_Page_media_title._();

  factory GtrendingAnimeData_Page_media_title(
          [Function(GtrendingAnimeData_Page_media_titleBuilder b) updates]) =
      _$GtrendingAnimeData_Page_media_title;

  static void _initializeBuilder(
          GtrendingAnimeData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get romaji;
  String? get english;
  String? get userPreferred;
  static Serializer<GtrendingAnimeData_Page_media_title> get serializer =>
      _$gtrendingAnimeDataPageMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtrendingAnimeData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeData_Page_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtrendingAnimeData_Page_media_title.serializer,
        json,
      );
}

abstract class GtrendingAnimeData_Page_media_coverImage
    implements
        Built<GtrendingAnimeData_Page_media_coverImage,
            GtrendingAnimeData_Page_media_coverImageBuilder> {
  GtrendingAnimeData_Page_media_coverImage._();

  factory GtrendingAnimeData_Page_media_coverImage(
      [Function(GtrendingAnimeData_Page_media_coverImageBuilder b)
          updates]) = _$GtrendingAnimeData_Page_media_coverImage;

  static void _initializeBuilder(
          GtrendingAnimeData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  String? get large;
  String? get medium;
  String? get color;
  static Serializer<GtrendingAnimeData_Page_media_coverImage> get serializer =>
      _$gtrendingAnimeDataPageMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtrendingAnimeData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtrendingAnimeData_Page_media_coverImage.serializer,
        json,
      );
}
