// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/SearchAnimeQuery.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/SearchAnimeQuery.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/SearchAnimeQuery.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'SearchAnimeQuery.req.gql.g.dart';

abstract class GSearchAnimeQueryReq
    implements
        Built<GSearchAnimeQueryReq, GSearchAnimeQueryReqBuilder>,
        _i1.OperationRequest<_i2.GSearchAnimeQueryData,
            _i3.GSearchAnimeQueryVars> {
  GSearchAnimeQueryReq._();

  factory GSearchAnimeQueryReq(
          [Function(GSearchAnimeQueryReqBuilder b) updates]) =
      _$GSearchAnimeQueryReq;

  static void _initializeBuilder(GSearchAnimeQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SearchAnimeQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GSearchAnimeQueryVars get vars;
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
  _i2.GSearchAnimeQueryData? Function(
    _i2.GSearchAnimeQueryData?,
    _i2.GSearchAnimeQueryData?,
  )? get updateResult;
  @override
  _i2.GSearchAnimeQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSearchAnimeQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GSearchAnimeQueryData.fromJson(json);
  static Serializer<GSearchAnimeQueryReq> get serializer =>
      _$gSearchAnimeQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSearchAnimeQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSearchAnimeQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSearchAnimeQueryReq.serializer,
        json,
      );
}
