// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_media.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDiscoverMediaVars> _$gDiscoverMediaVarsSerializer =
    new _$GDiscoverMediaVarsSerializer();

class _$GDiscoverMediaVarsSerializer
    implements StructuredSerializer<GDiscoverMediaVars> {
  @override
  final Iterable<Type> types = const [GDiscoverMediaVars, _$GDiscoverMediaVars];
  @override
  final String wireName = 'GDiscoverMediaVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDiscoverMediaVars object,
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaStatus)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaType)));
    }
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaSort)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaSeason)));
    }
    value = object.seasonYear;
    if (value != null) {
      result
        ..add('seasonYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCountryCode)));
    }
    return result;
  }

  @override
  GDiscoverMediaVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDiscoverMediaVarsBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaStatus))
              as _i1.GMediaStatus?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
          break;
        case 'sort':
          result.sort = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GMediaSort)) as _i1.GMediaSort?;
          break;
        case 'season':
          result.season = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaSeason))
              as _i1.GMediaSeason?;
          break;
        case 'seasonYear':
          result.seasonYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'country':
          result.country.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCountryCode))!
              as _i1.GCountryCode);
          break;
      }
    }

    return result.build();
  }
}

class _$GDiscoverMediaVars extends GDiscoverMediaVars {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final _i1.GMediaStatus? status;
  @override
  final _i1.GMediaType? type;
  @override
  final _i1.GMediaSort? sort;
  @override
  final _i1.GMediaSeason? season;
  @override
  final int? seasonYear;
  @override
  final _i1.GCountryCode? country;

  factory _$GDiscoverMediaVars(
          [void Function(GDiscoverMediaVarsBuilder)? updates]) =>
      (new GDiscoverMediaVarsBuilder()..update(updates))._build();

  _$GDiscoverMediaVars._(
      {this.page,
      this.perPage,
      this.status,
      this.type,
      this.sort,
      this.season,
      this.seasonYear,
      this.country})
      : super._();

  @override
  GDiscoverMediaVars rebuild(
          void Function(GDiscoverMediaVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDiscoverMediaVarsBuilder toBuilder() =>
      new GDiscoverMediaVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDiscoverMediaVars &&
        page == other.page &&
        perPage == other.perPage &&
        status == other.status &&
        type == other.type &&
        sort == other.sort &&
        season == other.season &&
        seasonYear == other.seasonYear &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, seasonYear.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDiscoverMediaVars')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('status', status)
          ..add('type', type)
          ..add('sort', sort)
          ..add('season', season)
          ..add('seasonYear', seasonYear)
          ..add('country', country))
        .toString();
  }
}

class GDiscoverMediaVarsBuilder
    implements Builder<GDiscoverMediaVars, GDiscoverMediaVarsBuilder> {
  _$GDiscoverMediaVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  _i1.GMediaStatus? _status;
  _i1.GMediaStatus? get status => _$this._status;
  set status(_i1.GMediaStatus? status) => _$this._status = status;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  _i1.GMediaSort? _sort;
  _i1.GMediaSort? get sort => _$this._sort;
  set sort(_i1.GMediaSort? sort) => _$this._sort = sort;

  _i1.GMediaSeason? _season;
  _i1.GMediaSeason? get season => _$this._season;
  set season(_i1.GMediaSeason? season) => _$this._season = season;

  int? _seasonYear;
  int? get seasonYear => _$this._seasonYear;
  set seasonYear(int? seasonYear) => _$this._seasonYear = seasonYear;

  _i1.GCountryCodeBuilder? _country;
  _i1.GCountryCodeBuilder get country =>
      _$this._country ??= new _i1.GCountryCodeBuilder();
  set country(_i1.GCountryCodeBuilder? country) => _$this._country = country;

  GDiscoverMediaVarsBuilder();

  GDiscoverMediaVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _status = $v.status;
      _type = $v.type;
      _sort = $v.sort;
      _season = $v.season;
      _seasonYear = $v.seasonYear;
      _country = $v.country?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDiscoverMediaVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDiscoverMediaVars;
  }

  @override
  void update(void Function(GDiscoverMediaVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDiscoverMediaVars build() => _build();

  _$GDiscoverMediaVars _build() {
    _$GDiscoverMediaVars _$result;
    try {
      _$result = _$v ??
          new _$GDiscoverMediaVars._(
              page: page,
              perPage: perPage,
              status: status,
              type: type,
              sort: sort,
              season: season,
              seasonYear: seasonYear,
              country: _country?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'country';
        _country?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDiscoverMediaVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
