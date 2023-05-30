// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StaffQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStaffQueryVars> _$gStaffQueryVarsSerializer =
    new _$GStaffQueryVarsSerializer();

class _$GStaffQueryVarsSerializer
    implements StructuredSerializer<GStaffQueryVars> {
  @override
  final Iterable<Type> types = const [GStaffQueryVars, _$GStaffQueryVars];
  @override
  final String wireName = 'GStaffQueryVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStaffQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GStaffQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffQueryVars extends GStaffQueryVars {
  @override
  final int? id;

  factory _$GStaffQueryVars([void Function(GStaffQueryVarsBuilder)? updates]) =>
      (new GStaffQueryVarsBuilder()..update(updates))._build();

  _$GStaffQueryVars._({this.id}) : super._();

  @override
  GStaffQueryVars rebuild(void Function(GStaffQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryVarsBuilder toBuilder() =>
      new GStaffQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffQueryVars')..add('id', id))
        .toString();
  }
}

class GStaffQueryVarsBuilder
    implements Builder<GStaffQueryVars, GStaffQueryVarsBuilder> {
  _$GStaffQueryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GStaffQueryVarsBuilder();

  GStaffQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryVars;
  }

  @override
  void update(void Function(GStaffQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryVars build() => _build();

  _$GStaffQueryVars _build() {
    final _$result = _$v ?? new _$GStaffQueryVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
