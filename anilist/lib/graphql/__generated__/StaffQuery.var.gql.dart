// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'StaffQuery.var.gql.g.dart';

abstract class GStaffQueryVars
    implements Built<GStaffQueryVars, GStaffQueryVarsBuilder> {
  GStaffQueryVars._();

  factory GStaffQueryVars([Function(GStaffQueryVarsBuilder b) updates]) =
      _$GStaffQueryVars;

  int? get id;
  static Serializer<GStaffQueryVars> get serializer =>
      _$gStaffQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryVars.serializer,
        json,
      );
}
