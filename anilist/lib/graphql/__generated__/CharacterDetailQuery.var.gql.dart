// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'CharacterDetailQuery.var.gql.g.dart';

abstract class GCharacterDetailQueryVars
    implements
        Built<GCharacterDetailQueryVars, GCharacterDetailQueryVarsBuilder> {
  GCharacterDetailQueryVars._();

  factory GCharacterDetailQueryVars(
          [Function(GCharacterDetailQueryVarsBuilder b) updates]) =
      _$GCharacterDetailQueryVars;

  int? get id;
  int? get page;
  static Serializer<GCharacterDetailQueryVars> get serializer =>
      _$gCharacterDetailQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterDetailQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterDetailQueryVars.serializer,
        json,
      );
}
