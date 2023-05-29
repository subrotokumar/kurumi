// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CharacterDetailQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharacterDetailQueryVars> _$gCharacterDetailQueryVarsSerializer =
    new _$GCharacterDetailQueryVarsSerializer();

class _$GCharacterDetailQueryVarsSerializer
    implements StructuredSerializer<GCharacterDetailQueryVars> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryVars,
    _$GCharacterDetailQueryVars
  ];
  @override
  final String wireName = 'GCharacterDetailQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterDetailQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryVarsBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryVars extends GCharacterDetailQueryVars {
  @override
  final int? id;
  @override
  final int? page;

  factory _$GCharacterDetailQueryVars(
          [void Function(GCharacterDetailQueryVarsBuilder)? updates]) =>
      (new GCharacterDetailQueryVarsBuilder()..update(updates))._build();

  _$GCharacterDetailQueryVars._({this.id, this.page}) : super._();

  @override
  GCharacterDetailQueryVars rebuild(
          void Function(GCharacterDetailQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryVarsBuilder toBuilder() =>
      new GCharacterDetailQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryVars &&
        id == other.id &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterDetailQueryVars')
          ..add('id', id)
          ..add('page', page))
        .toString();
  }
}

class GCharacterDetailQueryVarsBuilder
    implements
        Builder<GCharacterDetailQueryVars, GCharacterDetailQueryVarsBuilder> {
  _$GCharacterDetailQueryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GCharacterDetailQueryVarsBuilder();

  GCharacterDetailQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryVars;
  }

  @override
  void update(void Function(GCharacterDetailQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryVars build() => _build();

  _$GCharacterDetailQueryVars _build() {
    final _$result =
        _$v ?? new _$GCharacterDetailQueryVars._(id: id, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
