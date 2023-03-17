// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/ReviewQuery.ast.gql.dart' as _i5;
import 'package:anilist/graphql/__generated__/ReviewQuery.data.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/ReviewQuery.var.gql.dart' as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ReviewQuery.req.gql.g.dart';

abstract class GReviewQueryReq
    implements
        Built<GReviewQueryReq, GReviewQueryReqBuilder>,
        _i1.OperationRequest<_i2.GReviewQueryData, _i3.GReviewQueryVars> {
  GReviewQueryReq._();

  factory GReviewQueryReq([Function(GReviewQueryReqBuilder b) updates]) =
      _$GReviewQueryReq;

  static void _initializeBuilder(GReviewQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ReviewQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GReviewQueryVars get vars;
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
  _i2.GReviewQueryData? Function(
    _i2.GReviewQueryData?,
    _i2.GReviewQueryData?,
  )? get updateResult;
  @override
  _i2.GReviewQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GReviewQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GReviewQueryData.fromJson(json);
  static Serializer<GReviewQueryReq> get serializer =>
      _$gReviewQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReviewQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReviewQueryReq.serializer,
        json,
      );
}
