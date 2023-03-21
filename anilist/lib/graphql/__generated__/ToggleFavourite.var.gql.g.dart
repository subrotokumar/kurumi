// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ToggleFavourite.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GToggleFavouriteVars> _$gToggleFavouriteVarsSerializer =
    new _$GToggleFavouriteVarsSerializer();

class _$GToggleFavouriteVarsSerializer
    implements StructuredSerializer<GToggleFavouriteVars> {
  @override
  final Iterable<Type> types = const [
    GToggleFavouriteVars,
    _$GToggleFavouriteVars
  ];
  @override
  final String wireName = 'GToggleFavouriteVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavouriteVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.animeId;
    if (value != null) {
      result
        ..add('animeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mangaId;
    if (value != null) {
      result
        ..add('mangaId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.characterId;
    if (value != null) {
      result
        ..add('characterId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.staffId;
    if (value != null) {
      result
        ..add('staffId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.studioId;
    if (value != null) {
      result
        ..add('studioId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleFavouriteVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavouriteVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'animeId':
          result.animeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mangaId':
          result.mangaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'characterId':
          result.characterId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'staffId':
          result.staffId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'studioId':
          result.studioId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleFavouriteVars extends GToggleFavouriteVars {
  @override
  final int? animeId;
  @override
  final int? mangaId;
  @override
  final int? characterId;
  @override
  final int? staffId;
  @override
  final int? studioId;

  factory _$GToggleFavouriteVars(
          [void Function(GToggleFavouriteVarsBuilder)? updates]) =>
      (new GToggleFavouriteVarsBuilder()..update(updates))._build();

  _$GToggleFavouriteVars._(
      {this.animeId,
      this.mangaId,
      this.characterId,
      this.staffId,
      this.studioId})
      : super._();

  @override
  GToggleFavouriteVars rebuild(
          void Function(GToggleFavouriteVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavouriteVarsBuilder toBuilder() =>
      new GToggleFavouriteVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavouriteVars &&
        animeId == other.animeId &&
        mangaId == other.mangaId &&
        characterId == other.characterId &&
        staffId == other.staffId &&
        studioId == other.studioId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, animeId.hashCode);
    _$hash = $jc(_$hash, mangaId.hashCode);
    _$hash = $jc(_$hash, characterId.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, studioId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleFavouriteVars')
          ..add('animeId', animeId)
          ..add('mangaId', mangaId)
          ..add('characterId', characterId)
          ..add('staffId', staffId)
          ..add('studioId', studioId))
        .toString();
  }
}

class GToggleFavouriteVarsBuilder
    implements Builder<GToggleFavouriteVars, GToggleFavouriteVarsBuilder> {
  _$GToggleFavouriteVars? _$v;

  int? _animeId;
  int? get animeId => _$this._animeId;
  set animeId(int? animeId) => _$this._animeId = animeId;

  int? _mangaId;
  int? get mangaId => _$this._mangaId;
  set mangaId(int? mangaId) => _$this._mangaId = mangaId;

  int? _characterId;
  int? get characterId => _$this._characterId;
  set characterId(int? characterId) => _$this._characterId = characterId;

  int? _staffId;
  int? get staffId => _$this._staffId;
  set staffId(int? staffId) => _$this._staffId = staffId;

  int? _studioId;
  int? get studioId => _$this._studioId;
  set studioId(int? studioId) => _$this._studioId = studioId;

  GToggleFavouriteVarsBuilder();

  GToggleFavouriteVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _animeId = $v.animeId;
      _mangaId = $v.mangaId;
      _characterId = $v.characterId;
      _staffId = $v.staffId;
      _studioId = $v.studioId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavouriteVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavouriteVars;
  }

  @override
  void update(void Function(GToggleFavouriteVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavouriteVars build() => _build();

  _$GToggleFavouriteVars _build() {
    final _$result = _$v ??
        new _$GToggleFavouriteVars._(
            animeId: animeId,
            mangaId: mangaId,
            characterId: characterId,
            staffId: staffId,
            studioId: studioId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
