// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/CharacterDetailQuery.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/CharacterDetailQuery.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/CharacterDetailQuery.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'CharacterDetailQuery.req.gql.g.dart';

abstract class GCharacterDetailQueryReq
    implements
        Built<GCharacterDetailQueryReq, GCharacterDetailQueryReqBuilder>,
        _i1.OperationRequest<_i2.GCharacterDetailQueryData,
            _i3.GCharacterDetailQueryVars> {
  GCharacterDetailQueryReq._();

  factory GCharacterDetailQueryReq(
          [Function(GCharacterDetailQueryReqBuilder b) updates]) =
      _$GCharacterDetailQueryReq;

  static void _initializeBuilder(GCharacterDetailQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CharacterDetailQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GCharacterDetailQueryVars get vars;
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
  _i2.GCharacterDetailQueryData? Function(
    _i2.GCharacterDetailQueryData?,
    _i2.GCharacterDetailQueryData?,
  )? get updateResult;
  @override
  _i2.GCharacterDetailQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCharacterDetailQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GCharacterDetailQueryData.fromJson(json);
  static Serializer<GCharacterDetailQueryReq> get serializer =>
      _$gCharacterDetailQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCharacterDetailQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCharacterDetailQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCharacterDetailQueryReq.serializer,
        json,
      );
}
