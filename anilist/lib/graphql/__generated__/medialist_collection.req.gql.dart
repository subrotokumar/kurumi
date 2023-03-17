// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/medialist_collection.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/medialist_collection.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/medialist_collection.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'medialist_collection.req.gql.g.dart';

abstract class GMediaListCollectionReq
    implements
        Built<GMediaListCollectionReq, GMediaListCollectionReqBuilder>,
        _i1.OperationRequest<_i2.GMediaListCollectionData,
            _i3.GMediaListCollectionVars> {
  GMediaListCollectionReq._();

  factory GMediaListCollectionReq(
          [Function(GMediaListCollectionReqBuilder b) updates]) =
      _$GMediaListCollectionReq;

  static void _initializeBuilder(GMediaListCollectionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaListCollection',
    )
    ..executeOnListen = true;
  @override
  _i3.GMediaListCollectionVars get vars;
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
  _i2.GMediaListCollectionData? Function(
    _i2.GMediaListCollectionData?,
    _i2.GMediaListCollectionData?,
  )? get updateResult;
  @override
  _i2.GMediaListCollectionData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaListCollectionData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaListCollectionData.fromJson(json);
  static Serializer<GMediaListCollectionReq> get serializer =>
      _$gMediaListCollectionReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaListCollectionReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMediaListCollectionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaListCollectionReq.serializer,
        json,
      );
}
