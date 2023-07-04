// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/FavCharacterQuery.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/FavCharacterQuery.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/FavCharacterQuery.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'FavCharacterQuery.req.gql.g.dart';

abstract class GFavCharacterQueryReq
    implements
        Built<GFavCharacterQueryReq, GFavCharacterQueryReqBuilder>,
        _i1.OperationRequest<_i2.GFavCharacterQueryData,
            _i3.GFavCharacterQueryVars> {
  GFavCharacterQueryReq._();

  factory GFavCharacterQueryReq(
          [Function(GFavCharacterQueryReqBuilder b) updates]) =
      _$GFavCharacterQueryReq;

  static void _initializeBuilder(GFavCharacterQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'FavCharacterQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GFavCharacterQueryVars get vars;
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
  _i2.GFavCharacterQueryData? Function(
    _i2.GFavCharacterQueryData?,
    _i2.GFavCharacterQueryData?,
  )? get updateResult;
  @override
  _i2.GFavCharacterQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GFavCharacterQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GFavCharacterQueryData.fromJson(json);
  static Serializer<GFavCharacterQueryReq> get serializer =>
      _$gFavCharacterQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFavCharacterQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFavCharacterQueryReq.serializer,
        json,
      );
}
