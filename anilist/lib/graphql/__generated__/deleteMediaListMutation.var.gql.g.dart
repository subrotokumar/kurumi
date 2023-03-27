// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteMediaListMutation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteMediaListEntryMutationVars>
    _$gDeleteMediaListEntryMutationVarsSerializer =
    new _$GDeleteMediaListEntryMutationVarsSerializer();

class _$GDeleteMediaListEntryMutationVarsSerializer
    implements StructuredSerializer<GDeleteMediaListEntryMutationVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryMutationVars,
    _$GDeleteMediaListEntryMutationVars
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryMutationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMediaListEntryMutationVars object,
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
  GDeleteMediaListEntryMutationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryMutationVarsBuilder();

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

class _$GDeleteMediaListEntryMutationVars
    extends GDeleteMediaListEntryMutationVars {
  @override
  final int? id;

  factory _$GDeleteMediaListEntryMutationVars(
          [void Function(GDeleteMediaListEntryMutationVarsBuilder)? updates]) =>
      (new GDeleteMediaListEntryMutationVarsBuilder()..update(updates))
          ._build();

  _$GDeleteMediaListEntryMutationVars._({this.id}) : super._();

  @override
  GDeleteMediaListEntryMutationVars rebuild(
          void Function(GDeleteMediaListEntryMutationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryMutationVarsBuilder toBuilder() =>
      new GDeleteMediaListEntryMutationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryMutationVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GDeleteMediaListEntryMutationVars')
          ..add('id', id))
        .toString();
  }
}

class GDeleteMediaListEntryMutationVarsBuilder
    implements
        Builder<GDeleteMediaListEntryMutationVars,
            GDeleteMediaListEntryMutationVarsBuilder> {
  _$GDeleteMediaListEntryMutationVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteMediaListEntryMutationVarsBuilder();

  GDeleteMediaListEntryMutationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryMutationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryMutationVars;
  }

  @override
  void update(
      void Function(GDeleteMediaListEntryMutationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryMutationVars build() => _build();

  _$GDeleteMediaListEntryMutationVars _build() {
    final _$result = _$v ?? new _$GDeleteMediaListEntryMutationVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
