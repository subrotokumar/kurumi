// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/discover_media.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/discover_media.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/discover_media.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'discover_media.req.gql.g.dart';

abstract class GDiscoverMediaReq
    implements
        Built<GDiscoverMediaReq, GDiscoverMediaReqBuilder>,
        _i1.OperationRequest<_i2.GDiscoverMediaData, _i3.GDiscoverMediaVars> {
  GDiscoverMediaReq._();

  factory GDiscoverMediaReq([Function(GDiscoverMediaReqBuilder b) updates]) =
      _$GDiscoverMediaReq;

  static void _initializeBuilder(GDiscoverMediaReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DiscoverMedia',
    )
    ..executeOnListen = true;
  @override
  _i3.GDiscoverMediaVars get vars;
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
  _i2.GDiscoverMediaData? Function(
    _i2.GDiscoverMediaData?,
    _i2.GDiscoverMediaData?,
  )? get updateResult;
  @override
  _i2.GDiscoverMediaData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDiscoverMediaData? parseData(Map<String, dynamic> json) =>
      _i2.GDiscoverMediaData.fromJson(json);
  static Serializer<GDiscoverMediaReq> get serializer =>
      _$gDiscoverMediaReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDiscoverMediaReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDiscoverMediaReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDiscoverMediaReq.serializer,
        json,
      );
}
