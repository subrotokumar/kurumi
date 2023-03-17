// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'SearchMangaQuery.var.gql.g.dart';

abstract class GSearchMangaQueryVars
    implements Built<GSearchMangaQueryVars, GSearchMangaQueryVarsBuilder> {
  GSearchMangaQueryVars._();

  factory GSearchMangaQueryVars(
          [Function(GSearchMangaQueryVarsBuilder b) updates]) =
      _$GSearchMangaQueryVars;

  int? get page;
  String? get search;
  BuiltList<_i1.GMediaSort?>? get sort;
  BuiltList<_i1.GMediaFormat?>? get formatIn;
  BuiltList<_i1.GMediaStatus?>? get statusIn;
  BuiltList<_i1.GMediaSource?>? get sourceIn;
  _i1.GCountryCode? get countryOfOrigin;
  _i1.GMediaSeason? get season;
  _i1.GFuzzyDateInt? get startDateGreater;
  _i1.GFuzzyDateInt? get startDateLesser;
  bool? get isAdult;
  bool? get onList;
  BuiltList<String?>? get genreIn;
  BuiltList<String?>? get genreNotIn;
  int? get minimumTagRank;
  BuiltList<String?>? get tagIn;
  BuiltList<String?>? get tagNotIn;
  BuiltList<String?>? get licensedByIn;
  int? get chaptersGreater;
  int? get chaptersLesser;
  int? get volumesGreater;
  int? get volumesLesser;
  int? get averageScoreGreater;
  int? get averageScoreLesser;
  int? get popularityGreater;
  int? get popularityLesser;
  static Serializer<GSearchMangaQueryVars> get serializer =>
      _$gSearchMangaQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchMangaQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchMangaQueryVars.serializer,
        json,
      );
}
