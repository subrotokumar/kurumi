// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/airing_schedule_query.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/airing_schedule_query.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/airing_schedule_query.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'airing_schedule_query.req.gql.g.dart';

abstract class GAiringScheduleQueryReq
    implements
        Built<GAiringScheduleQueryReq, GAiringScheduleQueryReqBuilder>,
        _i1.OperationRequest<_i2.GAiringScheduleQueryData,
            _i3.GAiringScheduleQueryVars> {
  GAiringScheduleQueryReq._();

  factory GAiringScheduleQueryReq(
          [Function(GAiringScheduleQueryReqBuilder b) updates]) =
      _$GAiringScheduleQueryReq;

  static void _initializeBuilder(GAiringScheduleQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AiringScheduleQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GAiringScheduleQueryVars get vars;
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
  _i2.GAiringScheduleQueryData? Function(
    _i2.GAiringScheduleQueryData?,
    _i2.GAiringScheduleQueryData?,
  )? get updateResult;
  @override
  _i2.GAiringScheduleQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAiringScheduleQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GAiringScheduleQueryData.fromJson(json);
  static Serializer<GAiringScheduleQueryReq> get serializer =>
      _$gAiringScheduleQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAiringScheduleQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAiringScheduleQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAiringScheduleQueryReq.serializer,
        json,
      );
}
