// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'userid.data.gql.g.dart';

abstract class GUserIDData implements Built<GUserIDData, GUserIDDataBuilder> {
  GUserIDData._();

  factory GUserIDData([Function(GUserIDDataBuilder b) updates]) = _$GUserIDData;

  static void _initializeBuilder(GUserIDDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserIDData_Viewer? get Viewer;
  static Serializer<GUserIDData> get serializer => _$gUserIDDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserIDData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserIDData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserIDData.serializer,
        json,
      );
}

abstract class GUserIDData_Viewer
    implements Built<GUserIDData_Viewer, GUserIDData_ViewerBuilder> {
  GUserIDData_Viewer._();

  factory GUserIDData_Viewer([Function(GUserIDData_ViewerBuilder b) updates]) =
      _$GUserIDData_Viewer;

  static void _initializeBuilder(GUserIDData_ViewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  static Serializer<GUserIDData_Viewer> get serializer =>
      _$gUserIDDataViewerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserIDData_Viewer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserIDData_Viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserIDData_Viewer.serializer,
        json,
      );
}
