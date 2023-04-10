// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_media.var.gql.g.dart';

abstract class GDiscoverMediaVars
    implements Built<GDiscoverMediaVars, GDiscoverMediaVarsBuilder> {
  GDiscoverMediaVars._();

  factory GDiscoverMediaVars([Function(GDiscoverMediaVarsBuilder b) updates]) =
      _$GDiscoverMediaVars;

  int? get page;
  int? get perPage;
  _i1.GMediaStatus? get status;
  _i1.GMediaType? get type;
  _i1.GMediaSort? get sort;
  _i1.GMediaSeason? get season;
  int? get seasonYear;
  _i1.GCountryCode? get country;
  static Serializer<GDiscoverMediaVars> get serializer =>
      _$gDiscoverMediaVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDiscoverMediaVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDiscoverMediaVars.serializer,
        json,
      );
}
