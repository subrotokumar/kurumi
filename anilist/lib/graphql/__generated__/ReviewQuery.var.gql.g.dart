// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReviewQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewQueryVars> _$gReviewQueryVarsSerializer =
    new _$GReviewQueryVarsSerializer();

class _$GReviewQueryVarsSerializer
    implements StructuredSerializer<GReviewQueryVars> {
  @override
  final Iterable<Type> types = const [GReviewQueryVars, _$GReviewQueryVars];
  @override
  final String wireName = 'GReviewQueryVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i1.GMediaType)),
    ];
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
  GReviewQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryVarsBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GMediaType))! as _i1.GMediaType;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewQueryVars extends GReviewQueryVars {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final _i1.GMediaType type;

  factory _$GReviewQueryVars(
          [void Function(GReviewQueryVarsBuilder)? updates]) =>
      (new GReviewQueryVarsBuilder()..update(updates))._build();

  _$GReviewQueryVars._({this.page, this.perPage, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'GReviewQueryVars', 'type');
  }

  @override
  GReviewQueryVars rebuild(void Function(GReviewQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryVarsBuilder toBuilder() =>
      new GReviewQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryVars &&
        page == other.page &&
        perPage == other.perPage &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewQueryVars')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('type', type))
        .toString();
  }
}

class GReviewQueryVarsBuilder
    implements Builder<GReviewQueryVars, GReviewQueryVarsBuilder> {
  _$GReviewQueryVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  GReviewQueryVarsBuilder();

  GReviewQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryVars;
  }

  @override
  void update(void Function(GReviewQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryVars build() => _build();

  _$GReviewQueryVars _build() {
    final _$result = _$v ??
        new _$GReviewQueryVars._(
            page: page,
            perPage: perPage,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GReviewQueryVars', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
