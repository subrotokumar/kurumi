// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:anilist/graphql/__generated__/trending_anime.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/trending_anime.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/trending_anime.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'trending_anime.req.gql.g.dart';

abstract class GtrendingAnimeReq
    implements
        Built<GtrendingAnimeReq, GtrendingAnimeReqBuilder>,
        _i1.OperationRequest<_i2.GtrendingAnimeData, _i3.GtrendingAnimeVars> {
  GtrendingAnimeReq._();

  factory GtrendingAnimeReq([Function(GtrendingAnimeReqBuilder b) updates]) =
      _$GtrendingAnimeReq;

  static void _initializeBuilder(GtrendingAnimeReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'trendingAnime',
    )
    ..executeOnListen = true;
  @override
  _i3.GtrendingAnimeVars get vars;
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
  _i2.GtrendingAnimeData? Function(
    _i2.GtrendingAnimeData?,
    _i2.GtrendingAnimeData?,
  )? get updateResult;
  @override
  _i2.GtrendingAnimeData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GtrendingAnimeData? parseData(Map<String, dynamic> json) =>
      _i2.GtrendingAnimeData.fromJson(json);
  static Serializer<GtrendingAnimeReq> get serializer =>
      _$gtrendingAnimeReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GtrendingAnimeReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GtrendingAnimeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GtrendingAnimeReq.serializer,
        json,
      );
}
