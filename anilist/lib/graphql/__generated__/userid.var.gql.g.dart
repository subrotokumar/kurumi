// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userid.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserIDVars> _$gUserIDVarsSerializer = new _$GUserIDVarsSerializer();

class _$GUserIDVarsSerializer implements StructuredSerializer<GUserIDVars> {
  @override
  final Iterable<Type> types = const [GUserIDVars, _$GUserIDVars];
  @override
  final String wireName = 'GUserIDVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserIDVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserIDVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserIDVarsBuilder().build();
  }
}

class _$GUserIDVars extends GUserIDVars {
  factory _$GUserIDVars([void Function(GUserIDVarsBuilder)? updates]) =>
      (new GUserIDVarsBuilder()..update(updates))._build();

  _$GUserIDVars._() : super._();

  @override
  GUserIDVars rebuild(void Function(GUserIDVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserIDVarsBuilder toBuilder() => new GUserIDVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserIDVars;
  }

  @override
  int get hashCode {
    return 307284689;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserIDVars').toString();
  }
}

class GUserIDVarsBuilder implements Builder<GUserIDVars, GUserIDVarsBuilder> {
  _$GUserIDVars? _$v;

  GUserIDVarsBuilder();

  @override
  void replace(GUserIDVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserIDVars;
  }

  @override
  void update(void Function(GUserIDVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserIDVars build() => _build();

  _$GUserIDVars _build() {
    final _$result = _$v ?? new _$GUserIDVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
