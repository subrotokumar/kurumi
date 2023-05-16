// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'medialist_collection.data.gql.g.dart';

abstract class GMediaListCollectionData
    implements
        Built<GMediaListCollectionData, GMediaListCollectionDataBuilder> {
  GMediaListCollectionData._();

  factory GMediaListCollectionData(
          [Function(GMediaListCollectionDataBuilder b) updates]) =
      _$GMediaListCollectionData;

  static void _initializeBuilder(GMediaListCollectionDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaListCollectionData_MediaListCollection? get MediaListCollection;
  static Serializer<GMediaListCollectionData> get serializer =>
      _$gMediaListCollectionDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListCollectionData.serializer,
        json,
      );
}

abstract class GMediaListCollectionData_MediaListCollection
    implements
        Built<GMediaListCollectionData_MediaListCollection,
            GMediaListCollectionData_MediaListCollectionBuilder> {
  GMediaListCollectionData_MediaListCollection._();

  factory GMediaListCollectionData_MediaListCollection(
      [Function(GMediaListCollectionData_MediaListCollectionBuilder b)
          updates]) = _$GMediaListCollectionData_MediaListCollection;

  static void _initializeBuilder(
          GMediaListCollectionData_MediaListCollectionBuilder b) =>
      b..G__typename = 'MediaListCollection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaListCollectionData_MediaListCollection_lists?>? get lists;
  static Serializer<GMediaListCollectionData_MediaListCollection>
      get serializer => _$gMediaListCollectionDataMediaListCollectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData_MediaListCollection.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData_MediaListCollection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListCollectionData_MediaListCollection.serializer,
        json,
      );
}

abstract class GMediaListCollectionData_MediaListCollection_lists
    implements
        Built<GMediaListCollectionData_MediaListCollection_lists,
            GMediaListCollectionData_MediaListCollection_listsBuilder> {
  GMediaListCollectionData_MediaListCollection_lists._();

  factory GMediaListCollectionData_MediaListCollection_lists(
      [Function(GMediaListCollectionData_MediaListCollection_listsBuilder b)
          updates]) = _$GMediaListCollectionData_MediaListCollection_lists;

  static void _initializeBuilder(
          GMediaListCollectionData_MediaListCollection_listsBuilder b) =>
      b..G__typename = 'MediaListGroup';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaListCollectionData_MediaListCollection_lists_entries?>?
      get entries;
  static Serializer<GMediaListCollectionData_MediaListCollection_lists>
      get serializer =>
          _$gMediaListCollectionDataMediaListCollectionListsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData_MediaListCollection_lists.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData_MediaListCollection_lists? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListCollectionData_MediaListCollection_lists.serializer,
        json,
      );
}

abstract class GMediaListCollectionData_MediaListCollection_lists_entries
    implements
        Built<GMediaListCollectionData_MediaListCollection_lists_entries,
            GMediaListCollectionData_MediaListCollection_lists_entriesBuilder> {
  GMediaListCollectionData_MediaListCollection_lists_entries._();

  factory GMediaListCollectionData_MediaListCollection_lists_entries(
      [Function(
              GMediaListCollectionData_MediaListCollection_lists_entriesBuilder
                  b)
          updates]) = _$GMediaListCollectionData_MediaListCollection_lists_entries;

  static void _initializeBuilder(
          GMediaListCollectionData_MediaListCollection_lists_entriesBuilder
              b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaListCollectionData_MediaListCollection_lists_entries_media? get media;
  static Serializer<GMediaListCollectionData_MediaListCollection_lists_entries>
      get serializer =>
          _$gMediaListCollectionDataMediaListCollectionListsEntriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData_MediaListCollection_lists_entries.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData_MediaListCollection_lists_entries? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListCollectionData_MediaListCollection_lists_entries.serializer,
        json,
      );
}

abstract class GMediaListCollectionData_MediaListCollection_lists_entries_media
    implements
        Built<GMediaListCollectionData_MediaListCollection_lists_entries_media,
            GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder> {
  GMediaListCollectionData_MediaListCollection_lists_entries_media._();

  factory GMediaListCollectionData_MediaListCollection_lists_entries_media(
          [Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder
                      b)
              updates]) =
      _$GMediaListCollectionData_MediaListCollection_lists_entries_media;

  static void _initializeBuilder(
          GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder
              b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry?
      get mediaListEntry;
  int get id;
  GMediaListCollectionData_MediaListCollection_lists_entries_media_title?
      get title;
  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage?
      get coverImage;
  String? get bannerImage;
  int? get episodes;
  int? get chapters;
  int? get volumes;
  _i2.GMediaFormat? get format;
  static Serializer<
          GMediaListCollectionData_MediaListCollection_lists_entries_media>
      get serializer =>
          _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData_MediaListCollection_lists_entries_media
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData_MediaListCollection_lists_entries_media?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListCollectionData_MediaListCollection_lists_entries_media
                .serializer,
            json,
          );
}

abstract class GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
    implements
        Built<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry,
            GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder> {
  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry._();

  factory GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry(
          [Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder
                      b)
              updates]) =
      _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry;

  static void _initializeBuilder(
          GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder
              b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get userId;
  _i2.GMediaListStatus? get status;
  double? get score;
  int? get progress;
  int? get progressVolumes;
  static Serializer<
          GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry>
      get serializer =>
          _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
                .serializer,
            json,
          );
}

abstract class GMediaListCollectionData_MediaListCollection_lists_entries_media_title
    implements
        Built<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_title,
            GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder> {
  GMediaListCollectionData_MediaListCollection_lists_entries_media_title._();

  factory GMediaListCollectionData_MediaListCollection_lists_entries_media_title(
          [Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder
                      b)
              updates]) =
      _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title;

  static void _initializeBuilder(
          GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get romaji;
  String? get english;
  String? get userPreferred;
  static Serializer<
          GMediaListCollectionData_MediaListCollection_lists_entries_media_title>
      get serializer =>
          _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData_MediaListCollection_lists_entries_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData_MediaListCollection_lists_entries_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListCollectionData_MediaListCollection_lists_entries_media_title
                .serializer,
            json,
          );
}

abstract class GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
    implements
        Built<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage,
            GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder> {
  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage._();

  factory GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage(
          [Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder
                      b)
              updates]) =
      _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage;

  static void _initializeBuilder(
          GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  String? get large;
  String? get extraLarge;
  String? get color;
  static Serializer<
          GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage>
      get serializer =>
          _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
                .serializer,
            json,
          );
}
