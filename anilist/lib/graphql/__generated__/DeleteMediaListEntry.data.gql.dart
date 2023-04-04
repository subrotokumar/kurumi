// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'DeleteMediaListEntry.data.gql.g.dart';

abstract class GDeleteMediaListEntryData
    implements
        Built<GDeleteMediaListEntryData, GDeleteMediaListEntryDataBuilder> {
  GDeleteMediaListEntryData._();

  factory GDeleteMediaListEntryData(
          [Function(GDeleteMediaListEntryDataBuilder b) updates]) =
      _$GDeleteMediaListEntryData;

  static void _initializeBuilder(GDeleteMediaListEntryDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteMediaListEntryData_DeleteMediaListEntry? get DeleteMediaListEntry;
  static Serializer<GDeleteMediaListEntryData> get serializer =>
      _$gDeleteMediaListEntryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryData.serializer,
        json,
      );
}

abstract class GDeleteMediaListEntryData_DeleteMediaListEntry
    implements
        Built<GDeleteMediaListEntryData_DeleteMediaListEntry,
            GDeleteMediaListEntryData_DeleteMediaListEntryBuilder> {
  GDeleteMediaListEntryData_DeleteMediaListEntry._();

  factory GDeleteMediaListEntryData_DeleteMediaListEntry(
      [Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder b)
          updates]) = _$GDeleteMediaListEntryData_DeleteMediaListEntry;

  static void _initializeBuilder(
          GDeleteMediaListEntryData_DeleteMediaListEntryBuilder b) =>
      b..G__typename = 'Deleted';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deleted;
  static Serializer<GDeleteMediaListEntryData_DeleteMediaListEntry>
      get serializer =>
          _$gDeleteMediaListEntryDataDeleteMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryData_DeleteMediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryData_DeleteMediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryData_DeleteMediaListEntry.serializer,
        json,
      );
}
