// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_detail_query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaDetailQueryVars> _$gMediaDetailQueryVarsSerializer =
    new _$GMediaDetailQueryVarsSerializer();

class _$GMediaDetailQueryVarsSerializer
    implements StructuredSerializer<GMediaDetailQueryVars> {
  @override
  final Iterable<Type> types = const [
    GMediaDetailQueryVars,
    _$GMediaDetailQueryVars
  ];
  @override
  final String wireName = 'GMediaDetailQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaDetailQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
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
  GMediaDetailQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaDetailQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
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

class _$GMediaDetailQueryVars extends GMediaDetailQueryVars {
  @override
  final int id;
  @override
  final int? limit;
  @override
  final int? page;
  @override
  final int? perPage;

  factory _$GMediaDetailQueryVars(
          [void Function(GMediaDetailQueryVarsBuilder)? updates]) =>
      (new GMediaDetailQueryVarsBuilder()..update(updates))._build();

  _$GMediaDetailQueryVars._(
      {required this.id, this.limit, this.page, this.perPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GMediaDetailQueryVars', 'id');
  }

  @override
  GMediaDetailQueryVars rebuild(
          void Function(GMediaDetailQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaDetailQueryVarsBuilder toBuilder() =>
      new GMediaDetailQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaDetailQueryVars &&
        id == other.id &&
        limit == other.limit &&
        page == other.page &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaDetailQueryVars')
          ..add('id', id)
          ..add('limit', limit)
          ..add('page', page)
          ..add('perPage', perPage))
        .toString();
  }
}

class GMediaDetailQueryVarsBuilder
    implements Builder<GMediaDetailQueryVars, GMediaDetailQueryVarsBuilder> {
  _$GMediaDetailQueryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GMediaDetailQueryVarsBuilder();

  GMediaDetailQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _limit = $v.limit;
      _page = $v.page;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaDetailQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaDetailQueryVars;
  }

  @override
  void update(void Function(GMediaDetailQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaDetailQueryVars build() => _build();

  _$GMediaDetailQueryVars _build() {
    final _$result = _$v ??
        new _$GMediaDetailQueryVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMediaDetailQueryVars', 'id'),
            limit: limit,
            page: page,
            perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
