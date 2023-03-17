// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class GActivitySort extends EnumClass {
  const GActivitySort._(String name) : super(name);

  static const GActivitySort ID = _$gActivitySortID;

  static const GActivitySort ID_DESC = _$gActivitySortID_DESC;

  static const GActivitySort PINNED = _$gActivitySortPINNED;

  static Serializer<GActivitySort> get serializer => _$gActivitySortSerializer;
  static BuiltSet<GActivitySort> get values => _$gActivitySortValues;
  static GActivitySort valueOf(String name) => _$gActivitySortValueOf(name);
}

class GActivityType extends EnumClass {
  const GActivityType._(String name) : super(name);

  static const GActivityType TEXT = _$gActivityTypeTEXT;

  static const GActivityType ANIME_LIST = _$gActivityTypeANIME_LIST;

  static const GActivityType MANGA_LIST = _$gActivityTypeMANGA_LIST;

  static const GActivityType MESSAGE = _$gActivityTypeMESSAGE;

  static const GActivityType MEDIA_LIST = _$gActivityTypeMEDIA_LIST;

  static Serializer<GActivityType> get serializer => _$gActivityTypeSerializer;
  static BuiltSet<GActivityType> get values => _$gActivityTypeValues;
  static GActivityType valueOf(String name) => _$gActivityTypeValueOf(name);
}

abstract class GAiringScheduleInput
    implements Built<GAiringScheduleInput, GAiringScheduleInputBuilder> {
  GAiringScheduleInput._();

  factory GAiringScheduleInput(
          [Function(GAiringScheduleInputBuilder b) updates]) =
      _$GAiringScheduleInput;

  int? get airingAt;
  int? get episode;
  int? get timeUntilAiring;
  static Serializer<GAiringScheduleInput> get serializer =>
      _$gAiringScheduleInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleInput.serializer,
        json,
      );
}

class GAiringSort extends EnumClass {
  const GAiringSort._(String name) : super(name);

  static const GAiringSort ID = _$gAiringSortID;

  static const GAiringSort ID_DESC = _$gAiringSortID_DESC;

  static const GAiringSort MEDIA_ID = _$gAiringSortMEDIA_ID;

  static const GAiringSort MEDIA_ID_DESC = _$gAiringSortMEDIA_ID_DESC;

  static const GAiringSort TIME = _$gAiringSortTIME;

  static const GAiringSort TIME_DESC = _$gAiringSortTIME_DESC;

  static const GAiringSort EPISODE = _$gAiringSortEPISODE;

  static const GAiringSort EPISODE_DESC = _$gAiringSortEPISODE_DESC;

  static Serializer<GAiringSort> get serializer => _$gAiringSortSerializer;
  static BuiltSet<GAiringSort> get values => _$gAiringSortValues;
  static GAiringSort valueOf(String name) => _$gAiringSortValueOf(name);
}

abstract class GAniChartHighlightInput
    implements Built<GAniChartHighlightInput, GAniChartHighlightInputBuilder> {
  GAniChartHighlightInput._();

  factory GAniChartHighlightInput(
          [Function(GAniChartHighlightInputBuilder b) updates]) =
      _$GAniChartHighlightInput;

  int? get mediaId;
  String? get highlight;
  static Serializer<GAniChartHighlightInput> get serializer =>
      _$gAniChartHighlightInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAniChartHighlightInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAniChartHighlightInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAniChartHighlightInput.serializer,
        json,
      );
}

abstract class GCharacterNameInput
    implements Built<GCharacterNameInput, GCharacterNameInputBuilder> {
  GCharacterNameInput._();

  factory GCharacterNameInput(
      [Function(GCharacterNameInputBuilder b) updates]) = _$GCharacterNameInput;

  String? get first;
  String? get middle;
  String? get last;
  String? get native;
  BuiltList<String?>? get alternative;
  BuiltList<String?>? get alternativeSpoiler;
  static Serializer<GCharacterNameInput> get serializer =>
      _$gCharacterNameInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterNameInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterNameInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterNameInput.serializer,
        json,
      );
}

class GCharacterRole extends EnumClass {
  const GCharacterRole._(String name) : super(name);

  static const GCharacterRole MAIN = _$gCharacterRoleMAIN;

  static const GCharacterRole SUPPORTING = _$gCharacterRoleSUPPORTING;

  static const GCharacterRole BACKGROUND = _$gCharacterRoleBACKGROUND;

  static Serializer<GCharacterRole> get serializer =>
      _$gCharacterRoleSerializer;
  static BuiltSet<GCharacterRole> get values => _$gCharacterRoleValues;
  static GCharacterRole valueOf(String name) => _$gCharacterRoleValueOf(name);
}

class GCharacterSort extends EnumClass {
  const GCharacterSort._(String name) : super(name);

  static const GCharacterSort ID = _$gCharacterSortID;

  static const GCharacterSort ID_DESC = _$gCharacterSortID_DESC;

  static const GCharacterSort ROLE = _$gCharacterSortROLE;

  static const GCharacterSort ROLE_DESC = _$gCharacterSortROLE_DESC;

  static const GCharacterSort SEARCH_MATCH = _$gCharacterSortSEARCH_MATCH;

  static const GCharacterSort FAVOURITES = _$gCharacterSortFAVOURITES;

  static const GCharacterSort FAVOURITES_DESC = _$gCharacterSortFAVOURITES_DESC;

  static const GCharacterSort RELEVANCE = _$gCharacterSortRELEVANCE;

  static Serializer<GCharacterSort> get serializer =>
      _$gCharacterSortSerializer;
  static BuiltSet<GCharacterSort> get values => _$gCharacterSortValues;
  static GCharacterSort valueOf(String name) => _$gCharacterSortValueOf(name);
}

abstract class GCountryCode
    implements Built<GCountryCode, GCountryCodeBuilder> {
  GCountryCode._();

  factory GCountryCode([String? value]) =>
      _$GCountryCode((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GCountryCode> get serializer =>
      _i2.DefaultScalarSerializer<GCountryCode>(
          (Object serialized) => GCountryCode((serialized as String?)));
}

class GExternalLinkMediaType extends EnumClass {
  const GExternalLinkMediaType._(String name) : super(name);

  static const GExternalLinkMediaType ANIME = _$gExternalLinkMediaTypeANIME;

  static const GExternalLinkMediaType MANGA = _$gExternalLinkMediaTypeMANGA;

  static const GExternalLinkMediaType STAFF = _$gExternalLinkMediaTypeSTAFF;

  static Serializer<GExternalLinkMediaType> get serializer =>
      _$gExternalLinkMediaTypeSerializer;
  static BuiltSet<GExternalLinkMediaType> get values =>
      _$gExternalLinkMediaTypeValues;
  static GExternalLinkMediaType valueOf(String name) =>
      _$gExternalLinkMediaTypeValueOf(name);
}

class GExternalLinkType extends EnumClass {
  const GExternalLinkType._(String name) : super(name);

  static const GExternalLinkType INFO = _$gExternalLinkTypeINFO;

  static const GExternalLinkType STREAMING = _$gExternalLinkTypeSTREAMING;

  static const GExternalLinkType SOCIAL = _$gExternalLinkTypeSOCIAL;

  static Serializer<GExternalLinkType> get serializer =>
      _$gExternalLinkTypeSerializer;
  static BuiltSet<GExternalLinkType> get values => _$gExternalLinkTypeValues;
  static GExternalLinkType valueOf(String name) =>
      _$gExternalLinkTypeValueOf(name);
}

abstract class GFuzzyDateInput
    implements Built<GFuzzyDateInput, GFuzzyDateInputBuilder> {
  GFuzzyDateInput._();

  factory GFuzzyDateInput([Function(GFuzzyDateInputBuilder b) updates]) =
      _$GFuzzyDateInput;

  int? get year;
  int? get month;
  int? get day;
  static Serializer<GFuzzyDateInput> get serializer =>
      _$gFuzzyDateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFuzzyDateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFuzzyDateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFuzzyDateInput.serializer,
        json,
      );
}

abstract class GFuzzyDateInt
    implements Built<GFuzzyDateInt, GFuzzyDateIntBuilder> {
  GFuzzyDateInt._();

  factory GFuzzyDateInt([String? value]) =>
      _$GFuzzyDateInt((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GFuzzyDateInt> get serializer =>
      _i2.DefaultScalarSerializer<GFuzzyDateInt>(
          (Object serialized) => GFuzzyDateInt((serialized as String?)));
}

abstract class GJson implements Built<GJson, GJsonBuilder> {
  GJson._();

  factory GJson([String? value]) =>
      _$GJson((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJson> get serializer => _i2.DefaultScalarSerializer<GJson>(
      (Object serialized) => GJson((serialized as String?)));
}

class GLikeableType extends EnumClass {
  const GLikeableType._(String name) : super(name);

  static const GLikeableType THREAD = _$gLikeableTypeTHREAD;

  static const GLikeableType THREAD_COMMENT = _$gLikeableTypeTHREAD_COMMENT;

  static const GLikeableType ACTIVITY = _$gLikeableTypeACTIVITY;

  static const GLikeableType ACTIVITY_REPLY = _$gLikeableTypeACTIVITY_REPLY;

  static Serializer<GLikeableType> get serializer => _$gLikeableTypeSerializer;
  static BuiltSet<GLikeableType> get values => _$gLikeableTypeValues;
  static GLikeableType valueOf(String name) => _$gLikeableTypeValueOf(name);
}

abstract class GListActivityOptionInput
    implements
        Built<GListActivityOptionInput, GListActivityOptionInputBuilder> {
  GListActivityOptionInput._();

  factory GListActivityOptionInput(
          [Function(GListActivityOptionInputBuilder b) updates]) =
      _$GListActivityOptionInput;

  bool? get disabled;
  GMediaListStatus? get type;
  static Serializer<GListActivityOptionInput> get serializer =>
      _$gListActivityOptionInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListActivityOptionInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GListActivityOptionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListActivityOptionInput.serializer,
        json,
      );
}

abstract class GMediaExternalLinkInput
    implements Built<GMediaExternalLinkInput, GMediaExternalLinkInputBuilder> {
  GMediaExternalLinkInput._();

  factory GMediaExternalLinkInput(
          [Function(GMediaExternalLinkInputBuilder b) updates]) =
      _$GMediaExternalLinkInput;

  int get id;
  String get url;
  String get site;
  static Serializer<GMediaExternalLinkInput> get serializer =>
      _$gMediaExternalLinkInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaExternalLinkInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaExternalLinkInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaExternalLinkInput.serializer,
        json,
      );
}

class GMediaFormat extends EnumClass {
  const GMediaFormat._(String name) : super(name);

  static const GMediaFormat TV = _$gMediaFormatTV;

  static const GMediaFormat TV_SHORT = _$gMediaFormatTV_SHORT;

  static const GMediaFormat MOVIE = _$gMediaFormatMOVIE;

  static const GMediaFormat SPECIAL = _$gMediaFormatSPECIAL;

  static const GMediaFormat OVA = _$gMediaFormatOVA;

  static const GMediaFormat ONA = _$gMediaFormatONA;

  static const GMediaFormat MUSIC = _$gMediaFormatMUSIC;

  static const GMediaFormat MANGA = _$gMediaFormatMANGA;

  static const GMediaFormat NOVEL = _$gMediaFormatNOVEL;

  static const GMediaFormat ONE_SHOT = _$gMediaFormatONE_SHOT;

  static Serializer<GMediaFormat> get serializer => _$gMediaFormatSerializer;
  static BuiltSet<GMediaFormat> get values => _$gMediaFormatValues;
  static GMediaFormat valueOf(String name) => _$gMediaFormatValueOf(name);
}

abstract class GMediaListOptionsInput
    implements Built<GMediaListOptionsInput, GMediaListOptionsInputBuilder> {
  GMediaListOptionsInput._();

  factory GMediaListOptionsInput(
          [Function(GMediaListOptionsInputBuilder b) updates]) =
      _$GMediaListOptionsInput;

  BuiltList<String?>? get sectionOrder;
  bool? get splitCompletedSectionByFormat;
  BuiltList<String?>? get customLists;
  BuiltList<String?>? get advancedScoring;
  bool? get advancedScoringEnabled;
  String? get theme;
  static Serializer<GMediaListOptionsInput> get serializer =>
      _$gMediaListOptionsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListOptionsInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListOptionsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListOptionsInput.serializer,
        json,
      );
}

class GMediaListSort extends EnumClass {
  const GMediaListSort._(String name) : super(name);

  static const GMediaListSort MEDIA_ID = _$gMediaListSortMEDIA_ID;

  static const GMediaListSort MEDIA_ID_DESC = _$gMediaListSortMEDIA_ID_DESC;

  static const GMediaListSort SCORE = _$gMediaListSortSCORE;

  static const GMediaListSort SCORE_DESC = _$gMediaListSortSCORE_DESC;

  static const GMediaListSort STATUS = _$gMediaListSortSTATUS;

  static const GMediaListSort STATUS_DESC = _$gMediaListSortSTATUS_DESC;

  static const GMediaListSort PROGRESS = _$gMediaListSortPROGRESS;

  static const GMediaListSort PROGRESS_DESC = _$gMediaListSortPROGRESS_DESC;

  static const GMediaListSort PROGRESS_VOLUMES =
      _$gMediaListSortPROGRESS_VOLUMES;

  static const GMediaListSort PROGRESS_VOLUMES_DESC =
      _$gMediaListSortPROGRESS_VOLUMES_DESC;

  static const GMediaListSort REPEAT = _$gMediaListSortREPEAT;

  static const GMediaListSort REPEAT_DESC = _$gMediaListSortREPEAT_DESC;

  static const GMediaListSort PRIORITY = _$gMediaListSortPRIORITY;

  static const GMediaListSort PRIORITY_DESC = _$gMediaListSortPRIORITY_DESC;

  static const GMediaListSort STARTED_ON = _$gMediaListSortSTARTED_ON;

  static const GMediaListSort STARTED_ON_DESC = _$gMediaListSortSTARTED_ON_DESC;

  static const GMediaListSort FINISHED_ON = _$gMediaListSortFINISHED_ON;

  static const GMediaListSort FINISHED_ON_DESC =
      _$gMediaListSortFINISHED_ON_DESC;

  static const GMediaListSort ADDED_TIME = _$gMediaListSortADDED_TIME;

  static const GMediaListSort ADDED_TIME_DESC = _$gMediaListSortADDED_TIME_DESC;

  static const GMediaListSort UPDATED_TIME = _$gMediaListSortUPDATED_TIME;

  static const GMediaListSort UPDATED_TIME_DESC =
      _$gMediaListSortUPDATED_TIME_DESC;

  static const GMediaListSort MEDIA_TITLE_ROMAJI =
      _$gMediaListSortMEDIA_TITLE_ROMAJI;

  static const GMediaListSort MEDIA_TITLE_ROMAJI_DESC =
      _$gMediaListSortMEDIA_TITLE_ROMAJI_DESC;

  static const GMediaListSort MEDIA_TITLE_ENGLISH =
      _$gMediaListSortMEDIA_TITLE_ENGLISH;

  static const GMediaListSort MEDIA_TITLE_ENGLISH_DESC =
      _$gMediaListSortMEDIA_TITLE_ENGLISH_DESC;

  static const GMediaListSort MEDIA_TITLE_NATIVE =
      _$gMediaListSortMEDIA_TITLE_NATIVE;

  static const GMediaListSort MEDIA_TITLE_NATIVE_DESC =
      _$gMediaListSortMEDIA_TITLE_NATIVE_DESC;

  static const GMediaListSort MEDIA_POPULARITY =
      _$gMediaListSortMEDIA_POPULARITY;

  static const GMediaListSort MEDIA_POPULARITY_DESC =
      _$gMediaListSortMEDIA_POPULARITY_DESC;

  static Serializer<GMediaListSort> get serializer =>
      _$gMediaListSortSerializer;
  static BuiltSet<GMediaListSort> get values => _$gMediaListSortValues;
  static GMediaListSort valueOf(String name) => _$gMediaListSortValueOf(name);
}

class GMediaListStatus extends EnumClass {
  const GMediaListStatus._(String name) : super(name);

  static const GMediaListStatus CURRENT = _$gMediaListStatusCURRENT;

  static const GMediaListStatus PLANNING = _$gMediaListStatusPLANNING;

  static const GMediaListStatus COMPLETED = _$gMediaListStatusCOMPLETED;

  static const GMediaListStatus DROPPED = _$gMediaListStatusDROPPED;

  static const GMediaListStatus PAUSED = _$gMediaListStatusPAUSED;

  static const GMediaListStatus REPEATING = _$gMediaListStatusREPEATING;

  static Serializer<GMediaListStatus> get serializer =>
      _$gMediaListStatusSerializer;
  static BuiltSet<GMediaListStatus> get values => _$gMediaListStatusValues;
  static GMediaListStatus valueOf(String name) =>
      _$gMediaListStatusValueOf(name);
}

class GMediaRankType extends EnumClass {
  const GMediaRankType._(String name) : super(name);

  static const GMediaRankType RATED = _$gMediaRankTypeRATED;

  static const GMediaRankType POPULAR = _$gMediaRankTypePOPULAR;

  static Serializer<GMediaRankType> get serializer =>
      _$gMediaRankTypeSerializer;
  static BuiltSet<GMediaRankType> get values => _$gMediaRankTypeValues;
  static GMediaRankType valueOf(String name) => _$gMediaRankTypeValueOf(name);
}

class GMediaRelation extends EnumClass {
  const GMediaRelation._(String name) : super(name);

  static const GMediaRelation ADAPTATION = _$gMediaRelationADAPTATION;

  static const GMediaRelation PREQUEL = _$gMediaRelationPREQUEL;

  static const GMediaRelation SEQUEL = _$gMediaRelationSEQUEL;

  static const GMediaRelation PARENT = _$gMediaRelationPARENT;

  static const GMediaRelation SIDE_STORY = _$gMediaRelationSIDE_STORY;

  static const GMediaRelation CHARACTER = _$gMediaRelationCHARACTER;

  static const GMediaRelation SUMMARY = _$gMediaRelationSUMMARY;

  static const GMediaRelation ALTERNATIVE = _$gMediaRelationALTERNATIVE;

  static const GMediaRelation SPIN_OFF = _$gMediaRelationSPIN_OFF;

  static const GMediaRelation OTHER = _$gMediaRelationOTHER;

  static const GMediaRelation SOURCE = _$gMediaRelationSOURCE;

  static const GMediaRelation COMPILATION = _$gMediaRelationCOMPILATION;

  static const GMediaRelation CONTAINS = _$gMediaRelationCONTAINS;

  static Serializer<GMediaRelation> get serializer =>
      _$gMediaRelationSerializer;
  static BuiltSet<GMediaRelation> get values => _$gMediaRelationValues;
  static GMediaRelation valueOf(String name) => _$gMediaRelationValueOf(name);
}

class GMediaSeason extends EnumClass {
  const GMediaSeason._(String name) : super(name);

  static const GMediaSeason WINTER = _$gMediaSeasonWINTER;

  static const GMediaSeason SPRING = _$gMediaSeasonSPRING;

  static const GMediaSeason SUMMER = _$gMediaSeasonSUMMER;

  static const GMediaSeason FALL = _$gMediaSeasonFALL;

  static Serializer<GMediaSeason> get serializer => _$gMediaSeasonSerializer;
  static BuiltSet<GMediaSeason> get values => _$gMediaSeasonValues;
  static GMediaSeason valueOf(String name) => _$gMediaSeasonValueOf(name);
}

class GMediaSort extends EnumClass {
  const GMediaSort._(String name) : super(name);

  static const GMediaSort ID = _$gMediaSortID;

  static const GMediaSort ID_DESC = _$gMediaSortID_DESC;

  static const GMediaSort TITLE_ROMAJI = _$gMediaSortTITLE_ROMAJI;

  static const GMediaSort TITLE_ROMAJI_DESC = _$gMediaSortTITLE_ROMAJI_DESC;

  static const GMediaSort TITLE_ENGLISH = _$gMediaSortTITLE_ENGLISH;

  static const GMediaSort TITLE_ENGLISH_DESC = _$gMediaSortTITLE_ENGLISH_DESC;

  static const GMediaSort TITLE_NATIVE = _$gMediaSortTITLE_NATIVE;

  static const GMediaSort TITLE_NATIVE_DESC = _$gMediaSortTITLE_NATIVE_DESC;

  static const GMediaSort TYPE = _$gMediaSortTYPE;

  static const GMediaSort TYPE_DESC = _$gMediaSortTYPE_DESC;

  static const GMediaSort FORMAT = _$gMediaSortFORMAT;

  static const GMediaSort FORMAT_DESC = _$gMediaSortFORMAT_DESC;

  static const GMediaSort START_DATE = _$gMediaSortSTART_DATE;

  static const GMediaSort START_DATE_DESC = _$gMediaSortSTART_DATE_DESC;

  static const GMediaSort END_DATE = _$gMediaSortEND_DATE;

  static const GMediaSort END_DATE_DESC = _$gMediaSortEND_DATE_DESC;

  static const GMediaSort SCORE = _$gMediaSortSCORE;

  static const GMediaSort SCORE_DESC = _$gMediaSortSCORE_DESC;

  static const GMediaSort POPULARITY = _$gMediaSortPOPULARITY;

  static const GMediaSort POPULARITY_DESC = _$gMediaSortPOPULARITY_DESC;

  static const GMediaSort TRENDING = _$gMediaSortTRENDING;

  static const GMediaSort TRENDING_DESC = _$gMediaSortTRENDING_DESC;

  static const GMediaSort EPISODES = _$gMediaSortEPISODES;

  static const GMediaSort EPISODES_DESC = _$gMediaSortEPISODES_DESC;

  static const GMediaSort DURATION = _$gMediaSortDURATION;

  static const GMediaSort DURATION_DESC = _$gMediaSortDURATION_DESC;

  static const GMediaSort STATUS = _$gMediaSortSTATUS;

  static const GMediaSort STATUS_DESC = _$gMediaSortSTATUS_DESC;

  static const GMediaSort CHAPTERS = _$gMediaSortCHAPTERS;

  static const GMediaSort CHAPTERS_DESC = _$gMediaSortCHAPTERS_DESC;

  static const GMediaSort VOLUMES = _$gMediaSortVOLUMES;

  static const GMediaSort VOLUMES_DESC = _$gMediaSortVOLUMES_DESC;

  static const GMediaSort UPDATED_AT = _$gMediaSortUPDATED_AT;

  static const GMediaSort UPDATED_AT_DESC = _$gMediaSortUPDATED_AT_DESC;

  static const GMediaSort SEARCH_MATCH = _$gMediaSortSEARCH_MATCH;

  static const GMediaSort FAVOURITES = _$gMediaSortFAVOURITES;

  static const GMediaSort FAVOURITES_DESC = _$gMediaSortFAVOURITES_DESC;

  static Serializer<GMediaSort> get serializer => _$gMediaSortSerializer;
  static BuiltSet<GMediaSort> get values => _$gMediaSortValues;
  static GMediaSort valueOf(String name) => _$gMediaSortValueOf(name);
}

class GMediaSource extends EnumClass {
  const GMediaSource._(String name) : super(name);

  static const GMediaSource ORIGINAL = _$gMediaSourceORIGINAL;

  static const GMediaSource MANGA = _$gMediaSourceMANGA;

  static const GMediaSource LIGHT_NOVEL = _$gMediaSourceLIGHT_NOVEL;

  static const GMediaSource VISUAL_NOVEL = _$gMediaSourceVISUAL_NOVEL;

  static const GMediaSource VIDEO_GAME = _$gMediaSourceVIDEO_GAME;

  static const GMediaSource OTHER = _$gMediaSourceOTHER;

  static const GMediaSource NOVEL = _$gMediaSourceNOVEL;

  static const GMediaSource DOUJINSHI = _$gMediaSourceDOUJINSHI;

  static const GMediaSource ANIME = _$gMediaSourceANIME;

  static const GMediaSource WEB_NOVEL = _$gMediaSourceWEB_NOVEL;

  static const GMediaSource LIVE_ACTION = _$gMediaSourceLIVE_ACTION;

  static const GMediaSource GAME = _$gMediaSourceGAME;

  static const GMediaSource COMIC = _$gMediaSourceCOMIC;

  static const GMediaSource MULTIMEDIA_PROJECT =
      _$gMediaSourceMULTIMEDIA_PROJECT;

  static const GMediaSource PICTURE_BOOK = _$gMediaSourcePICTURE_BOOK;

  static Serializer<GMediaSource> get serializer => _$gMediaSourceSerializer;
  static BuiltSet<GMediaSource> get values => _$gMediaSourceValues;
  static GMediaSource valueOf(String name) => _$gMediaSourceValueOf(name);
}

class GMediaStatus extends EnumClass {
  const GMediaStatus._(String name) : super(name);

  static const GMediaStatus FINISHED = _$gMediaStatusFINISHED;

  static const GMediaStatus RELEASING = _$gMediaStatusRELEASING;

  static const GMediaStatus NOT_YET_RELEASED = _$gMediaStatusNOT_YET_RELEASED;

  static const GMediaStatus CANCELLED = _$gMediaStatusCANCELLED;

  static const GMediaStatus HIATUS = _$gMediaStatusHIATUS;

  static Serializer<GMediaStatus> get serializer => _$gMediaStatusSerializer;
  static BuiltSet<GMediaStatus> get values => _$gMediaStatusValues;
  static GMediaStatus valueOf(String name) => _$gMediaStatusValueOf(name);
}

abstract class GMediaTitleInput
    implements Built<GMediaTitleInput, GMediaTitleInputBuilder> {
  GMediaTitleInput._();

  factory GMediaTitleInput([Function(GMediaTitleInputBuilder b) updates]) =
      _$GMediaTitleInput;

  String? get romaji;
  String? get english;
  String? get native;
  static Serializer<GMediaTitleInput> get serializer =>
      _$gMediaTitleInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaTitleInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaTitleInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaTitleInput.serializer,
        json,
      );
}

class GMediaTrendSort extends EnumClass {
  const GMediaTrendSort._(String name) : super(name);

  static const GMediaTrendSort ID = _$gMediaTrendSortID;

  static const GMediaTrendSort ID_DESC = _$gMediaTrendSortID_DESC;

  static const GMediaTrendSort MEDIA_ID = _$gMediaTrendSortMEDIA_ID;

  static const GMediaTrendSort MEDIA_ID_DESC = _$gMediaTrendSortMEDIA_ID_DESC;

  static const GMediaTrendSort DATE = _$gMediaTrendSortDATE;

  static const GMediaTrendSort DATE_DESC = _$gMediaTrendSortDATE_DESC;

  static const GMediaTrendSort SCORE = _$gMediaTrendSortSCORE;

  static const GMediaTrendSort SCORE_DESC = _$gMediaTrendSortSCORE_DESC;

  static const GMediaTrendSort POPULARITY = _$gMediaTrendSortPOPULARITY;

  static const GMediaTrendSort POPULARITY_DESC =
      _$gMediaTrendSortPOPULARITY_DESC;

  static const GMediaTrendSort TRENDING = _$gMediaTrendSortTRENDING;

  static const GMediaTrendSort TRENDING_DESC = _$gMediaTrendSortTRENDING_DESC;

  static const GMediaTrendSort EPISODE = _$gMediaTrendSortEPISODE;

  static const GMediaTrendSort EPISODE_DESC = _$gMediaTrendSortEPISODE_DESC;

  static Serializer<GMediaTrendSort> get serializer =>
      _$gMediaTrendSortSerializer;
  static BuiltSet<GMediaTrendSort> get values => _$gMediaTrendSortValues;
  static GMediaTrendSort valueOf(String name) => _$gMediaTrendSortValueOf(name);
}

class GMediaType extends EnumClass {
  const GMediaType._(String name) : super(name);

  static const GMediaType ANIME = _$gMediaTypeANIME;

  static const GMediaType MANGA = _$gMediaTypeMANGA;

  static Serializer<GMediaType> get serializer => _$gMediaTypeSerializer;
  static BuiltSet<GMediaType> get values => _$gMediaTypeValues;
  static GMediaType valueOf(String name) => _$gMediaTypeValueOf(name);
}

class GModActionType extends EnumClass {
  const GModActionType._(String name) : super(name);

  static const GModActionType NOTE = _$gModActionTypeNOTE;

  static const GModActionType BAN = _$gModActionTypeBAN;

  static const GModActionType DELETE = _$gModActionTypeDELETE;

  static const GModActionType EDIT = _$gModActionTypeEDIT;

  static const GModActionType EXPIRE = _$gModActionTypeEXPIRE;

  static const GModActionType REPORT = _$gModActionTypeREPORT;

  static const GModActionType RESET = _$gModActionTypeRESET;

  static const GModActionType ANON = _$gModActionTypeANON;

  static Serializer<GModActionType> get serializer =>
      _$gModActionTypeSerializer;
  static BuiltSet<GModActionType> get values => _$gModActionTypeValues;
  static GModActionType valueOf(String name) => _$gModActionTypeValueOf(name);
}

class GModRole extends EnumClass {
  const GModRole._(String name) : super(name);

  static const GModRole ADMIN = _$gModRoleADMIN;

  static const GModRole LEAD_DEVELOPER = _$gModRoleLEAD_DEVELOPER;

  static const GModRole DEVELOPER = _$gModRoleDEVELOPER;

  static const GModRole LEAD_COMMUNITY = _$gModRoleLEAD_COMMUNITY;

  static const GModRole COMMUNITY = _$gModRoleCOMMUNITY;

  static const GModRole DISCORD_COMMUNITY = _$gModRoleDISCORD_COMMUNITY;

  static const GModRole LEAD_ANIME_DATA = _$gModRoleLEAD_ANIME_DATA;

  static const GModRole ANIME_DATA = _$gModRoleANIME_DATA;

  static const GModRole LEAD_MANGA_DATA = _$gModRoleLEAD_MANGA_DATA;

  static const GModRole MANGA_DATA = _$gModRoleMANGA_DATA;

  static const GModRole LEAD_SOCIAL_MEDIA = _$gModRoleLEAD_SOCIAL_MEDIA;

  static const GModRole SOCIAL_MEDIA = _$gModRoleSOCIAL_MEDIA;

  static const GModRole RETIRED = _$gModRoleRETIRED;

  static Serializer<GModRole> get serializer => _$gModRoleSerializer;
  static BuiltSet<GModRole> get values => _$gModRoleValues;
  static GModRole valueOf(String name) => _$gModRoleValueOf(name);
}

abstract class GNotificationOptionInput
    implements
        Built<GNotificationOptionInput, GNotificationOptionInputBuilder> {
  GNotificationOptionInput._();

  factory GNotificationOptionInput(
          [Function(GNotificationOptionInputBuilder b) updates]) =
      _$GNotificationOptionInput;

  GNotificationType? get type;
  bool? get enabled;
  static Serializer<GNotificationOptionInput> get serializer =>
      _$gNotificationOptionInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationOptionInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationOptionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationOptionInput.serializer,
        json,
      );
}

class GNotificationType extends EnumClass {
  const GNotificationType._(String name) : super(name);

  static const GNotificationType ACTIVITY_MESSAGE =
      _$gNotificationTypeACTIVITY_MESSAGE;

  static const GNotificationType ACTIVITY_REPLY =
      _$gNotificationTypeACTIVITY_REPLY;

  static const GNotificationType FOLLOWING = _$gNotificationTypeFOLLOWING;

  static const GNotificationType ACTIVITY_MENTION =
      _$gNotificationTypeACTIVITY_MENTION;

  static const GNotificationType THREAD_COMMENT_MENTION =
      _$gNotificationTypeTHREAD_COMMENT_MENTION;

  static const GNotificationType THREAD_SUBSCRIBED =
      _$gNotificationTypeTHREAD_SUBSCRIBED;

  static const GNotificationType THREAD_COMMENT_REPLY =
      _$gNotificationTypeTHREAD_COMMENT_REPLY;

  static const GNotificationType AIRING = _$gNotificationTypeAIRING;

  static const GNotificationType ACTIVITY_LIKE =
      _$gNotificationTypeACTIVITY_LIKE;

  static const GNotificationType ACTIVITY_REPLY_LIKE =
      _$gNotificationTypeACTIVITY_REPLY_LIKE;

  static const GNotificationType THREAD_LIKE = _$gNotificationTypeTHREAD_LIKE;

  static const GNotificationType THREAD_COMMENT_LIKE =
      _$gNotificationTypeTHREAD_COMMENT_LIKE;

  static const GNotificationType ACTIVITY_REPLY_SUBSCRIBED =
      _$gNotificationTypeACTIVITY_REPLY_SUBSCRIBED;

  static const GNotificationType RELATED_MEDIA_ADDITION =
      _$gNotificationTypeRELATED_MEDIA_ADDITION;

  static const GNotificationType MEDIA_DATA_CHANGE =
      _$gNotificationTypeMEDIA_DATA_CHANGE;

  static const GNotificationType MEDIA_MERGE = _$gNotificationTypeMEDIA_MERGE;

  static const GNotificationType MEDIA_DELETION =
      _$gNotificationTypeMEDIA_DELETION;

  static Serializer<GNotificationType> get serializer =>
      _$gNotificationTypeSerializer;
  static BuiltSet<GNotificationType> get values => _$gNotificationTypeValues;
  static GNotificationType valueOf(String name) =>
      _$gNotificationTypeValueOf(name);
}

class GRecommendationRating extends EnumClass {
  const GRecommendationRating._(String name) : super(name);

  static const GRecommendationRating NO_RATING =
      _$gRecommendationRatingNO_RATING;

  static const GRecommendationRating RATE_UP = _$gRecommendationRatingRATE_UP;

  static const GRecommendationRating RATE_DOWN =
      _$gRecommendationRatingRATE_DOWN;

  static Serializer<GRecommendationRating> get serializer =>
      _$gRecommendationRatingSerializer;
  static BuiltSet<GRecommendationRating> get values =>
      _$gRecommendationRatingValues;
  static GRecommendationRating valueOf(String name) =>
      _$gRecommendationRatingValueOf(name);
}

class GRecommendationSort extends EnumClass {
  const GRecommendationSort._(String name) : super(name);

  static const GRecommendationSort ID = _$gRecommendationSortID;

  static const GRecommendationSort ID_DESC = _$gRecommendationSortID_DESC;

  static const GRecommendationSort RATING = _$gRecommendationSortRATING;

  static const GRecommendationSort RATING_DESC =
      _$gRecommendationSortRATING_DESC;

  static Serializer<GRecommendationSort> get serializer =>
      _$gRecommendationSortSerializer;
  static BuiltSet<GRecommendationSort> get values =>
      _$gRecommendationSortValues;
  static GRecommendationSort valueOf(String name) =>
      _$gRecommendationSortValueOf(name);
}

class GReviewRating extends EnumClass {
  const GReviewRating._(String name) : super(name);

  static const GReviewRating NO_VOTE = _$gReviewRatingNO_VOTE;

  static const GReviewRating UP_VOTE = _$gReviewRatingUP_VOTE;

  static const GReviewRating DOWN_VOTE = _$gReviewRatingDOWN_VOTE;

  static Serializer<GReviewRating> get serializer => _$gReviewRatingSerializer;
  static BuiltSet<GReviewRating> get values => _$gReviewRatingValues;
  static GReviewRating valueOf(String name) => _$gReviewRatingValueOf(name);
}

class GReviewSort extends EnumClass {
  const GReviewSort._(String name) : super(name);

  static const GReviewSort ID = _$gReviewSortID;

  static const GReviewSort ID_DESC = _$gReviewSortID_DESC;

  static const GReviewSort SCORE = _$gReviewSortSCORE;

  static const GReviewSort SCORE_DESC = _$gReviewSortSCORE_DESC;

  static const GReviewSort RATING = _$gReviewSortRATING;

  static const GReviewSort RATING_DESC = _$gReviewSortRATING_DESC;

  static const GReviewSort CREATED_AT = _$gReviewSortCREATED_AT;

  static const GReviewSort CREATED_AT_DESC = _$gReviewSortCREATED_AT_DESC;

  static const GReviewSort UPDATED_AT = _$gReviewSortUPDATED_AT;

  static const GReviewSort UPDATED_AT_DESC = _$gReviewSortUPDATED_AT_DESC;

  static Serializer<GReviewSort> get serializer => _$gReviewSortSerializer;
  static BuiltSet<GReviewSort> get values => _$gReviewSortValues;
  static GReviewSort valueOf(String name) => _$gReviewSortValueOf(name);
}

class GRevisionHistoryAction extends EnumClass {
  const GRevisionHistoryAction._(String name) : super(name);

  static const GRevisionHistoryAction CREATE = _$gRevisionHistoryActionCREATE;

  static const GRevisionHistoryAction EDIT = _$gRevisionHistoryActionEDIT;

  static Serializer<GRevisionHistoryAction> get serializer =>
      _$gRevisionHistoryActionSerializer;
  static BuiltSet<GRevisionHistoryAction> get values =>
      _$gRevisionHistoryActionValues;
  static GRevisionHistoryAction valueOf(String name) =>
      _$gRevisionHistoryActionValueOf(name);
}

class GScoreFormat extends EnumClass {
  const GScoreFormat._(String name) : super(name);

  static const GScoreFormat POINT_100 = _$gScoreFormatPOINT_100;

  static const GScoreFormat POINT_10_DECIMAL = _$gScoreFormatPOINT_10_DECIMAL;

  static const GScoreFormat POINT_10 = _$gScoreFormatPOINT_10;

  static const GScoreFormat POINT_5 = _$gScoreFormatPOINT_5;

  static const GScoreFormat POINT_3 = _$gScoreFormatPOINT_3;

  static Serializer<GScoreFormat> get serializer => _$gScoreFormatSerializer;
  static BuiltSet<GScoreFormat> get values => _$gScoreFormatValues;
  static GScoreFormat valueOf(String name) => _$gScoreFormatValueOf(name);
}

class GSiteTrendSort extends EnumClass {
  const GSiteTrendSort._(String name) : super(name);

  static const GSiteTrendSort DATE = _$gSiteTrendSortDATE;

  static const GSiteTrendSort DATE_DESC = _$gSiteTrendSortDATE_DESC;

  static const GSiteTrendSort COUNT = _$gSiteTrendSortCOUNT;

  static const GSiteTrendSort COUNT_DESC = _$gSiteTrendSortCOUNT_DESC;

  static const GSiteTrendSort CHANGE = _$gSiteTrendSortCHANGE;

  static const GSiteTrendSort CHANGE_DESC = _$gSiteTrendSortCHANGE_DESC;

  static Serializer<GSiteTrendSort> get serializer =>
      _$gSiteTrendSortSerializer;
  static BuiltSet<GSiteTrendSort> get values => _$gSiteTrendSortValues;
  static GSiteTrendSort valueOf(String name) => _$gSiteTrendSortValueOf(name);
}

class GStaffLanguage extends EnumClass {
  const GStaffLanguage._(String name) : super(name);

  static const GStaffLanguage JAPANESE = _$gStaffLanguageJAPANESE;

  static const GStaffLanguage ENGLISH = _$gStaffLanguageENGLISH;

  static const GStaffLanguage KOREAN = _$gStaffLanguageKOREAN;

  static const GStaffLanguage ITALIAN = _$gStaffLanguageITALIAN;

  static const GStaffLanguage SPANISH = _$gStaffLanguageSPANISH;

  static const GStaffLanguage PORTUGUESE = _$gStaffLanguagePORTUGUESE;

  static const GStaffLanguage FRENCH = _$gStaffLanguageFRENCH;

  static const GStaffLanguage GERMAN = _$gStaffLanguageGERMAN;

  static const GStaffLanguage HEBREW = _$gStaffLanguageHEBREW;

  static const GStaffLanguage HUNGARIAN = _$gStaffLanguageHUNGARIAN;

  static Serializer<GStaffLanguage> get serializer =>
      _$gStaffLanguageSerializer;
  static BuiltSet<GStaffLanguage> get values => _$gStaffLanguageValues;
  static GStaffLanguage valueOf(String name) => _$gStaffLanguageValueOf(name);
}

abstract class GStaffNameInput
    implements Built<GStaffNameInput, GStaffNameInputBuilder> {
  GStaffNameInput._();

  factory GStaffNameInput([Function(GStaffNameInputBuilder b) updates]) =
      _$GStaffNameInput;

  String? get first;
  String? get middle;
  String? get last;
  String? get native;
  BuiltList<String?>? get alternative;
  static Serializer<GStaffNameInput> get serializer =>
      _$gStaffNameInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffNameInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffNameInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffNameInput.serializer,
        json,
      );
}

class GStaffSort extends EnumClass {
  const GStaffSort._(String name) : super(name);

  static const GStaffSort ID = _$gStaffSortID;

  static const GStaffSort ID_DESC = _$gStaffSortID_DESC;

  static const GStaffSort ROLE = _$gStaffSortROLE;

  static const GStaffSort ROLE_DESC = _$gStaffSortROLE_DESC;

  static const GStaffSort LANGUAGE = _$gStaffSortLANGUAGE;

  static const GStaffSort LANGUAGE_DESC = _$gStaffSortLANGUAGE_DESC;

  static const GStaffSort SEARCH_MATCH = _$gStaffSortSEARCH_MATCH;

  static const GStaffSort FAVOURITES = _$gStaffSortFAVOURITES;

  static const GStaffSort FAVOURITES_DESC = _$gStaffSortFAVOURITES_DESC;

  static const GStaffSort RELEVANCE = _$gStaffSortRELEVANCE;

  static Serializer<GStaffSort> get serializer => _$gStaffSortSerializer;
  static BuiltSet<GStaffSort> get values => _$gStaffSortValues;
  static GStaffSort valueOf(String name) => _$gStaffSortValueOf(name);
}

class GStudioSort extends EnumClass {
  const GStudioSort._(String name) : super(name);

  static const GStudioSort ID = _$gStudioSortID;

  static const GStudioSort ID_DESC = _$gStudioSortID_DESC;

  static const GStudioSort NAME = _$gStudioSortNAME;

  static const GStudioSort NAME_DESC = _$gStudioSortNAME_DESC;

  static const GStudioSort SEARCH_MATCH = _$gStudioSortSEARCH_MATCH;

  static const GStudioSort FAVOURITES = _$gStudioSortFAVOURITES;

  static const GStudioSort FAVOURITES_DESC = _$gStudioSortFAVOURITES_DESC;

  static Serializer<GStudioSort> get serializer => _$gStudioSortSerializer;
  static BuiltSet<GStudioSort> get values => _$gStudioSortValues;
  static GStudioSort valueOf(String name) => _$gStudioSortValueOf(name);
}

class GSubmissionSort extends EnumClass {
  const GSubmissionSort._(String name) : super(name);

  static const GSubmissionSort ID = _$gSubmissionSortID;

  static const GSubmissionSort ID_DESC = _$gSubmissionSortID_DESC;

  static Serializer<GSubmissionSort> get serializer =>
      _$gSubmissionSortSerializer;
  static BuiltSet<GSubmissionSort> get values => _$gSubmissionSortValues;
  static GSubmissionSort valueOf(String name) => _$gSubmissionSortValueOf(name);
}

class GSubmissionStatus extends EnumClass {
  const GSubmissionStatus._(String name) : super(name);

  static const GSubmissionStatus PENDING = _$gSubmissionStatusPENDING;

  static const GSubmissionStatus REJECTED = _$gSubmissionStatusREJECTED;

  static const GSubmissionStatus PARTIALLY_ACCEPTED =
      _$gSubmissionStatusPARTIALLY_ACCEPTED;

  static const GSubmissionStatus ACCEPTED = _$gSubmissionStatusACCEPTED;

  static Serializer<GSubmissionStatus> get serializer =>
      _$gSubmissionStatusSerializer;
  static BuiltSet<GSubmissionStatus> get values => _$gSubmissionStatusValues;
  static GSubmissionStatus valueOf(String name) =>
      _$gSubmissionStatusValueOf(name);
}

class GThreadCommentSort extends EnumClass {
  const GThreadCommentSort._(String name) : super(name);

  static const GThreadCommentSort ID = _$gThreadCommentSortID;

  static const GThreadCommentSort ID_DESC = _$gThreadCommentSortID_DESC;

  static Serializer<GThreadCommentSort> get serializer =>
      _$gThreadCommentSortSerializer;
  static BuiltSet<GThreadCommentSort> get values => _$gThreadCommentSortValues;
  static GThreadCommentSort valueOf(String name) =>
      _$gThreadCommentSortValueOf(name);
}

class GThreadSort extends EnumClass {
  const GThreadSort._(String name) : super(name);

  static const GThreadSort ID = _$gThreadSortID;

  static const GThreadSort ID_DESC = _$gThreadSortID_DESC;

  static const GThreadSort TITLE = _$gThreadSortTITLE;

  static const GThreadSort TITLE_DESC = _$gThreadSortTITLE_DESC;

  static const GThreadSort CREATED_AT = _$gThreadSortCREATED_AT;

  static const GThreadSort CREATED_AT_DESC = _$gThreadSortCREATED_AT_DESC;

  static const GThreadSort UPDATED_AT = _$gThreadSortUPDATED_AT;

  static const GThreadSort UPDATED_AT_DESC = _$gThreadSortUPDATED_AT_DESC;

  static const GThreadSort REPLIED_AT = _$gThreadSortREPLIED_AT;

  static const GThreadSort REPLIED_AT_DESC = _$gThreadSortREPLIED_AT_DESC;

  static const GThreadSort REPLY_COUNT = _$gThreadSortREPLY_COUNT;

  static const GThreadSort REPLY_COUNT_DESC = _$gThreadSortREPLY_COUNT_DESC;

  static const GThreadSort VIEW_COUNT = _$gThreadSortVIEW_COUNT;

  static const GThreadSort VIEW_COUNT_DESC = _$gThreadSortVIEW_COUNT_DESC;

  static const GThreadSort IS_STICKY = _$gThreadSortIS_STICKY;

  static const GThreadSort SEARCH_MATCH = _$gThreadSortSEARCH_MATCH;

  static Serializer<GThreadSort> get serializer => _$gThreadSortSerializer;
  static BuiltSet<GThreadSort> get values => _$gThreadSortValues;
  static GThreadSort valueOf(String name) => _$gThreadSortValueOf(name);
}

class GUserSort extends EnumClass {
  const GUserSort._(String name) : super(name);

  static const GUserSort ID = _$gUserSortID;

  static const GUserSort ID_DESC = _$gUserSortID_DESC;

  static const GUserSort USERNAME = _$gUserSortUSERNAME;

  static const GUserSort USERNAME_DESC = _$gUserSortUSERNAME_DESC;

  static const GUserSort WATCHED_TIME = _$gUserSortWATCHED_TIME;

  static const GUserSort WATCHED_TIME_DESC = _$gUserSortWATCHED_TIME_DESC;

  static const GUserSort CHAPTERS_READ = _$gUserSortCHAPTERS_READ;

  static const GUserSort CHAPTERS_READ_DESC = _$gUserSortCHAPTERS_READ_DESC;

  static const GUserSort SEARCH_MATCH = _$gUserSortSEARCH_MATCH;

  static Serializer<GUserSort> get serializer => _$gUserSortSerializer;
  static BuiltSet<GUserSort> get values => _$gUserSortValues;
  static GUserSort valueOf(String name) => _$gUserSortValueOf(name);
}

class GUserStaffNameLanguage extends EnumClass {
  const GUserStaffNameLanguage._(String name) : super(name);

  static const GUserStaffNameLanguage ROMAJI_WESTERN =
      _$gUserStaffNameLanguageROMAJI_WESTERN;

  static const GUserStaffNameLanguage ROMAJI = _$gUserStaffNameLanguageROMAJI;

  static const GUserStaffNameLanguage NATIVE = _$gUserStaffNameLanguageNATIVE;

  static Serializer<GUserStaffNameLanguage> get serializer =>
      _$gUserStaffNameLanguageSerializer;
  static BuiltSet<GUserStaffNameLanguage> get values =>
      _$gUserStaffNameLanguageValues;
  static GUserStaffNameLanguage valueOf(String name) =>
      _$gUserStaffNameLanguageValueOf(name);
}

class GUserStatisticsSort extends EnumClass {
  const GUserStatisticsSort._(String name) : super(name);

  static const GUserStatisticsSort ID = _$gUserStatisticsSortID;

  static const GUserStatisticsSort ID_DESC = _$gUserStatisticsSortID_DESC;

  static const GUserStatisticsSort COUNT = _$gUserStatisticsSortCOUNT;

  static const GUserStatisticsSort COUNT_DESC = _$gUserStatisticsSortCOUNT_DESC;

  static const GUserStatisticsSort PROGRESS = _$gUserStatisticsSortPROGRESS;

  static const GUserStatisticsSort PROGRESS_DESC =
      _$gUserStatisticsSortPROGRESS_DESC;

  static const GUserStatisticsSort MEAN_SCORE = _$gUserStatisticsSortMEAN_SCORE;

  static const GUserStatisticsSort MEAN_SCORE_DESC =
      _$gUserStatisticsSortMEAN_SCORE_DESC;

  static Serializer<GUserStatisticsSort> get serializer =>
      _$gUserStatisticsSortSerializer;
  static BuiltSet<GUserStatisticsSort> get values =>
      _$gUserStatisticsSortValues;
  static GUserStatisticsSort valueOf(String name) =>
      _$gUserStatisticsSortValueOf(name);
}

class GUserTitleLanguage extends EnumClass {
  const GUserTitleLanguage._(String name) : super(name);

  static const GUserTitleLanguage ROMAJI = _$gUserTitleLanguageROMAJI;

  static const GUserTitleLanguage ENGLISH = _$gUserTitleLanguageENGLISH;

  static const GUserTitleLanguage NATIVE = _$gUserTitleLanguageNATIVE;

  static const GUserTitleLanguage ROMAJI_STYLISED =
      _$gUserTitleLanguageROMAJI_STYLISED;

  static const GUserTitleLanguage ENGLISH_STYLISED =
      _$gUserTitleLanguageENGLISH_STYLISED;

  static const GUserTitleLanguage NATIVE_STYLISED =
      _$gUserTitleLanguageNATIVE_STYLISED;

  static Serializer<GUserTitleLanguage> get serializer =>
      _$gUserTitleLanguageSerializer;
  static BuiltSet<GUserTitleLanguage> get values => _$gUserTitleLanguageValues;
  static GUserTitleLanguage valueOf(String name) =>
      _$gUserTitleLanguageValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {
  'ActivityUnion': {
    'TextActivity',
    'ListActivity',
    'MessageActivity',
  },
  'LikeableUnion': {
    'ListActivity',
    'TextActivity',
    'MessageActivity',
    'ActivityReply',
    'Thread',
    'ThreadComment',
  },
  'NotificationUnion': {
    'AiringNotification',
    'FollowingNotification',
    'ActivityMessageNotification',
    'ActivityMentionNotification',
    'ActivityReplyNotification',
    'ActivityReplySubscribedNotification',
    'ActivityLikeNotification',
    'ActivityReplyLikeNotification',
    'ThreadCommentMentionNotification',
    'ThreadCommentReplyNotification',
    'ThreadCommentSubscribedNotification',
    'ThreadCommentLikeNotification',
    'ThreadLikeNotification',
    'RelatedMediaAdditionNotification',
    'MediaDataChangeNotification',
    'MediaMergeNotification',
    'MediaDeletionNotification',
  },
};
