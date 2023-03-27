// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleteMediaListMutation.data.gql.g.dart';

abstract class GDeleteMediaListEntryMutationData
    implements
        Built<GDeleteMediaListEntryMutationData,
            GDeleteMediaListEntryMutationDataBuilder> {
  GDeleteMediaListEntryMutationData._();

  factory GDeleteMediaListEntryMutationData(
          [Function(GDeleteMediaListEntryMutationDataBuilder b) updates]) =
      _$GDeleteMediaListEntryMutationData;

  static void _initializeBuilder(GDeleteMediaListEntryMutationDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteMediaListEntryMutationData_DeleteMediaListEntry?
      get DeleteMediaListEntry;
  static Serializer<GDeleteMediaListEntryMutationData> get serializer =>
      _$gDeleteMediaListEntryMutationDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryMutationData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryMutationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryMutationData.serializer,
        json,
      );
}

abstract class GDeleteMediaListEntryMutationData_DeleteMediaListEntry
    implements
        Built<GDeleteMediaListEntryMutationData_DeleteMediaListEntry,
            GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder> {
  GDeleteMediaListEntryMutationData_DeleteMediaListEntry._();

  factory GDeleteMediaListEntryMutationData_DeleteMediaListEntry(
      [Function(GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder b)
          updates]) = _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry;

  static void _initializeBuilder(
          GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder b) =>
      b..G__typename = 'Deleted';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deleted;
  static Serializer<GDeleteMediaListEntryMutationData_DeleteMediaListEntry>
      get serializer =>
          _$gDeleteMediaListEntryMutationDataDeleteMediaListEntrySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryMutationData_DeleteMediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryMutationData_DeleteMediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryMutationData_DeleteMediaListEntry.serializer,
        json,
      );
}
