// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'airing_schedule_query.var.gql.g.dart';

abstract class GAiringScheduleQueryVars
    implements
        Built<GAiringScheduleQueryVars, GAiringScheduleQueryVarsBuilder> {
  GAiringScheduleQueryVars._();

  factory GAiringScheduleQueryVars(
          [Function(GAiringScheduleQueryVarsBuilder b) updates]) =
      _$GAiringScheduleQueryVars;

  int? get page;
  int? get airingAtGreater;
  int? get airingAtLesser;
  static Serializer<GAiringScheduleQueryVars> get serializer =>
      _$gAiringScheduleQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAiringScheduleQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAiringScheduleQueryVars.serializer,
        json,
      );
}
