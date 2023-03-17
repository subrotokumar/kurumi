// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/media_detail_query.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/media_detail_query.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/media_detail_query.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'media_detail_query.req.gql.g.dart';

abstract class GMediaDetailQueryReq
    implements
        Built<GMediaDetailQueryReq, GMediaDetailQueryReqBuilder>,
        _i1.OperationRequest<_i2.GMediaDetailQueryData,
            _i3.GMediaDetailQueryVars> {
  GMediaDetailQueryReq._();

  factory GMediaDetailQueryReq(
          [Function(GMediaDetailQueryReqBuilder b) updates]) =
      _$GMediaDetailQueryReq;

  static void _initializeBuilder(GMediaDetailQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaDetailQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GMediaDetailQueryVars get vars;
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
  _i2.GMediaDetailQueryData? Function(
    _i2.GMediaDetailQueryData?,
    _i2.GMediaDetailQueryData?,
  )? get updateResult;
  @override
  _i2.GMediaDetailQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaDetailQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaDetailQueryData.fromJson(json);
  static Serializer<GMediaDetailQueryReq> get serializer =>
      _$gMediaDetailQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaDetailQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaDetailQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaDetailQueryReq.serializer,
        json,
      );
}
