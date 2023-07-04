// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FavCharacterQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFavCharacterQueryVars> _$gFavCharacterQueryVarsSerializer =
    new _$GFavCharacterQueryVarsSerializer();

class _$GFavCharacterQueryVarsSerializer
    implements StructuredSerializer<GFavCharacterQueryVars> {
  @override
  final Iterable<Type> types = const [
    GFavCharacterQueryVars,
    _$GFavCharacterQueryVars
  ];
  @override
  final String wireName = 'GFavCharacterQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavCharacterQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
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
  GFavCharacterQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavCharacterQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
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

class _$GFavCharacterQueryVars extends GFavCharacterQueryVars {
  @override
  final int? page;
  @override
  final int? perPage;

  factory _$GFavCharacterQueryVars(
          [void Function(GFavCharacterQueryVarsBuilder)? updates]) =>
      (new GFavCharacterQueryVarsBuilder()..update(updates))._build();

  _$GFavCharacterQueryVars._({this.page, this.perPage}) : super._();

  @override
  GFavCharacterQueryVars rebuild(
          void Function(GFavCharacterQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavCharacterQueryVarsBuilder toBuilder() =>
      new GFavCharacterQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavCharacterQueryVars &&
        page == other.page &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFavCharacterQueryVars')
          ..add('page', page)
          ..add('perPage', perPage))
        .toString();
  }
}

class GFavCharacterQueryVarsBuilder
    implements Builder<GFavCharacterQueryVars, GFavCharacterQueryVarsBuilder> {
  _$GFavCharacterQueryVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GFavCharacterQueryVarsBuilder();

  GFavCharacterQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavCharacterQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavCharacterQueryVars;
  }

  @override
  void update(void Function(GFavCharacterQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavCharacterQueryVars build() => _build();

  _$GFavCharacterQueryVars _build() {
    final _$result =
        _$v ?? new _$GFavCharacterQueryVars._(page: page, perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
