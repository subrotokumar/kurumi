// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'medialist_entry_mutation.data.gql.g.dart';

abstract class GMediaListEntryMutationData
    implements
        Built<GMediaListEntryMutationData, GMediaListEntryMutationDataBuilder> {
  GMediaListEntryMutationData._();

  factory GMediaListEntryMutationData(
          [Function(GMediaListEntryMutationDataBuilder b) updates]) =
      _$GMediaListEntryMutationData;

  static void _initializeBuilder(GMediaListEntryMutationDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaListEntryMutationData_SaveMediaListEntry? get SaveMediaListEntry;
  static Serializer<GMediaListEntryMutationData> get serializer =>
      _$gMediaListEntryMutationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListEntryMutationData.serializer,
        json,
      );
}

abstract class GMediaListEntryMutationData_SaveMediaListEntry
    implements
        Built<GMediaListEntryMutationData_SaveMediaListEntry,
            GMediaListEntryMutationData_SaveMediaListEntryBuilder> {
  GMediaListEntryMutationData_SaveMediaListEntry._();

  factory GMediaListEntryMutationData_SaveMediaListEntry(
      [Function(GMediaListEntryMutationData_SaveMediaListEntryBuilder b)
          updates]) = _$GMediaListEntryMutationData_SaveMediaListEntry;

  static void _initializeBuilder(
          GMediaListEntryMutationData_SaveMediaListEntryBuilder b) =>
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
  GMediaListEntryMutationData_SaveMediaListEntry_startedAt? get startedAt;
  GMediaListEntryMutationData_SaveMediaListEntry_completedAt? get completedAt;
  GMediaListEntryMutationData_SaveMediaListEntry_media? get media;
  static Serializer<GMediaListEntryMutationData_SaveMediaListEntry>
      get serializer =>
          _$gMediaListEntryMutationDataSaveMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData_SaveMediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry.serializer,
        json,
      );
}

abstract class GMediaListEntryMutationData_SaveMediaListEntry_startedAt
    implements
        Built<GMediaListEntryMutationData_SaveMediaListEntry_startedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder> {
  GMediaListEntryMutationData_SaveMediaListEntry_startedAt._();

  factory GMediaListEntryMutationData_SaveMediaListEntry_startedAt(
      [Function(
              GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder b)
          updates]) = _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt;

  static void _initializeBuilder(
          GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<GMediaListEntryMutationData_SaveMediaListEntry_startedAt>
      get serializer =>
          _$gMediaListEntryMutationDataSaveMediaListEntryStartedAtSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData_SaveMediaListEntry_startedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_startedAt.serializer,
        json,
      );
}

abstract class GMediaListEntryMutationData_SaveMediaListEntry_completedAt
    implements
        Built<GMediaListEntryMutationData_SaveMediaListEntry_completedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder> {
  GMediaListEntryMutationData_SaveMediaListEntry_completedAt._();

  factory GMediaListEntryMutationData_SaveMediaListEntry_completedAt(
      [Function(
              GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder
                  b)
          updates]) = _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt;

  static void _initializeBuilder(
          GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder
              b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<GMediaListEntryMutationData_SaveMediaListEntry_completedAt>
      get serializer =>
          _$gMediaListEntryMutationDataSaveMediaListEntryCompletedAtSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData_SaveMediaListEntry_completedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_completedAt.serializer,
        json,
      );
}

abstract class GMediaListEntryMutationData_SaveMediaListEntry_media
    implements
        Built<GMediaListEntryMutationData_SaveMediaListEntry_media,
            GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder> {
  GMediaListEntryMutationData_SaveMediaListEntry_media._();

  factory GMediaListEntryMutationData_SaveMediaListEntry_media(
      [Function(GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder b)
          updates]) = _$GMediaListEntryMutationData_SaveMediaListEntry_media;

  static void _initializeBuilder(
          GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry?
      get mediaListEntry;
  static Serializer<GMediaListEntryMutationData_SaveMediaListEntry_media>
      get serializer =>
          _$gMediaListEntryMutationDataSaveMediaListEntryMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData_SaveMediaListEntry_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_media.serializer,
        json,
      );
}

abstract class GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
    implements
        Built<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry,
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder> {
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry._();

  factory GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry(
          [Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder
                      b)
              updates]) =
      _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry;

  static void _initializeBuilder(
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder
              b) =>
      b..G__typename = 'MediaList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get userId;
  _i2.GMediaListStatus? get status;
  double? get score;
  int? get progress;
  int? get progressVolumes;
  int? get repeat;
  int? get priority;
  bool? get private;
  String? get notes;
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt?
      get startedAt;
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt?
      get completedAt;
  static Serializer<
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry>
      get serializer =>
          _$gMediaListEntryMutationDataSaveMediaListEntryMediaMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
                .serializer,
            json,
          );
}

abstract class GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
    implements
        Built<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder> {
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt._();

  factory GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt(
          [Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder
                      b)
              updates]) =
      _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt;

  static void _initializeBuilder(
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder
              b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt>
      get serializer =>
          _$gMediaListEntryMutationDataSaveMediaListEntryMediaMediaListEntryStartedAtSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
                .serializer,
            json,
          );
}

abstract class GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
    implements
        Built<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder> {
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt._();

  factory GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt(
          [Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder
                      b)
              updates]) =
      _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt;

  static void _initializeBuilder(
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder
              b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  int? get month;
  int? get day;
  static Serializer<
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt>
      get serializer =>
          _$gMediaListEntryMutationDataSaveMediaListEntryMediaMediaListEntryCompletedAtSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
                .serializer,
            json,
          );
}
