// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteMediaListMutation.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteMediaListEntryMutationReq>
    _$gDeleteMediaListEntryMutationReqSerializer =
    new _$GDeleteMediaListEntryMutationReqSerializer();

class _$GDeleteMediaListEntryMutationReqSerializer
    implements StructuredSerializer<GDeleteMediaListEntryMutationReq> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryMutationReq,
    _$GDeleteMediaListEntryMutationReq
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryMutationReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMediaListEntryMutationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GDeleteMediaListEntryMutationVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(_i2.GDeleteMediaListEntryMutationData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GDeleteMediaListEntryMutationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryMutationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GDeleteMediaListEntryMutationVars))!
              as _i3.GDeleteMediaListEntryMutationVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GDeleteMediaListEntryMutationData))!
              as _i2.GDeleteMediaListEntryMutationData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMediaListEntryMutationReq
    extends GDeleteMediaListEntryMutationReq {
  @override
  final _i3.GDeleteMediaListEntryMutationVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GDeleteMediaListEntryMutationData? Function(
      _i2.GDeleteMediaListEntryMutationData?,
      _i2.GDeleteMediaListEntryMutationData?)? updateResult;
  @override
  final _i2.GDeleteMediaListEntryMutationData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GDeleteMediaListEntryMutationReq(
          [void Function(GDeleteMediaListEntryMutationReqBuilder)? updates]) =>
      (new GDeleteMediaListEntryMutationReqBuilder()..update(updates))._build();

  _$GDeleteMediaListEntryMutationReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GDeleteMediaListEntryMutationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GDeleteMediaListEntryMutationReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(executeOnListen,
        r'GDeleteMediaListEntryMutationReq', 'executeOnListen');
  }

  @override
  GDeleteMediaListEntryMutationReq rebuild(
          void Function(GDeleteMediaListEntryMutationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryMutationReqBuilder toBuilder() =>
      new GDeleteMediaListEntryMutationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GDeleteMediaListEntryMutationReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteMediaListEntryMutationReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GDeleteMediaListEntryMutationReqBuilder
    implements
        Builder<GDeleteMediaListEntryMutationReq,
            GDeleteMediaListEntryMutationReqBuilder> {
  _$GDeleteMediaListEntryMutationReq? _$v;

  _i3.GDeleteMediaListEntryMutationVarsBuilder? _vars;
  _i3.GDeleteMediaListEntryMutationVarsBuilder get vars =>
      _$this._vars ??= new _i3.GDeleteMediaListEntryMutationVarsBuilder();
  set vars(_i3.GDeleteMediaListEntryMutationVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GDeleteMediaListEntryMutationData? Function(
      _i2.GDeleteMediaListEntryMutationData?,
      _i2.GDeleteMediaListEntryMutationData?)? _updateResult;
  _i2.GDeleteMediaListEntryMutationData? Function(
          _i2.GDeleteMediaListEntryMutationData?,
          _i2.GDeleteMediaListEntryMutationData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GDeleteMediaListEntryMutationData? Function(
                  _i2.GDeleteMediaListEntryMutationData?,
                  _i2.GDeleteMediaListEntryMutationData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GDeleteMediaListEntryMutationDataBuilder? _optimisticResponse;
  _i2.GDeleteMediaListEntryMutationDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GDeleteMediaListEntryMutationDataBuilder();
  set optimisticResponse(
          _i2.GDeleteMediaListEntryMutationDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GDeleteMediaListEntryMutationReqBuilder() {
    GDeleteMediaListEntryMutationReq._initializeBuilder(this);
  }

  GDeleteMediaListEntryMutationReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryMutationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryMutationReq;
  }

  @override
  void update(void Function(GDeleteMediaListEntryMutationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryMutationReq build() => _build();

  _$GDeleteMediaListEntryMutationReq _build() {
    _$GDeleteMediaListEntryMutationReq _$result;
    try {
      _$result = _$v ??
          new _$GDeleteMediaListEntryMutationReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GDeleteMediaListEntryMutationReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GDeleteMediaListEntryMutationReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteMediaListEntryMutationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
