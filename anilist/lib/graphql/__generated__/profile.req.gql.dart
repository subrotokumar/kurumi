// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/profile.ast.gql.dart' as _i5;
import 'package:anilist/graphql/__generated__/profile.data.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/profile.var.gql.dart' as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'profile.req.gql.g.dart';

abstract class GProfileReq
    implements
        Built<GProfileReq, GProfileReqBuilder>,
        _i1.OperationRequest<_i2.GProfileData, _i3.GProfileVars> {
  GProfileReq._();

  factory GProfileReq([Function(GProfileReqBuilder b) updates]) = _$GProfileReq;

  static void _initializeBuilder(GProfileReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Profile',
    )
    ..executeOnListen = true;
  @override
  _i3.GProfileVars get vars;
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
  _i2.GProfileData? Function(
    _i2.GProfileData?,
    _i2.GProfileData?,
  )? get updateResult;
  @override
  _i2.GProfileData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GProfileData? parseData(Map<String, dynamic> json) =>
      _i2.GProfileData.fromJson(json);
  static Serializer<GProfileReq> get serializer => _$gProfileReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProfileReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GProfileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProfileReq.serializer,
        json,
      );
}
