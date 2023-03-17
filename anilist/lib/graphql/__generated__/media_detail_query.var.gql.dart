// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_detail_query.var.gql.g.dart';

abstract class GMediaDetailQueryVars
    implements Built<GMediaDetailQueryVars, GMediaDetailQueryVarsBuilder> {
  GMediaDetailQueryVars._();

  factory GMediaDetailQueryVars(
          [Function(GMediaDetailQueryVarsBuilder b) updates]) =
      _$GMediaDetailQueryVars;

  int get id;
  int? get limit;
  int? get page;
  int? get perPage;
  static Serializer<GMediaDetailQueryVars> get serializer =>
      _$gMediaDetailQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaDetailQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaDetailQueryVars.serializer,
        json,
      );
}
