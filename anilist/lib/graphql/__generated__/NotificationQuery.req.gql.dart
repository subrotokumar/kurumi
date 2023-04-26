// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/NotificationQuery.ast.gql.dart'
    as _i5;
import 'package:anilist/graphql/__generated__/NotificationQuery.data.gql.dart'
    as _i2;
import 'package:anilist/graphql/__generated__/NotificationQuery.var.gql.dart'
    as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'NotificationQuery.req.gql.g.dart';

abstract class GNotificationsQueryReq
    implements
        Built<GNotificationsQueryReq, GNotificationsQueryReqBuilder>,
        _i1.OperationRequest<_i2.GNotificationsQueryData,
            _i3.GNotificationsQueryVars> {
  GNotificationsQueryReq._();

  factory GNotificationsQueryReq(
          [Function(GNotificationsQueryReqBuilder b) updates]) =
      _$GNotificationsQueryReq;

  static void _initializeBuilder(GNotificationsQueryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'NotificationsQuery',
    )
    ..executeOnListen = true;
  @override
  _i3.GNotificationsQueryVars get vars;
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
  _i2.GNotificationsQueryData? Function(
    _i2.GNotificationsQueryData?,
    _i2.GNotificationsQueryData?,
  )? get updateResult;
  @override
  _i2.GNotificationsQueryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GNotificationsQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GNotificationsQueryData.fromJson(json);
  static Serializer<GNotificationsQueryReq> get serializer =>
      _$gNotificationsQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNotificationsQueryReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNotificationsQueryReq.serializer,
        json,
      );
}
