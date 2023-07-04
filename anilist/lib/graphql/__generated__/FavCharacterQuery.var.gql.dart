// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'FavCharacterQuery.var.gql.g.dart';

abstract class GFavCharacterQueryVars
    implements Built<GFavCharacterQueryVars, GFavCharacterQueryVarsBuilder> {
  GFavCharacterQueryVars._();

  factory GFavCharacterQueryVars(
          [Function(GFavCharacterQueryVarsBuilder b) updates]) =
      _$GFavCharacterQueryVars;

  int? get page;
  int? get perPage;
  static Serializer<GFavCharacterQueryVars> get serializer =>
      _$gFavCharacterQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavCharacterQueryVars.serializer,
        json,
      );
}
