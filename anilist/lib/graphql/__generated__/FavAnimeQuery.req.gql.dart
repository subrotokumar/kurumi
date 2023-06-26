// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/FavAnimeQuery.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/FavAnimeQuery.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/FavAnimeQuery.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'FavAnimeQuery.req.gql.g.dart';

abstract class GFavAnimeQueryReq
    implements
        Built<GFavAnimeQueryReq, GFavAnimeQueryReqBuilder>,
        _i1.OperationRequest<_i2.GFavAnimeQueryData, _i3.GFavAnimeQueryVars> {
  GFavAnimeQueryReq._();

  factory GFavAnimeQueryReq([Function(GFavAnimeQueryReqBuilder b) updates]) =
      _$GFavAnimeQueryReq;

  static void _initializeBuilder(GFavAnimeQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'FavAnimeQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GFavAnimeQueryVars get vars;
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
  _i2.GFavAnimeQueryData? Function(
    _i2.GFavAnimeQueryData?,
    _i2.GFavAnimeQueryData?,
  )? get updateResult;
  @override
  _i2.GFavAnimeQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GFavAnimeQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GFavAnimeQueryData.fromJson(json);
  static Serializer<GFavAnimeQueryReq> get serializer =>
      _$gFavAnimeQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFavAnimeQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavAnimeQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFavAnimeQueryReq.serializer,
        json,
      );
}
