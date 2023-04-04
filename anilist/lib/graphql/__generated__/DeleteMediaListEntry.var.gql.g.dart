// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeleteMediaListEntry.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteMediaListEntryVars> _$gDeleteMediaListEntryVarsSerializer =
    new _$GDeleteMediaListEntryVarsSerializer();

class _$GDeleteMediaListEntryVarsSerializer
    implements StructuredSerializer<GDeleteMediaListEntryVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryVars,
    _$GDeleteMediaListEntryVars
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMediaListEntryVars object,
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
  GDeleteMediaListEntryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryVarsBuilder();

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

class _$GDeleteMediaListEntryVars extends GDeleteMediaListEntryVars {
  @override
  final int? id;

  factory _$GDeleteMediaListEntryVars(
          [void Function(GDeleteMediaListEntryVarsBuilder)? updates]) =>
      (new GDeleteMediaListEntryVarsBuilder()..update(updates))._build();

  _$GDeleteMediaListEntryVars._({this.id}) : super._();

  @override
  GDeleteMediaListEntryVars rebuild(
          void Function(GDeleteMediaListEntryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryVarsBuilder toBuilder() =>
      new GDeleteMediaListEntryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GDeleteMediaListEntryVars')
          ..add('id', id))
        .toString();
  }
}

class GDeleteMediaListEntryVarsBuilder
    implements
        Builder<GDeleteMediaListEntryVars, GDeleteMediaListEntryVarsBuilder> {
  _$GDeleteMediaListEntryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteMediaListEntryVarsBuilder();

  GDeleteMediaListEntryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryVars;
  }

  @override
  void update(void Function(GDeleteMediaListEntryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryVars build() => _build();

  _$GDeleteMediaListEntryVars _build() {
    final _$result = _$v ?? new _$GDeleteMediaListEntryVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
