// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/deleteMediaListMutation.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/deleteMediaListMutation.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/deleteMediaListMutation.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'deleteMediaListMutation.req.gql.g.dart';

abstract class GDeleteMediaListEntryMutationReq
    implements
        Built<GDeleteMediaListEntryMutationReq,
            GDeleteMediaListEntryMutationReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteMediaListEntryMutationData,
            _i3.GDeleteMediaListEntryMutationVars> {
  GDeleteMediaListEntryMutationReq._();

  factory GDeleteMediaListEntryMutationReq(
          [Function(GDeleteMediaListEntryMutationReqBuilder b) updates]) =
      _$GDeleteMediaListEntryMutationReq;

  static void _initializeBuilder(GDeleteMediaListEntryMutationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteMediaListEntryMutation',
    )
    ..executeOnListen = true;
  @override
  _i3.GDeleteMediaListEntryMutationVars get vars;
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
  _i2.GDeleteMediaListEntryMutationData? Function(
    _i2.GDeleteMediaListEntryMutationData?,
    _i2.GDeleteMediaListEntryMutationData?,
  )? get updateResult;
  @override
  _i2.GDeleteMediaListEntryMutationData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDeleteMediaListEntryMutationData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteMediaListEntryMutationData.fromJson(json);
  static Serializer<GDeleteMediaListEntryMutationReq> get serializer =>
      _$gDeleteMediaListEntryMutationReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteMediaListEntryMutationReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteMediaListEntryMutationReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteMediaListEntryMutationReq.serializer,
        json,
      );
}
