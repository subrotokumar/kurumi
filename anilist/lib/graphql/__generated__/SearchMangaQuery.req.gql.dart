// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/SearchMangaQuery.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/SearchMangaQuery.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/SearchMangaQuery.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'SearchMangaQuery.req.gql.g.dart';

abstract class GSearchMangaQueryReq
    implements
        Built<GSearchMangaQueryReq, GSearchMangaQueryReqBuilder>,
        _i1.OperationRequest<_i2.GSearchMangaQueryData,
            _i3.GSearchMangaQueryVars> {
  GSearchMangaQueryReq._();

  factory GSearchMangaQueryReq(
          [Function(GSearchMangaQueryReqBuilder b) updates]) =
      _$GSearchMangaQueryReq;

  static void _initializeBuilder(GSearchMangaQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SearchMangaQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GSearchMangaQueryVars get vars;
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
  _i2.GSearchMangaQueryData? Function(
    _i2.GSearchMangaQueryData?,
    _i2.GSearchMangaQueryData?,
  )? get updateResult;
  @override
  _i2.GSearchMangaQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSearchMangaQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GSearchMangaQueryData.fromJson(json);
  static Serializer<GSearchMangaQueryReq> get serializer =>
      _$gSearchMangaQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSearchMangaQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchMangaQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSearchMangaQueryReq.serializer,
        json,
      );
}
