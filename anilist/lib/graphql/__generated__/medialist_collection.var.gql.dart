// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'medialist_collection.var.gql.g.dart';

abstract class GMediaListCollectionVars
    implements
        Built<GMediaListCollectionVars, GMediaListCollectionVarsBuilder> {
  GMediaListCollectionVars._();

  factory GMediaListCollectionVars(
          [Function(GMediaListCollectionVarsBuilder b) updates]) =
      _$GMediaListCollectionVars;

  int? get userId;
  _i1.GMediaType? get type;
  _i1.GMediaListStatus? get status;
  BuiltList<_i1.GMediaListSort?>? get sort;
  static Serializer<GMediaListCollectionVars> get serializer =>
      _$gMediaListCollectionVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMediaListCollectionVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMediaListCollectionVars.serializer,
        json,
      );
}
