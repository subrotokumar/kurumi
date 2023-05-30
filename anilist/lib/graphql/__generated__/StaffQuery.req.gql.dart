// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:anilist/graphql/__generated__/StaffQuery.ast.gql.dart' as _i5;
import 'package:anilist/graphql/__generated__/StaffQuery.data.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/StaffQuery.var.gql.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'StaffQuery.req.gql.g.dart';

abstract class GStaffQueryReq
    implements
        Built<GStaffQueryReq, GStaffQueryReqBuilder>,
        _i1.OperationRequest<_i2.GStaffQueryData, _i3.GStaffQueryVars> {
  GStaffQueryReq._();

  factory GStaffQueryReq([Function(GStaffQueryReqBuilder b) updates]) =
      _$GStaffQueryReq;

  static void _initializeBuilder(GStaffQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'StaffQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GStaffQueryVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GStaffQueryData? Function(
    _i2.GStaffQueryData?,
    _i2.GStaffQueryData?,
  )? get updateResult;
  @override
  _i2.GStaffQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GStaffQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GStaffQueryData.fromJson(json);
  static Serializer<GStaffQueryReq> get serializer =>
      _$gStaffQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GStaffQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GStaffQueryReq.serializer,
        json,
      );
}
