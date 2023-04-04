// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/DeleteMediaListEntry.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/DeleteMediaListEntry.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/DeleteMediaListEntry.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'DeleteMediaListEntry.req.gql.g.dart';

abstract class GDeleteMediaListEntryReq
    implements
        Built<GDeleteMediaListEntryReq, GDeleteMediaListEntryReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteMediaListEntryData,
            _i3.GDeleteMediaListEntryVars> {
  GDeleteMediaListEntryReq._();

  factory GDeleteMediaListEntryReq(
          [Function(GDeleteMediaListEntryReqBuilder b) updates]) =
      _$GDeleteMediaListEntryReq;

  static void _initializeBuilder(GDeleteMediaListEntryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteMediaListEntry',
    )
    ..executeOnListen = true;
  @override
  _i3.GDeleteMediaListEntryVars get vars;
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
  _i2.GDeleteMediaListEntryData? Function(
    _i2.GDeleteMediaListEntryData?,
    _i2.GDeleteMediaListEntryData?,
  )? get updateResult;
  @override
  _i2.GDeleteMediaListEntryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDeleteMediaListEntryData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteMediaListEntryData.fromJson(json);
  static Serializer<GDeleteMediaListEntryReq> get serializer =>
      _$gDeleteMediaListEntryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteMediaListEntryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteMediaListEntryReq.serializer,
        json,
      );
}
