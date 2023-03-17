// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_anime.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GtrendingAnimeVars> _$gtrendingAnimeVarsSerializer =
    new _$GtrendingAnimeVarsSerializer();

class _$GtrendingAnimeVarsSerializer
    implements StructuredSerializer<GtrendingAnimeVars> {
  @override
  final Iterable<Type> types = const [GtrendingAnimeVars, _$GtrendingAnimeVars];
  @override
  final String wireName = 'GtrendingAnimeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtrendingAnimeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pageNum;
    if (value != null) {
      result
        ..add('pageNum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GtrendingAnimeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtrendingAnimeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pageNum':
          result.pageNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GtrendingAnimeVars extends GtrendingAnimeVars {
  @override
  final int? pageNum;
  @override
  final int? perPage;

  factory _$GtrendingAnimeVars(
          [void Function(GtrendingAnimeVarsBuilder)? updates]) =>
      (new GtrendingAnimeVarsBuilder()..update(updates))._build();

  _$GtrendingAnimeVars._({this.pageNum, this.perPage}) : super._();

  @override
  GtrendingAnimeVars rebuild(
          void Function(GtrendingAnimeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtrendingAnimeVarsBuilder toBuilder() =>
      new GtrendingAnimeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtrendingAnimeVars &&
        pageNum == other.pageNum &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageNum.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtrendingAnimeVars')
          ..add('pageNum', pageNum)
          ..add('perPage', perPage))
        .toString();
  }
}

class GtrendingAnimeVarsBuilder
    implements Builder<GtrendingAnimeVars, GtrendingAnimeVarsBuilder> {
  _$GtrendingAnimeVars? _$v;

  int? _pageNum;
  int? get pageNum => _$this._pageNum;
  set pageNum(int? pageNum) => _$this._pageNum = pageNum;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GtrendingAnimeVarsBuilder();

  GtrendingAnimeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageNum = $v.pageNum;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtrendingAnimeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtrendingAnimeVars;
  }

  @override
  void update(void Function(GtrendingAnimeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtrendingAnimeVars build() => _build();

  _$GtrendingAnimeVars _build() {
    final _$result =
        _$v ?? new _$GtrendingAnimeVars._(pageNum: pageNum, perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
