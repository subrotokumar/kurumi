// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FavMangaQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFavMangaQueryVars> _$gFavMangaQueryVarsSerializer =
    new _$GFavMangaQueryVarsSerializer();

class _$GFavMangaQueryVarsSerializer
    implements StructuredSerializer<GFavMangaQueryVars> {
  @override
  final Iterable<Type> types = const [GFavMangaQueryVars, _$GFavMangaQueryVars];
  @override
  final String wireName = 'GFavMangaQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavMangaQueryVars object,
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
  GFavMangaQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavMangaQueryVarsBuilder();

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

class _$GFavMangaQueryVars extends GFavMangaQueryVars {
  @override
  final int? page;
  @override
  final int? perPage;

  factory _$GFavMangaQueryVars(
          [void Function(GFavMangaQueryVarsBuilder)? updates]) =>
      (new GFavMangaQueryVarsBuilder()..update(updates))._build();

  _$GFavMangaQueryVars._({this.page, this.perPage}) : super._();

  @override
  GFavMangaQueryVars rebuild(
          void Function(GFavMangaQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavMangaQueryVarsBuilder toBuilder() =>
      new GFavMangaQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavMangaQueryVars &&
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
    return (newBuiltValueToStringHelper(r'GFavMangaQueryVars')
          ..add('page', page)
          ..add('perPage', perPage))
        .toString();
  }
}

class GFavMangaQueryVarsBuilder
    implements Builder<GFavMangaQueryVars, GFavMangaQueryVarsBuilder> {
  _$GFavMangaQueryVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GFavMangaQueryVarsBuilder();

  GFavMangaQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavMangaQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavMangaQueryVars;
  }

  @override
  void update(void Function(GFavMangaQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavMangaQueryVars build() => _build();

  _$GFavMangaQueryVars _build() {
    final _$result =
        _$v ?? new _$GFavMangaQueryVars._(page: page, perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
