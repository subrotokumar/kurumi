// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FavAnimeQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFavAnimeQueryVars> _$gFavAnimeQueryVarsSerializer =
    new _$GFavAnimeQueryVarsSerializer();

class _$GFavAnimeQueryVarsSerializer
    implements StructuredSerializer<GFavAnimeQueryVars> {
  @override
  final Iterable<Type> types = const [GFavAnimeQueryVars, _$GFavAnimeQueryVars];
  @override
  final String wireName = 'GFavAnimeQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFavAnimeQueryVars object,
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
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GFavAnimeQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFavAnimeQueryVarsBuilder();

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
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFavAnimeQueryVars extends GFavAnimeQueryVars {
  @override
  final int? id;
  @override
  final int? page;
  @override
  final int? perPage;

  factory _$GFavAnimeQueryVars(
          [void Function(GFavAnimeQueryVarsBuilder)? updates]) =>
      (new GFavAnimeQueryVarsBuilder()..update(updates))._build();

  _$GFavAnimeQueryVars._({this.id, this.page, this.perPage}) : super._();

  @override
  GFavAnimeQueryVars rebuild(
          void Function(GFavAnimeQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFavAnimeQueryVarsBuilder toBuilder() =>
      new GFavAnimeQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFavAnimeQueryVars &&
        id == other.id &&
        page == other.page &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFavAnimeQueryVars')
          ..add('id', id)
          ..add('page', page)
          ..add('perPage', perPage))
        .toString();
  }
}

class GFavAnimeQueryVarsBuilder
    implements Builder<GFavAnimeQueryVars, GFavAnimeQueryVarsBuilder> {
  _$GFavAnimeQueryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GFavAnimeQueryVarsBuilder();

  GFavAnimeQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _page = $v.page;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFavAnimeQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFavAnimeQueryVars;
  }

  @override
  void update(void Function(GFavAnimeQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFavAnimeQueryVars build() => _build();

  _$GFavAnimeQueryVars _build() {
    final _$result =
        _$v ?? new _$GFavAnimeQueryVars._(id: id, page: page, perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
