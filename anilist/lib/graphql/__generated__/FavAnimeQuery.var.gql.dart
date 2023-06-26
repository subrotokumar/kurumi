// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'FavAnimeQuery.var.gql.g.dart';

abstract class GFavAnimeQueryVars
    implements Built<GFavAnimeQueryVars, GFavAnimeQueryVarsBuilder> {
  GFavAnimeQueryVars._();

  factory GFavAnimeQueryVars([Function(GFavAnimeQueryVarsBuilder b) updates]) =
      _$GFavAnimeQueryVars;

  int? get id;
  int? get page;
  int? get perPage;
  static Serializer<GFavAnimeQueryVars> get serializer =>
      _$gFavAnimeQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavAnimeQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavAnimeQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavAnimeQueryVars.serializer,
        json,
      );
}
