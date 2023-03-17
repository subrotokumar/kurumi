// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'userid.var.gql.g.dart';

abstract class GUserIDVars implements Built<GUserIDVars, GUserIDVarsBuilder> {
  GUserIDVars._();

  factory GUserIDVars([Function(GUserIDVarsBuilder b) updates]) = _$GUserIDVars;

  static Serializer<GUserIDVars> get serializer => _$gUserIDVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserIDVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserIDVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserIDVars.serializer,
        json,
      );
}
