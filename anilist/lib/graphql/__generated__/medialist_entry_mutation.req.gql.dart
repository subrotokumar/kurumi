// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/medialist_entry_mutation.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/medialist_entry_mutation.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/medialist_entry_mutation.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'medialist_entry_mutation.req.gql.g.dart';

abstract class GMediaListEntryMutationReq
    implements
        Built<GMediaListEntryMutationReq, GMediaListEntryMutationReqBuilder>,
        _i1.OperationRequest<_i2.GMediaListEntryMutationData,
            _i3.GMediaListEntryMutationVars> {
  GMediaListEntryMutationReq._();

  factory GMediaListEntryMutationReq(
          [Function(GMediaListEntryMutationReqBuilder b) updates]) =
      _$GMediaListEntryMutationReq;

  static void _initializeBuilder(GMediaListEntryMutationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaListEntryMutation',
    )
    ..executeOnListen = true;
  @override
  _i3.GMediaListEntryMutationVars get vars;
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
  _i2.GMediaListEntryMutationData? Function(
    _i2.GMediaListEntryMutationData?,
    _i2.GMediaListEntryMutationData?,
  )? get updateResult;
  @override
  _i2.GMediaListEntryMutationData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaListEntryMutationData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaListEntryMutationData.fromJson(json);
  static Serializer<GMediaListEntryMutationReq> get serializer =>
      _$gMediaListEntryMutationReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaListEntryMutationReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListEntryMutationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaListEntryMutationReq.serializer,
        json,
      );
}
