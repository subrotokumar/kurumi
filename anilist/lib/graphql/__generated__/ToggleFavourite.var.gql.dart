// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ToggleFavourite.var.gql.g.dart';

abstract class GToggleFavouriteVars
    implements Built<GToggleFavouriteVars, GToggleFavouriteVarsBuilder> {
  GToggleFavouriteVars._();

  factory GToggleFavouriteVars(
          [Function(GToggleFavouriteVarsBuilder b) updates]) =
      _$GToggleFavouriteVars;

  int? get animeId;
  int? get mangaId;
  int? get characterId;
  int? get staffId;
  int? get studioId;
  static Serializer<GToggleFavouriteVars> get serializer =>
      _$gToggleFavouriteVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteVars.serializer,
        json,
      );
}
