// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_detail_query.data.gql.g.dart';

abstract class GMediaDetailQueryData
    implements Built<GMediaDetailQueryData, GMediaDetailQueryDataBuilder> {
  GMediaDetailQueryData._();

  factory GMediaDetailQueryData(
          [Function(GMediaDetailQueryDataBuilder b) updates]) =
      _$GMediaDetailQueryData;

  static void _initializeBuilder(GMediaDetailQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaDetailQueryData_Media? get Media;
  GMediaDetailQueryData_Page? get Page;
  static Serializer<GMediaDetailQueryData> get serializer =>
      _$gMediaDetailQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media
    implements
        Built<GMediaDetailQueryData_Media, GMediaDetailQueryData_MediaBuilder> {
  GMediaDetailQueryData_Media._();

  factory GMediaDetailQueryData_Media(
          [Function(GMediaDetailQueryData_MediaBuilder b) updates]) =
      _$GMediaDetailQueryData_Media;

  static void _initializeBuilder(GMediaDetailQueryData_MediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get idMal;
  GMediaDetailQueryData_Media_title? get title;
  String? get bannerImage;
  GMediaDetailQueryData_Media_coverImage? get coverImage;
  GMediaDetailQueryData_Media_nextAiringEpisode? get nextAiringEpisode;
  _i2.GMediaType? get type;
  _i2.GMediaStatus? get status;
  String? get description;
  GMediaDetailQueryData_Media_startDate? get startDate;
  GMediaDetailQueryData_Media_endDate? get endDate;
  _i2.GMediaSeason? get season;
  int? get seasonYear;
  int? get episodes;
  int? get duration;
  int? get chapters;
  int? get volumes;
  _i2.GMediaSource? get source;
  String? get hashtag;
  GMediaDetailQueryData_Media_trailer? get trailer;
  int? get updatedAt;
  BuiltList<String?>? get genres;
  BuiltList<String?>? get synonyms;
  int? get averageScore;
  int? get meanScore;
  _i2.GMediaFormat? get format;
  int? get popularity;
  int? get favourites;
  bool get isFavourite;
  BuiltList<GMediaDetailQueryData_Media_tags?>? get tags;
  GMediaDetailQueryData_Media_relations? get relations;
  GMediaDetailQueryData_Media_mediaListEntry? get mediaListEntry;
  GMediaDetailQueryData_Media_characters? get characters;
  GMediaDetailQueryData_Media_studios? get studios;
  bool? get isAdult;
  BuiltList<GMediaDetailQueryData_Media_externalLinks?>? get externalLinks;
  GMediaDetailQueryData_Media_reviews? get reviews;
  static Serializer<GMediaDetailQueryData_Media> get serializer =>
      _$gMediaDetailQueryDataMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_title
    implements
        Built<GMediaDetailQueryData_Media_title,
            GMediaDetailQueryData_Media_titleBuilder> {
  GMediaDetailQueryData_Media_title._();

  factory GMediaDetailQueryData_Media_title(
          [Function(GMediaDetailQueryData_Media_titleBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_title;

  static void _initializeBuilder(GMediaDetailQueryData_Media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get english;
  String? get romaji;
  String? get userPreferred;
  static Serializer<GMediaDetailQueryData_Media_title> get serializer =>
      _$gMediaDetailQueryDataMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_title.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_coverImage
    implements
        Built<GMediaDetailQueryData_Media_coverImage,
            GMediaDetailQueryData_Media_coverImageBuilder> {
  GMediaDetailQueryData_Media_coverImage._();

  factory GMediaDetailQueryData_Media_coverImage(
          [Function(GMediaDetailQueryData_Media_coverImageBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_coverImage;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  String? get large;
  String? get medium;
  String? get color;
  static Serializer<GMediaDetailQueryData_Media_coverImage> get serializer =>
      _$gMediaDetailQueryDataMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_coverImage.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_nextAiringEpisode
    implements
        Built<GMediaDetailQueryData_Media_nextAiringEpisode,
            GMediaDetailQueryData_Media_nextAiringEpisodeBuilder> {
  GMediaDetailQueryData_Media_nextAiringEpisode._();

  factory GMediaDetailQueryData_Media_nextAiringEpisode(
      [Function(GMediaDetailQueryData_Media_nextAiringEpisodeBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_nextAiringEpisode;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_nextAiringEpisodeBuilder b) =>
      b..G__typename = 'AiringSchedule';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get airingAt;
  int get episode;
  static Serializer<GMediaDetailQueryData_Media_nextAiringEpisode>
      get serializer => _$gMediaDetailQueryDataMediaNextAiringEpisodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_nextAiringEpisode.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_nextAiringEpisode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_nextAiringEpisode.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_startDate
    implements
        Built<GMediaDetailQueryData_Media_startDate,
            GMediaDetailQueryData_Media_startDateBuilder> {
  GMediaDetailQueryData_Media_startDate._();

  factory GMediaDetailQueryData_Media_startDate(
          [Function(GMediaDetailQueryData_Media_startDateBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_startDate;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_startDateBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get day;
  int? get month;
  int? get year;
  static Serializer<GMediaDetailQueryData_Media_startDate> get serializer =>
      _$gMediaDetailQueryDataMediaStartDateSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_startDate.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_endDate
    implements
        Built<GMediaDetailQueryData_Media_endDate,
            GMediaDetailQueryData_Media_endDateBuilder> {
  GMediaDetailQueryData_Media_endDate._();

  factory GMediaDetailQueryData_Media_endDate(
          [Function(GMediaDetailQueryData_Media_endDateBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_endDate;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_endDateBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get day;
  int? get month;
  int? get year;
  static Serializer<GMediaDetailQueryData_Media_endDate> get serializer =>
      _$gMediaDetailQueryDataMediaEndDateSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_endDate.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_endDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_endDate.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_trailer
    implements
        Built<GMediaDetailQueryData_Media_trailer,
            GMediaDetailQueryData_Media_trailerBuilder> {
  GMediaDetailQueryData_Media_trailer._();

  factory GMediaDetailQueryData_Media_trailer(
          [Function(GMediaDetailQueryData_Media_trailerBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_trailer;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_trailerBuilder b) =>
      b..G__typename = 'MediaTrailer';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get site;
  String? get thumbnail;
  static Serializer<GMediaDetailQueryData_Media_trailer> get serializer =>
      _$gMediaDetailQueryDataMediaTrailerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_trailer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_trailer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_trailer.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_tags
    implements
        Built<GMediaDetailQueryData_Media_tags,
            GMediaDetailQueryData_Media_tagsBuilder> {
  GMediaDetailQueryData_Media_tags._();

  factory GMediaDetailQueryData_Media_tags(
          [Function(GMediaDetailQueryData_Media_tagsBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_tags;

  static void _initializeBuilder(GMediaDetailQueryData_Media_tagsBuilder b) =>
      b..G__typename = 'MediaTag';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  bool? get isMediaSpoiler;
  int? get rank;
  static Serializer<GMediaDetailQueryData_Media_tags> get serializer =>
      _$gMediaDetailQueryDataMediaTagsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_tags.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_tags? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_tags.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_relations
    implements
        Built<GMediaDetailQueryData_Media_relations,
            GMediaDetailQueryData_Media_relationsBuilder> {
  GMediaDetailQueryData_Media_relations._();

  factory GMediaDetailQueryData_Media_relations(
          [Function(GMediaDetailQueryData_Media_relationsBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_relations;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_relationsBuilder b) =>
      b..G__typename = 'MediaConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaDetailQueryData_Media_relations_nodes?>? get nodes;
  static Serializer<GMediaDetailQueryData_Media_relations> get serializer =>
      _$gMediaDetailQueryDataMediaRelationsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_relations.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_relations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_relations.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_relations_nodes
    implements
        Built<GMediaDetailQueryData_Media_relations_nodes,
            GMediaDetailQueryData_Media_relations_nodesBuilder> {
  GMediaDetailQueryData_Media_relations_nodes._();

  factory GMediaDetailQueryData_Media_relations_nodes(
      [Function(GMediaDetailQueryData_Media_relations_nodesBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_relations_nodes;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_relations_nodesBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get idMal;
  GMediaDetailQueryData_Media_relations_nodes_title? get title;
  GMediaDetailQueryData_Media_relations_nodes_coverImage? get coverImage;
  _i2.GMediaFormat? get format;
  static Serializer<GMediaDetailQueryData_Media_relations_nodes>
      get serializer => _$gMediaDetailQueryDataMediaRelationsNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_relations_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_relations_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_relations_nodes.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_relations_nodes_title
    implements
        Built<GMediaDetailQueryData_Media_relations_nodes_title,
            GMediaDetailQueryData_Media_relations_nodes_titleBuilder> {
  GMediaDetailQueryData_Media_relations_nodes_title._();

  factory GMediaDetailQueryData_Media_relations_nodes_title(
      [Function(GMediaDetailQueryData_Media_relations_nodes_titleBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_relations_nodes_title;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_relations_nodes_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get romaji;
  String? get english;
  String? get userPreferred;
  static Serializer<GMediaDetailQueryData_Media_relations_nodes_title>
      get serializer =>
          _$gMediaDetailQueryDataMediaRelationsNodesTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_relations_nodes_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_relations_nodes_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_relations_nodes_title.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_relations_nodes_coverImage
    implements
        Built<GMediaDetailQueryData_Media_relations_nodes_coverImage,
            GMediaDetailQueryData_Media_relations_nodes_coverImageBuilder> {
  GMediaDetailQueryData_Media_relations_nodes_coverImage._();

  factory GMediaDetailQueryData_Media_relations_nodes_coverImage(
      [Function(GMediaDetailQueryData_Media_relations_nodes_coverImageBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_relations_nodes_coverImage;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_relations_nodes_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  String? get medium;
  static Serializer<GMediaDetailQueryData_Media_relations_nodes_coverImage>
      get serializer =>
          _$gMediaDetailQueryDataMediaRelationsNodesCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_relations_nodes_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_relations_nodes_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_relations_nodes_coverImage.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_mediaListEntry
    implements
        Built<GMediaDetailQueryData_Media_mediaListEntry,
            GMediaDetailQueryData_Media_mediaListEntryBuilder> {
  GMediaDetailQueryData_Media_mediaListEntry._();

  factory GMediaDetailQueryData_Media_mediaListEntry(
      [Function(GMediaDetailQueryData_Media_mediaListEntryBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_mediaListEntry;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_mediaListEntryBuilder b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get mediaId;
  int get userId;
  _i2.GMediaListStatus? get status;
  double? get score;
  int? get progress;
  int? get progressVolumes;
  int? get repeat;
  int? get priority;
  bool? get private;
  String? get notes;
  GMediaDetailQueryData_Media_mediaListEntry_startedAt? get startedAt;
  GMediaDetailQueryData_Media_mediaListEntry_completedAt? get completedAt;
  static Serializer<GMediaDetailQueryData_Media_mediaListEntry>
      get serializer => _$gMediaDetailQueryDataMediaMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_mediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_mediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_mediaListEntry.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_mediaListEntry_startedAt
    implements
        Built<GMediaDetailQueryData_Media_mediaListEntry_startedAt,
            GMediaDetailQueryData_Media_mediaListEntry_startedAtBuilder> {
  GMediaDetailQueryData_Media_mediaListEntry_startedAt._();

  factory GMediaDetailQueryData_Media_mediaListEntry_startedAt(
      [Function(GMediaDetailQueryData_Media_mediaListEntry_startedAtBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_mediaListEntry_startedAt;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_mediaListEntry_startedAtBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<GMediaDetailQueryData_Media_mediaListEntry_startedAt>
      get serializer =>
          _$gMediaDetailQueryDataMediaMediaListEntryStartedAtSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_mediaListEntry_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_mediaListEntry_startedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_mediaListEntry_startedAt.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_mediaListEntry_completedAt
    implements
        Built<GMediaDetailQueryData_Media_mediaListEntry_completedAt,
            GMediaDetailQueryData_Media_mediaListEntry_completedAtBuilder> {
  GMediaDetailQueryData_Media_mediaListEntry_completedAt._();

  factory GMediaDetailQueryData_Media_mediaListEntry_completedAt(
      [Function(GMediaDetailQueryData_Media_mediaListEntry_completedAtBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_mediaListEntry_completedAt;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_mediaListEntry_completedAtBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<GMediaDetailQueryData_Media_mediaListEntry_completedAt>
      get serializer =>
          _$gMediaDetailQueryDataMediaMediaListEntryCompletedAtSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_mediaListEntry_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_mediaListEntry_completedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_mediaListEntry_completedAt.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters
    implements
        Built<GMediaDetailQueryData_Media_characters,
            GMediaDetailQueryData_Media_charactersBuilder> {
  GMediaDetailQueryData_Media_characters._();

  factory GMediaDetailQueryData_Media_characters(
          [Function(GMediaDetailQueryData_Media_charactersBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_characters;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaDetailQueryData_Media_characters_edges?>? get edges;
  static Serializer<GMediaDetailQueryData_Media_characters> get serializer =>
      _$gMediaDetailQueryDataMediaCharactersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_characters.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters_edges
    implements
        Built<GMediaDetailQueryData_Media_characters_edges,
            GMediaDetailQueryData_Media_characters_edgesBuilder> {
  GMediaDetailQueryData_Media_characters_edges._();

  factory GMediaDetailQueryData_Media_characters_edges(
      [Function(GMediaDetailQueryData_Media_characters_edgesBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_characters_edges;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edgesBuilder b) =>
      b..G__typename = 'CharacterEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  _i2.GCharacterRole? get role;
  BuiltList<GMediaDetailQueryData_Media_characters_edges_voiceActors?>?
      get voiceActors;
  GMediaDetailQueryData_Media_characters_edges_node? get node;
  static Serializer<GMediaDetailQueryData_Media_characters_edges>
      get serializer => _$gMediaDetailQueryDataMediaCharactersEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_characters_edges.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters_edges_voiceActors
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_voiceActors,
            GMediaDetailQueryData_Media_characters_edges_voiceActorsBuilder> {
  GMediaDetailQueryData_Media_characters_edges_voiceActors._();

  factory GMediaDetailQueryData_Media_characters_edges_voiceActors(
      [Function(
              GMediaDetailQueryData_Media_characters_edges_voiceActorsBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_characters_edges_voiceActors;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_voiceActorsBuilder b) =>
      b..G__typename = 'Staff';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaDetailQueryData_Media_characters_edges_voiceActors_name? get name;
  String? get languageV2;
  GMediaDetailQueryData_Media_characters_edges_voiceActors_image? get image;
  static Serializer<GMediaDetailQueryData_Media_characters_edges_voiceActors>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesVoiceActorsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_voiceActors.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_voiceActors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_characters_edges_voiceActors.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters_edges_voiceActors_name
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_voiceActors_name,
            GMediaDetailQueryData_Media_characters_edges_voiceActors_nameBuilder> {
  GMediaDetailQueryData_Media_characters_edges_voiceActors_name._();

  factory GMediaDetailQueryData_Media_characters_edges_voiceActors_name(
          [Function(
                  GMediaDetailQueryData_Media_characters_edges_voiceActors_nameBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Media_characters_edges_voiceActors_name;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_voiceActors_nameBuilder
              b) =>
      b..G__typename = 'StaffName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  String? get userPreferred;
  static Serializer<
          GMediaDetailQueryData_Media_characters_edges_voiceActors_name>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesVoiceActorsNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_voiceActors_name
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_voiceActors_name?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Media_characters_edges_voiceActors_name
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Media_characters_edges_voiceActors_image
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_voiceActors_image,
            GMediaDetailQueryData_Media_characters_edges_voiceActors_imageBuilder> {
  GMediaDetailQueryData_Media_characters_edges_voiceActors_image._();

  factory GMediaDetailQueryData_Media_characters_edges_voiceActors_image(
          [Function(
                  GMediaDetailQueryData_Media_characters_edges_voiceActors_imageBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Media_characters_edges_voiceActors_image;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_voiceActors_imageBuilder
              b) =>
      b..G__typename = 'StaffImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  static Serializer<
          GMediaDetailQueryData_Media_characters_edges_voiceActors_image>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesVoiceActorsImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_voiceActors_image
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_voiceActors_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Media_characters_edges_voiceActors_image
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_node,
            GMediaDetailQueryData_Media_characters_edges_nodeBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node._();

  factory GMediaDetailQueryData_Media_characters_edges_node(
      [Function(GMediaDetailQueryData_Media_characters_edges_nodeBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_characters_edges_node;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_nodeBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaDetailQueryData_Media_characters_edges_node_name? get name;
  GMediaDetailQueryData_Media_characters_edges_node_image? get image;
  String? get gender;
  String? get age;
  GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth?
      get dateOfBirth;
  String? get bloodType;
  int? get favourites;
  bool get isFavourite;
  String? get siteUrl;
  String? get description;
  GMediaDetailQueryData_Media_characters_edges_node_media? get media;
  static Serializer<GMediaDetailQueryData_Media_characters_edges_node>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_characters_edges_node.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node_name
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_node_name,
            GMediaDetailQueryData_Media_characters_edges_node_nameBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node_name._();

  factory GMediaDetailQueryData_Media_characters_edges_node_name(
      [Function(GMediaDetailQueryData_Media_characters_edges_node_nameBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_characters_edges_node_name;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_node_nameBuilder b) =>
      b..G__typename = 'CharacterName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  String? get userPreferred;
  static Serializer<GMediaDetailQueryData_Media_characters_edges_node_name>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_name.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_name.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node_image
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_node_image,
            GMediaDetailQueryData_Media_characters_edges_node_imageBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node_image._();

  factory GMediaDetailQueryData_Media_characters_edges_node_image(
      [Function(
              GMediaDetailQueryData_Media_characters_edges_node_imageBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_characters_edges_node_image;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_node_imageBuilder b) =>
      b..G__typename = 'CharacterImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  String? get medium;
  static Serializer<GMediaDetailQueryData_Media_characters_edges_node_image>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_image.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_image.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth,
            GMediaDetailQueryData_Media_characters_edges_node_dateOfBirthBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth._();

  factory GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth(
          [Function(
                  GMediaDetailQueryData_Media_characters_edges_node_dateOfBirthBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_node_dateOfBirthBuilder
              b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get day;
  int? get month;
  int? get year;
  static Serializer<
          GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeDateOfBirthSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Media_characters_edges_node_dateOfBirth
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node_media
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_node_media,
            GMediaDetailQueryData_Media_characters_edges_node_mediaBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node_media._();

  factory GMediaDetailQueryData_Media_characters_edges_node_media(
      [Function(
              GMediaDetailQueryData_Media_characters_edges_node_mediaBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_characters_edges_node_media;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_node_mediaBuilder b) =>
      b..G__typename = 'MediaConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaDetailQueryData_Media_characters_edges_node_media_nodes?>?
      get nodes;
  static Serializer<GMediaDetailQueryData_Media_characters_edges_node_media>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_media.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node_media_nodes
    implements
        Built<GMediaDetailQueryData_Media_characters_edges_node_media_nodes,
            GMediaDetailQueryData_Media_characters_edges_node_media_nodesBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node_media_nodes._();

  factory GMediaDetailQueryData_Media_characters_edges_node_media_nodes(
          [Function(
                  GMediaDetailQueryData_Media_characters_edges_node_media_nodesBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Media_characters_edges_node_media_nodes;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_node_media_nodesBuilder
              b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title?
      get title;
  GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage?
      get coverImage;
  _i2.GMediaFormat? get format;
  _i2.GMediaType? get type;
  static Serializer<
          GMediaDetailQueryData_Media_characters_edges_node_media_nodes>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeMediaNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_media_nodes
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node_media_nodes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Media_characters_edges_node_media_nodes
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title
    implements
        Built<
            GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title,
            GMediaDetailQueryData_Media_characters_edges_node_media_nodes_titleBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title._();

  factory GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title(
          [Function(
                  GMediaDetailQueryData_Media_characters_edges_node_media_nodes_titleBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_node_media_nodes_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<
          GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeMediaNodesTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Media_characters_edges_node_media_nodes_title
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage
    implements
        Built<
            GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage,
            GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImageBuilder> {
  GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage._();

  factory GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage(
          [Function(
                  GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImageBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<
          GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage>
      get serializer =>
          _$gMediaDetailQueryDataMediaCharactersEdgesNodeMediaNodesCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Media_characters_edges_node_media_nodes_coverImage
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Media_studios
    implements
        Built<GMediaDetailQueryData_Media_studios,
            GMediaDetailQueryData_Media_studiosBuilder> {
  GMediaDetailQueryData_Media_studios._();

  factory GMediaDetailQueryData_Media_studios(
          [Function(GMediaDetailQueryData_Media_studiosBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_studios;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_studiosBuilder b) =>
      b..G__typename = 'StudioConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaDetailQueryData_Media_studios_pageInfo? get pageInfo;
  BuiltList<GMediaDetailQueryData_Media_studios_nodes?>? get nodes;
  static Serializer<GMediaDetailQueryData_Media_studios> get serializer =>
      _$gMediaDetailQueryDataMediaStudiosSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_studios.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_studios? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_studios.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_studios_pageInfo
    implements
        Built<GMediaDetailQueryData_Media_studios_pageInfo,
            GMediaDetailQueryData_Media_studios_pageInfoBuilder> {
  GMediaDetailQueryData_Media_studios_pageInfo._();

  factory GMediaDetailQueryData_Media_studios_pageInfo(
      [Function(GMediaDetailQueryData_Media_studios_pageInfoBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_studios_pageInfo;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_studios_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get perPage;
  int? get currentPage;
  static Serializer<GMediaDetailQueryData_Media_studios_pageInfo>
      get serializer => _$gMediaDetailQueryDataMediaStudiosPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_studios_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_studios_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_studios_pageInfo.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_studios_nodes
    implements
        Built<GMediaDetailQueryData_Media_studios_nodes,
            GMediaDetailQueryData_Media_studios_nodesBuilder> {
  GMediaDetailQueryData_Media_studios_nodes._();

  factory GMediaDetailQueryData_Media_studios_nodes(
      [Function(GMediaDetailQueryData_Media_studios_nodesBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_studios_nodes;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_studios_nodesBuilder b) =>
      b..G__typename = 'Studio';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GMediaDetailQueryData_Media_studios_nodes> get serializer =>
      _$gMediaDetailQueryDataMediaStudiosNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_studios_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_studios_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_studios_nodes.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_externalLinks
    implements
        Built<GMediaDetailQueryData_Media_externalLinks,
            GMediaDetailQueryData_Media_externalLinksBuilder> {
  GMediaDetailQueryData_Media_externalLinks._();

  factory GMediaDetailQueryData_Media_externalLinks(
      [Function(GMediaDetailQueryData_Media_externalLinksBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_externalLinks;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_externalLinksBuilder b) =>
      b..G__typename = 'MediaExternalLink';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get url;
  String get site;
  _i2.GExternalLinkType? get type;
  String? get icon;
  String? get color;
  static Serializer<GMediaDetailQueryData_Media_externalLinks> get serializer =>
      _$gMediaDetailQueryDataMediaExternalLinksSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_externalLinks.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_externalLinks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_externalLinks.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_reviews
    implements
        Built<GMediaDetailQueryData_Media_reviews,
            GMediaDetailQueryData_Media_reviewsBuilder> {
  GMediaDetailQueryData_Media_reviews._();

  factory GMediaDetailQueryData_Media_reviews(
          [Function(GMediaDetailQueryData_Media_reviewsBuilder b) updates]) =
      _$GMediaDetailQueryData_Media_reviews;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_reviewsBuilder b) =>
      b..G__typename = 'ReviewConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaDetailQueryData_Media_reviews_nodes?>? get nodes;
  static Serializer<GMediaDetailQueryData_Media_reviews> get serializer =>
      _$gMediaDetailQueryDataMediaReviewsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_reviews.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_reviews? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_reviews.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Media_reviews_nodes
    implements
        Built<GMediaDetailQueryData_Media_reviews_nodes,
            GMediaDetailQueryData_Media_reviews_nodesBuilder> {
  GMediaDetailQueryData_Media_reviews_nodes._();

  factory GMediaDetailQueryData_Media_reviews_nodes(
      [Function(GMediaDetailQueryData_Media_reviews_nodesBuilder b)
          updates]) = _$GMediaDetailQueryData_Media_reviews_nodes;

  static void _initializeBuilder(
          GMediaDetailQueryData_Media_reviews_nodesBuilder b) =>
      b..G__typename = 'Review';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get summary;
  String? get body;
  int? get rating;
  int? get ratingAmount;
  _i2.GReviewRating? get userRating;
  static Serializer<GMediaDetailQueryData_Media_reviews_nodes> get serializer =>
      _$gMediaDetailQueryDataMediaReviewsNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Media_reviews_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Media_reviews_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Media_reviews_nodes.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Page
    implements
        Built<GMediaDetailQueryData_Page, GMediaDetailQueryData_PageBuilder> {
  GMediaDetailQueryData_Page._();

  factory GMediaDetailQueryData_Page(
          [Function(GMediaDetailQueryData_PageBuilder b) updates]) =
      _$GMediaDetailQueryData_Page;

  static void _initializeBuilder(GMediaDetailQueryData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaDetailQueryData_Page_recommendations?>? get recommendations;
  static Serializer<GMediaDetailQueryData_Page> get serializer =>
      _$gMediaDetailQueryDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Page.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Page_recommendations
    implements
        Built<GMediaDetailQueryData_Page_recommendations,
            GMediaDetailQueryData_Page_recommendationsBuilder> {
  GMediaDetailQueryData_Page_recommendations._();

  factory GMediaDetailQueryData_Page_recommendations(
      [Function(GMediaDetailQueryData_Page_recommendationsBuilder b)
          updates]) = _$GMediaDetailQueryData_Page_recommendations;

  static void _initializeBuilder(
          GMediaDetailQueryData_Page_recommendationsBuilder b) =>
      b..G__typename = 'Recommendation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaDetailQueryData_Page_recommendations_mediaRecommendation?
      get mediaRecommendation;
  static Serializer<GMediaDetailQueryData_Page_recommendations>
      get serializer => _$gMediaDetailQueryDataPageRecommendationsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Page_recommendations.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Page_recommendations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryData_Page_recommendations.serializer,
        json,
      );
}

abstract class GMediaDetailQueryData_Page_recommendations_mediaRecommendation
    implements
        Built<GMediaDetailQueryData_Page_recommendations_mediaRecommendation,
            GMediaDetailQueryData_Page_recommendations_mediaRecommendationBuilder> {
  GMediaDetailQueryData_Page_recommendations_mediaRecommendation._();

  factory GMediaDetailQueryData_Page_recommendations_mediaRecommendation(
          [Function(
                  GMediaDetailQueryData_Page_recommendations_mediaRecommendationBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Page_recommendations_mediaRecommendation;

  static void _initializeBuilder(
          GMediaDetailQueryData_Page_recommendations_mediaRecommendationBuilder
              b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title?
      get title;
  GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage?
      get coverImage;
  static Serializer<
          GMediaDetailQueryData_Page_recommendations_mediaRecommendation>
      get serializer =>
          _$gMediaDetailQueryDataPageRecommendationsMediaRecommendationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Page_recommendations_mediaRecommendation
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Page_recommendations_mediaRecommendation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Page_recommendations_mediaRecommendation
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title
    implements
        Built<
            GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title,
            GMediaDetailQueryData_Page_recommendations_mediaRecommendation_titleBuilder> {
  GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title._();

  factory GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title(
          [Function(
                  GMediaDetailQueryData_Page_recommendations_mediaRecommendation_titleBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title;

  static void _initializeBuilder(
          GMediaDetailQueryData_Page_recommendations_mediaRecommendation_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get romaji;
  String? get english;
  String? get userPreferred;
  static Serializer<
          GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title>
      get serializer =>
          _$gMediaDetailQueryDataPageRecommendationsMediaRecommendationTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Page_recommendations_mediaRecommendation_title
                .serializer,
            json,
          );
}

abstract class GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage
    implements
        Built<
            GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage,
            GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImageBuilder> {
  GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage._();

  factory GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage(
          [Function(
                  GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImageBuilder
                      b)
              updates]) =
      _$GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage;

  static void _initializeBuilder(
          GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  String? get large;
  String? get medium;
  String? get color;
  static Serializer<
          GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage>
      get serializer =>
          _$gMediaDetailQueryDataPageRecommendationsMediaRecommendationCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaDetailQueryData_Page_recommendations_mediaRecommendation_coverImage
                .serializer,
            json,
          );
}
