// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'NotificationQuery.var.gql.g.dart';

abstract class GNotificationsQueryVars
    implements Built<GNotificationsQueryVars, GNotificationsQueryVarsBuilder> {
  GNotificationsQueryVars._();

  factory GNotificationsQueryVars(
          [Function(GNotificationsQueryVarsBuilder b) updates]) =
      _$GNotificationsQueryVars;

  int? get page;
  BuiltList<_i1.GNotificationType?>? get type_in;
  bool? get reset;
  static Serializer<GNotificationsQueryVars> get serializer =>
      _$gNotificationsQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationsQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationsQueryVars.serializer,
        json,
      );
}
