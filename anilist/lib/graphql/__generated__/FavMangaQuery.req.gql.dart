// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/FavMangaQuery.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/FavMangaQuery.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/FavMangaQuery.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'FavMangaQuery.req.gql.g.dart';

abstract class GFavMangaQueryReq
    implements
        Built<GFavMangaQueryReq, GFavMangaQueryReqBuilder>,
        _i1.OperationRequest<_i2.GFavMangaQueryData, _i3.GFavMangaQueryVars> {
  GFavMangaQueryReq._();

  factory GFavMangaQueryReq([Function(GFavMangaQueryReqBuilder b) updates]) =
      _$GFavMangaQueryReq;

  static void _initializeBuilder(GFavMangaQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'FavMangaQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GFavMangaQueryVars get vars;
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
  _i2.GFavMangaQueryData? Function(
    _i2.GFavMangaQueryData?,
    _i2.GFavMangaQueryData?,
  )? get updateResult;
  @override
  _i2.GFavMangaQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GFavMangaQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GFavMangaQueryData.fromJson(json);
  static Serializer<GFavMangaQueryReq> get serializer =>
      _$gFavMangaQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFavMangaQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFavMangaQueryReq.serializer,
        json,
      );
}
