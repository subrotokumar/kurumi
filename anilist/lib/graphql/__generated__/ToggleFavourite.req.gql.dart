// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:anilist/graphql/__generated__/ToggleFavourite.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/ToggleFavourite.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/ToggleFavourite.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ToggleFavourite.req.gql.g.dart';

abstract class GToggleFavouriteReq
    implements
        Built<GToggleFavouriteReq, GToggleFavouriteReqBuilder>,
        _i1.OperationRequest<_i2.GToggleFavouriteData,
            _i3.GToggleFavouriteVars> {
  GToggleFavouriteReq._();

  factory GToggleFavouriteReq(
      [Function(GToggleFavouriteReqBuilder b) updates]) = _$GToggleFavouriteReq;

  static void _initializeBuilder(GToggleFavouriteReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ToggleFavourite',
    )
    ..executeOnListen = true;
  @override
  _i3.GToggleFavouriteVars get vars;
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
  _i2.GToggleFavouriteData? Function(
    _i2.GToggleFavouriteData?,
    _i2.GToggleFavouriteData?,
  )? get updateResult;
  @override
  _i2.GToggleFavouriteData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GToggleFavouriteData? parseData(Map<String, dynamic> json) =>
      _i2.GToggleFavouriteData.fromJson(json);
  static Serializer<GToggleFavouriteReq> get serializer =>
      _$gToggleFavouriteReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GToggleFavouriteReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GToggleFavouriteReq.serializer,
        json,
      );
}
