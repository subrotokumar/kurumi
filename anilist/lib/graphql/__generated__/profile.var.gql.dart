// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile.var.gql.g.dart';

abstract class GProfileVars
    implements Built<GProfileVars, GProfileVarsBuilder> {
  GProfileVars._();

  factory GProfileVars([Function(GProfileVarsBuilder b) updates]) =
      _$GProfileVars;

  static Serializer<GProfileVars> get serializer => _$gProfileVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProfileVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GProfileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProfileVars.serializer,
        json,
      );
}
