// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleteMediaListMutation.var.gql.g.dart';

abstract class GDeleteMediaListEntryMutationVars
    implements
        Built<GDeleteMediaListEntryMutationVars,
            GDeleteMediaListEntryMutationVarsBuilder> {
  GDeleteMediaListEntryMutationVars._();

  factory GDeleteMediaListEntryMutationVars(
          [Function(GDeleteMediaListEntryMutationVarsBuilder b) updates]) =
      _$GDeleteMediaListEntryMutationVars;

  int? get id;
  static Serializer<GDeleteMediaListEntryMutationVars> get serializer =>
      _$gDeleteMediaListEntryMutationVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryMutationVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryMutationVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryMutationVars.serializer,
        json,
      );
}
