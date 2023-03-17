// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trending_anime.var.gql.g.dart';

abstract class GtrendingAnimeVars
    implements Built<GtrendingAnimeVars, GtrendingAnimeVarsBuilder> {
  GtrendingAnimeVars._();

  factory GtrendingAnimeVars([Function(GtrendingAnimeVarsBuilder b) updates]) =
      _$GtrendingAnimeVars;

  int? get pageNum;
  int? get perPage;
  static Serializer<GtrendingAnimeVars> get serializer =>
      _$gtrendingAnimeVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtrendingAnimeVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtrendingAnimeVars.serializer,
        json,
      );
}
