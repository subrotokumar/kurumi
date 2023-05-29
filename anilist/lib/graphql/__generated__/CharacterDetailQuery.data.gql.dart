// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'CharacterDetailQuery.data.gql.g.dart';

abstract class GCharacterDetailQueryData
    implements
        Built<GCharacterDetailQueryData, GCharacterDetailQueryDataBuilder> {
  GCharacterDetailQueryData._();

  factory GCharacterDetailQueryData(
          [Function(GCharacterDetailQueryDataBuilder b) updates]) =
      _$GCharacterDetailQueryData;

  static void _initializeBuilder(GCharacterDetailQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCharacterDetailQueryData_Character? get Character;
  static Serializer<GCharacterDetailQueryData> get serializer =>
      _$gCharacterDetailQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character
    implements
        Built<GCharacterDetailQueryData_Character,
            GCharacterDetailQueryData_CharacterBuilder> {
  GCharacterDetailQueryData_Character._();

  factory GCharacterDetailQueryData_Character(
          [Function(GCharacterDetailQueryData_CharacterBuilder b) updates]) =
      _$GCharacterDetailQueryData_Character;

  static void _initializeBuilder(
          GCharacterDetailQueryData_CharacterBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GCharacterDetailQueryData_Character_name? get name;
  GCharacterDetailQueryData_Character_image? get image;
  String? get description;
  bool get isFavourite;
  String? get siteUrl;
  int? get favourites;
  String? get gender;
  String? get age;
  GCharacterDetailQueryData_Character_dateOfBirth? get dateOfBirth;
  String? get bloodType;
  GCharacterDetailQueryData_Character_media? get media;
  static Serializer<GCharacterDetailQueryData_Character> get serializer =>
      _$gCharacterDetailQueryDataCharacterSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_name
    implements
        Built<GCharacterDetailQueryData_Character_name,
            GCharacterDetailQueryData_Character_nameBuilder> {
  GCharacterDetailQueryData_Character_name._();

  factory GCharacterDetailQueryData_Character_name(
      [Function(GCharacterDetailQueryData_Character_nameBuilder b)
          updates]) = _$GCharacterDetailQueryData_Character_name;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_nameBuilder b) =>
      b..G__typename = 'CharacterName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  String? get userPreferred;
  static Serializer<GCharacterDetailQueryData_Character_name> get serializer =>
      _$gCharacterDetailQueryDataCharacterNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_name.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_name.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_image
    implements
        Built<GCharacterDetailQueryData_Character_image,
            GCharacterDetailQueryData_Character_imageBuilder> {
  GCharacterDetailQueryData_Character_image._();

  factory GCharacterDetailQueryData_Character_image(
      [Function(GCharacterDetailQueryData_Character_imageBuilder b)
          updates]) = _$GCharacterDetailQueryData_Character_image;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_imageBuilder b) =>
      b..G__typename = 'CharacterImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  String? get medium;
  static Serializer<GCharacterDetailQueryData_Character_image> get serializer =>
      _$gCharacterDetailQueryDataCharacterImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_image.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_image.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_dateOfBirth
    implements
        Built<GCharacterDetailQueryData_Character_dateOfBirth,
            GCharacterDetailQueryData_Character_dateOfBirthBuilder> {
  GCharacterDetailQueryData_Character_dateOfBirth._();

  factory GCharacterDetailQueryData_Character_dateOfBirth(
      [Function(GCharacterDetailQueryData_Character_dateOfBirthBuilder b)
          updates]) = _$GCharacterDetailQueryData_Character_dateOfBirth;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_dateOfBirthBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get day;
  int? get month;
  int? get year;
  static Serializer<GCharacterDetailQueryData_Character_dateOfBirth>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterDateOfBirthSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_dateOfBirth.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_dateOfBirth? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_dateOfBirth.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_media
    implements
        Built<GCharacterDetailQueryData_Character_media,
            GCharacterDetailQueryData_Character_mediaBuilder> {
  GCharacterDetailQueryData_Character_media._();

  factory GCharacterDetailQueryData_Character_media(
      [Function(GCharacterDetailQueryData_Character_mediaBuilder b)
          updates]) = _$GCharacterDetailQueryData_Character_media;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_mediaBuilder b) =>
      b..G__typename = 'MediaConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GCharacterDetailQueryData_Character_media_edges?>? get edges;
  GCharacterDetailQueryData_Character_media_pageInfo? get pageInfo;
  static Serializer<GCharacterDetailQueryData_Character_media> get serializer =>
      _$gCharacterDetailQueryDataCharacterMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_media.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_media_edges
    implements
        Built<GCharacterDetailQueryData_Character_media_edges,
            GCharacterDetailQueryData_Character_media_edgesBuilder> {
  GCharacterDetailQueryData_Character_media_edges._();

  factory GCharacterDetailQueryData_Character_media_edges(
      [Function(GCharacterDetailQueryData_Character_media_edgesBuilder b)
          updates]) = _$GCharacterDetailQueryData_Character_media_edges;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edgesBuilder b) =>
      b..G__typename = 'MediaEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCharacterDetailQueryData_Character_media_edges_node? get node;
  _i2.GMediaRelation? get relationType;
  _i2.GCharacterRole? get characterRole;
  String? get staffRole;
  BuiltList<GCharacterDetailQueryData_Character_media_edges_voiceActors?>?
      get voiceActors;
  static Serializer<GCharacterDetailQueryData_Character_media_edges>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_media_edges.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_media_edges_node
    implements
        Built<GCharacterDetailQueryData_Character_media_edges_node,
            GCharacterDetailQueryData_Character_media_edges_nodeBuilder> {
  GCharacterDetailQueryData_Character_media_edges_node._();

  factory GCharacterDetailQueryData_Character_media_edges_node(
      [Function(GCharacterDetailQueryData_Character_media_edges_nodeBuilder b)
          updates]) = _$GCharacterDetailQueryData_Character_media_edges_node;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_nodeBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GCharacterDetailQueryData_Character_media_edges_node_title? get title;
  GCharacterDetailQueryData_Character_media_edges_node_coverImage?
      get coverImage;
  _i2.GMediaType? get type;
  _i2.GMediaFormat? get format;
  GCharacterDetailQueryData_Character_media_edges_node_startDate? get startDate;
  int? get averageScore;
  int? get popularity;
  int? get favourites;
  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry?
      get mediaListEntry;
  static Serializer<GCharacterDetailQueryData_Character_media_edges_node>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_media_edges_node.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_media_edges_node_title
    implements
        Built<GCharacterDetailQueryData_Character_media_edges_node_title,
            GCharacterDetailQueryData_Character_media_edges_node_titleBuilder> {
  GCharacterDetailQueryData_Character_media_edges_node_title._();

  factory GCharacterDetailQueryData_Character_media_edges_node_title(
      [Function(
              GCharacterDetailQueryData_Character_media_edges_node_titleBuilder
                  b)
          updates]) = _$GCharacterDetailQueryData_Character_media_edges_node_title;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_node_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<GCharacterDetailQueryData_Character_media_edges_node_title>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesNodeTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_node_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_node_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_media_edges_node_title.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_media_edges_node_coverImage
    implements
        Built<GCharacterDetailQueryData_Character_media_edges_node_coverImage,
            GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder> {
  GCharacterDetailQueryData_Character_media_edges_node_coverImage._();

  factory GCharacterDetailQueryData_Character_media_edges_node_coverImage(
          [Function(
                  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder
                      b)
              updates]) =
      _$GCharacterDetailQueryData_Character_media_edges_node_coverImage;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<
          GCharacterDetailQueryData_Character_media_edges_node_coverImage>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesNodeCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_node_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_node_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterDetailQueryData_Character_media_edges_node_coverImage
                .serializer,
            json,
          );
}

abstract class GCharacterDetailQueryData_Character_media_edges_node_startDate
    implements
        Built<GCharacterDetailQueryData_Character_media_edges_node_startDate,
            GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder> {
  GCharacterDetailQueryData_Character_media_edges_node_startDate._();

  factory GCharacterDetailQueryData_Character_media_edges_node_startDate(
          [Function(
                  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder
                      b)
              updates]) =
      _$GCharacterDetailQueryData_Character_media_edges_node_startDate;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder
              b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<
          GCharacterDetailQueryData_Character_media_edges_node_startDate>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesNodeStartDateSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_node_startDate
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_node_startDate?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterDetailQueryData_Character_media_edges_node_startDate
                .serializer,
            json,
          );
}

abstract class GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
    implements
        Built<
            GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry,
            GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder> {
  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry._();

  factory GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry(
          [Function(
                  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder
                      b)
              updates]) =
      _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder
              b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GMediaListStatus? get status;
  static Serializer<
          GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesNodeMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
                .serializer,
            json,
          );
}

abstract class GCharacterDetailQueryData_Character_media_edges_voiceActors
    implements
        Built<GCharacterDetailQueryData_Character_media_edges_voiceActors,
            GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder> {
  GCharacterDetailQueryData_Character_media_edges_voiceActors._();

  factory GCharacterDetailQueryData_Character_media_edges_voiceActors(
      [Function(
              GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder
                  b)
          updates]) = _$GCharacterDetailQueryData_Character_media_edges_voiceActors;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder
              b) =>
      b..G__typename = 'Staff';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GCharacterDetailQueryData_Character_media_edges_voiceActors_name? get name;
  GCharacterDetailQueryData_Character_media_edges_voiceActors_image? get image;
  _i2.GStaffLanguage? get language;
  static Serializer<GCharacterDetailQueryData_Character_media_edges_voiceActors>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesVoiceActorsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_voiceActors.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_voiceActors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_media_edges_voiceActors.serializer,
        json,
      );
}

abstract class GCharacterDetailQueryData_Character_media_edges_voiceActors_name
    implements
        Built<GCharacterDetailQueryData_Character_media_edges_voiceActors_name,
            GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder> {
  GCharacterDetailQueryData_Character_media_edges_voiceActors_name._();

  factory GCharacterDetailQueryData_Character_media_edges_voiceActors_name(
          [Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder
                      b)
              updates]) =
      _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder
              b) =>
      b..G__typename = 'StaffName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  static Serializer<
          GCharacterDetailQueryData_Character_media_edges_voiceActors_name>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesVoiceActorsNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_voiceActors_name
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_voiceActors_name?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterDetailQueryData_Character_media_edges_voiceActors_name
                .serializer,
            json,
          );
}

abstract class GCharacterDetailQueryData_Character_media_edges_voiceActors_image
    implements
        Built<GCharacterDetailQueryData_Character_media_edges_voiceActors_image,
            GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder> {
  GCharacterDetailQueryData_Character_media_edges_voiceActors_image._();

  factory GCharacterDetailQueryData_Character_media_edges_voiceActors_image(
          [Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder
                      b)
              updates]) =
      _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder
              b) =>
      b..G__typename = 'StaffImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<
          GCharacterDetailQueryData_Character_media_edges_voiceActors_image>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaEdgesVoiceActorsImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_edges_voiceActors_image
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_edges_voiceActors_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterDetailQueryData_Character_media_edges_voiceActors_image
                .serializer,
            json,
          );
}

abstract class GCharacterDetailQueryData_Character_media_pageInfo
    implements
        Built<GCharacterDetailQueryData_Character_media_pageInfo,
            GCharacterDetailQueryData_Character_media_pageInfoBuilder> {
  GCharacterDetailQueryData_Character_media_pageInfo._();

  factory GCharacterDetailQueryData_Character_media_pageInfo(
      [Function(GCharacterDetailQueryData_Character_media_pageInfoBuilder b)
          updates]) = _$GCharacterDetailQueryData_Character_media_pageInfo;

  static void _initializeBuilder(
          GCharacterDetailQueryData_Character_media_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GCharacterDetailQueryData_Character_media_pageInfo>
      get serializer =>
          _$gCharacterDetailQueryDataCharacterMediaPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryData_Character_media_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryData_Character_media_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryData_Character_media_pageInfo.serializer,
        json,
      );
}
