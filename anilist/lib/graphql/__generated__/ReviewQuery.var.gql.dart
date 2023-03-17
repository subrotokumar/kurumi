// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ReviewQuery.var.gql.g.dart';

abstract class GReviewQueryVars
    implements Built<GReviewQueryVars, GReviewQueryVarsBuilder> {
  GReviewQueryVars._();

  factory GReviewQueryVars([Function(GReviewQueryVarsBuilder b) updates]) =
      _$GReviewQueryVars;

  int? get page;
  int? get perPage;
  _i1.GMediaType get type;
  static Serializer<GReviewQueryVars> get serializer =>
      _$gReviewQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReviewQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReviewQueryVars.serializer,
        json,
      );
}
