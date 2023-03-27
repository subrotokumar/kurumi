// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'medialist_entry_mutation.var.gql.g.dart';

abstract class GMediaListEntryMutationVars
    implements
        Built<GMediaListEntryMutationVars, GMediaListEntryMutationVarsBuilder> {
  GMediaListEntryMutationVars._();

  factory GMediaListEntryMutationVars(
          [Function(GMediaListEntryMutationVarsBuilder b) updates]) =
      _$GMediaListEntryMutationVars;

  int? get id;
  int? get mediaId;
  _i1.GMediaListStatus? get status;
  double? get score;
  int? get progress;
  int? get repeat;
  int? get priority;
  bool? get isPrivate;
  String? get notes;
  bool? get hiddenFromStatusLists;
  BuiltList<String?>? get customLists;
  BuiltList<double?>? get advancedScores;
  _i1.GFuzzyDateInput? get startedAt;
  _i1.GFuzzyDateInput? get completedAt;
  static Serializer<GMediaListEntryMutationVars> get serializer =>
      _$gMediaListEntryMutationVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMediaListEntryMutationVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMediaListEntryMutationVars.serializer,
        json,
      );
}
