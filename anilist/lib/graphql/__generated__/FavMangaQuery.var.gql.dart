// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'FavMangaQuery.var.gql.g.dart';

abstract class GFavMangaQueryVars
    implements Built<GFavMangaQueryVars, GFavMangaQueryVarsBuilder> {
  GFavMangaQueryVars._();

  factory GFavMangaQueryVars([Function(GFavMangaQueryVarsBuilder b) updates]) =
      _$GFavMangaQueryVars;

  int? get page;
  int? get perPage;
  static Serializer<GFavMangaQueryVars> get serializer =>
      _$gFavMangaQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryVars.serializer,
        json,
      );
}
