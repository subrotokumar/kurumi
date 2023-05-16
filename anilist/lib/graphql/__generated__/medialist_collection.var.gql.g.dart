// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medialist_collection.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListCollectionVars> _$gMediaListCollectionVarsSerializer =
    new _$GMediaListCollectionVarsSerializer();

class _$GMediaListCollectionVarsSerializer
    implements StructuredSerializer<GMediaListCollectionVars> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionVars,
    _$GMediaListCollectionVars
  ];
  @override
  final String wireName = 'GMediaListCollectionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListCollectionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaType)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaListStatus)));
    }
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(_i1.GMediaListSort)])));
    }
    return result;
  }

  @override
  GMediaListCollectionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListCollectionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaListStatus))
              as _i1.GMediaListStatus?;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GMediaListSort)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionVars extends GMediaListCollectionVars {
  @override
  final int? userId;
  @override
  final _i1.GMediaType? type;
  @override
  final _i1.GMediaListStatus? status;
  @override
  final BuiltList<_i1.GMediaListSort?>? sort;

  factory _$GMediaListCollectionVars(
          [void Function(GMediaListCollectionVarsBuilder)? updates]) =>
      (new GMediaListCollectionVarsBuilder()..update(updates))._build();

  _$GMediaListCollectionVars._({this.userId, this.type, this.status, this.sort})
      : super._();

  @override
  GMediaListCollectionVars rebuild(
          void Function(GMediaListCollectionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionVarsBuilder toBuilder() =>
      new GMediaListCollectionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListCollectionVars &&
        userId == other.userId &&
        type == other.type &&
        status == other.status &&
        sort == other.sort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListCollectionVars')
          ..add('userId', userId)
          ..add('type', type)
          ..add('status', status)
          ..add('sort', sort))
        .toString();
  }
}

class GMediaListCollectionVarsBuilder
    implements
        Builder<GMediaListCollectionVars, GMediaListCollectionVarsBuilder> {
  _$GMediaListCollectionVars? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  _i1.GMediaListStatus? _status;
  _i1.GMediaListStatus? get status => _$this._status;
  set status(_i1.GMediaListStatus? status) => _$this._status = status;

  ListBuilder<_i1.GMediaListSort?>? _sort;
  ListBuilder<_i1.GMediaListSort?> get sort =>
      _$this._sort ??= new ListBuilder<_i1.GMediaListSort?>();
  set sort(ListBuilder<_i1.GMediaListSort?>? sort) => _$this._sort = sort;

  GMediaListCollectionVarsBuilder();

  GMediaListCollectionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _type = $v.type;
      _status = $v.status;
      _sort = $v.sort?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListCollectionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListCollectionVars;
  }

  @override
  void update(void Function(GMediaListCollectionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionVars build() => _build();

  _$GMediaListCollectionVars _build() {
    _$GMediaListCollectionVars _$result;
    try {
      _$result = _$v ??
          new _$GMediaListCollectionVars._(
              userId: userId, type: type, status: status, sort: _sort?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListCollectionVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
