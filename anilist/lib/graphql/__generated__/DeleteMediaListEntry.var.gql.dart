// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'DeleteMediaListEntry.var.gql.g.dart';

abstract class GDeleteMediaListEntryVars
    implements
        Built<GDeleteMediaListEntryVars, GDeleteMediaListEntryVarsBuilder> {
  GDeleteMediaListEntryVars._();

  factory GDeleteMediaListEntryVars(
          [Function(GDeleteMediaListEntryVarsBuilder b) updates]) =
      _$GDeleteMediaListEntryVars;

  int? get id;
  static Serializer<GDeleteMediaListEntryVars> get serializer =>
      _$gDeleteMediaListEntryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryVars.serializer,
        json,
      );
}
