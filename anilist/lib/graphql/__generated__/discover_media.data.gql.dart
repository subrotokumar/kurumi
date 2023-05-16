// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_media.data.gql.g.dart';

abstract class GDiscoverMediaData
    implements Built<GDiscoverMediaData, GDiscoverMediaDataBuilder> {
  GDiscoverMediaData._();

  factory GDiscoverMediaData([Function(GDiscoverMediaDataBuilder b) updates]) =
      _$GDiscoverMediaData;

  static void _initializeBuilder(GDiscoverMediaDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDiscoverMediaData_Page? get Page;
  static Serializer<GDiscoverMediaData> get serializer =>
      _$gDiscoverMediaDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDiscoverMediaData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDiscoverMediaData.serializer,
        json,
      );
}

abstract class GDiscoverMediaData_Page
    implements Built<GDiscoverMediaData_Page, GDiscoverMediaData_PageBuilder> {
  GDiscoverMediaData_Page._();

  factory GDiscoverMediaData_Page(
          [Function(GDiscoverMediaData_PageBuilder b) updates]) =
      _$GDiscoverMediaData_Page;

  static void _initializeBuilder(GDiscoverMediaData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDiscoverMediaData_Page_pageInfo? get pageInfo;
  BuiltList<GDiscoverMediaData_Page_media?>? get media;
  static Serializer<GDiscoverMediaData_Page> get serializer =>
      _$gDiscoverMediaDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDiscoverMediaData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDiscoverMediaData_Page.serializer,
        json,
      );
}

abstract class GDiscoverMediaData_Page_pageInfo
    implements
        Built<GDiscoverMediaData_Page_pageInfo,
            GDiscoverMediaData_Page_pageInfoBuilder> {
  GDiscoverMediaData_Page_pageInfo._();

  factory GDiscoverMediaData_Page_pageInfo(
          [Function(GDiscoverMediaData_Page_pageInfoBuilder b) updates]) =
      _$GDiscoverMediaData_Page_pageInfo;

  static void _initializeBuilder(GDiscoverMediaData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GDiscoverMediaData_Page_pageInfo> get serializer =>
      _$gDiscoverMediaDataPagePageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDiscoverMediaData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDiscoverMediaData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GDiscoverMediaData_Page_media
    implements
        Built<GDiscoverMediaData_Page_media,
            GDiscoverMediaData_Page_mediaBuilder> {
  GDiscoverMediaData_Page_media._();

  factory GDiscoverMediaData_Page_media(
          [Function(GDiscoverMediaData_Page_mediaBuilder b) updates]) =
      _$GDiscoverMediaData_Page_media;

  static void _initializeBuilder(GDiscoverMediaData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get idMal;
  GDiscoverMediaData_Page_media_title? get title;
  String? get bannerImage;
  GDiscoverMediaData_Page_media_coverImage? get coverImage;
  _i2.GMediaType? get type;
  GDiscoverMediaData_Page_media_mediaListEntry? get mediaListEntry;
  static Serializer<GDiscoverMediaData_Page_media> get serializer =>
      _$gDiscoverMediaDataPageMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDiscoverMediaData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDiscoverMediaData_Page_media.serializer,
        json,
      );
}

abstract class GDiscoverMediaData_Page_media_title
    implements
        Built<GDiscoverMediaData_Page_media_title,
            GDiscoverMediaData_Page_media_titleBuilder> {
  GDiscoverMediaData_Page_media_title._();

  factory GDiscoverMediaData_Page_media_title(
          [Function(GDiscoverMediaData_Page_media_titleBuilder b) updates]) =
      _$GDiscoverMediaData_Page_media_title;

  static void _initializeBuilder(
          GDiscoverMediaData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get english;
  String? get romaji;
  String? get userPreferred;
  static Serializer<GDiscoverMediaData_Page_media_title> get serializer =>
      _$gDiscoverMediaDataPageMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDiscoverMediaData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaData_Page_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDiscoverMediaData_Page_media_title.serializer,
        json,
      );
}

abstract class GDiscoverMediaData_Page_media_coverImage
    implements
        Built<GDiscoverMediaData_Page_media_coverImage,
            GDiscoverMediaData_Page_media_coverImageBuilder> {
  GDiscoverMediaData_Page_media_coverImage._();

  factory GDiscoverMediaData_Page_media_coverImage(
      [Function(GDiscoverMediaData_Page_media_coverImageBuilder b)
          updates]) = _$GDiscoverMediaData_Page_media_coverImage;

  static void _initializeBuilder(
          GDiscoverMediaData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  String? get large;
  String? get medium;
  String? get color;
  static Serializer<GDiscoverMediaData_Page_media_coverImage> get serializer =>
      _$gDiscoverMediaDataPageMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDiscoverMediaData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDiscoverMediaData_Page_media_coverImage.serializer,
        json,
      );
}

abstract class GDiscoverMediaData_Page_media_mediaListEntry
    implements
        Built<GDiscoverMediaData_Page_media_mediaListEntry,
            GDiscoverMediaData_Page_media_mediaListEntryBuilder> {
  GDiscoverMediaData_Page_media_mediaListEntry._();

  factory GDiscoverMediaData_Page_media_mediaListEntry(
      [Function(GDiscoverMediaData_Page_media_mediaListEntryBuilder b)
          updates]) = _$GDiscoverMediaData_Page_media_mediaListEntry;

  static void _initializeBuilder(
          GDiscoverMediaData_Page_media_mediaListEntryBuilder b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GMediaListStatus? get status;
  static Serializer<GDiscoverMediaData_Page_media_mediaListEntry>
      get serializer => _$gDiscoverMediaDataPageMediaMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDiscoverMediaData_Page_media_mediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaData_Page_media_mediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDiscoverMediaData_Page_media_mediaListEntry.serializer,
        json,
      );
}
