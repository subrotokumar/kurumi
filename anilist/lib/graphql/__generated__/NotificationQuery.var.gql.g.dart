// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NotificationQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNotificationsQueryVars> _$gNotificationsQueryVarsSerializer =
    new _$GNotificationsQueryVarsSerializer();

class _$GNotificationsQueryVarsSerializer
    implements StructuredSerializer<GNotificationsQueryVars> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryVars,
    _$GNotificationsQueryVars
  ];
  @override
  final String wireName = 'GNotificationsQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationsQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type_in;
    if (value != null) {
      result
        ..add('type_in')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(_i1.GNotificationType)])));
    }
    value = object.reset;
    if (value != null) {
      result
        ..add('reset')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GNotificationsQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationsQueryVarsBuilder();

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
        case 'type_in':
          result.type_in.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GNotificationType)
              ]))! as BuiltList<Object?>);
          break;
        case 'reset':
          result.reset = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryVars extends GNotificationsQueryVars {
  @override
  final int? page;
  @override
  final BuiltList<_i1.GNotificationType?>? type_in;
  @override
  final bool? reset;

  factory _$GNotificationsQueryVars(
          [void Function(GNotificationsQueryVarsBuilder)? updates]) =>
      (new GNotificationsQueryVarsBuilder()..update(updates))._build();

  _$GNotificationsQueryVars._({this.page, this.type_in, this.reset})
      : super._();

  @override
  GNotificationsQueryVars rebuild(
          void Function(GNotificationsQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryVarsBuilder toBuilder() =>
      new GNotificationsQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsQueryVars &&
        page == other.page &&
        type_in == other.type_in &&
        reset == other.reset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, type_in.hashCode);
    _$hash = $jc(_$hash, reset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationsQueryVars')
          ..add('page', page)
          ..add('type_in', type_in)
          ..add('reset', reset))
        .toString();
  }
}

class GNotificationsQueryVarsBuilder
    implements
        Builder<GNotificationsQueryVars, GNotificationsQueryVarsBuilder> {
  _$GNotificationsQueryVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  ListBuilder<_i1.GNotificationType?>? _type_in;
  ListBuilder<_i1.GNotificationType?> get type_in =>
      _$this._type_in ??= new ListBuilder<_i1.GNotificationType?>();
  set type_in(ListBuilder<_i1.GNotificationType?>? type_in) =>
      _$this._type_in = type_in;

  bool? _reset;
  bool? get reset => _$this._reset;
  set reset(bool? reset) => _$this._reset = reset;

  GNotificationsQueryVarsBuilder();

  GNotificationsQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _type_in = $v.type_in?.toBuilder();
      _reset = $v.reset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationsQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsQueryVars;
  }

  @override
  void update(void Function(GNotificationsQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryVars build() => _build();

  _$GNotificationsQueryVars _build() {
    _$GNotificationsQueryVars _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsQueryVars._(
              page: page, type_in: _type_in?.build(), reset: reset);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type_in';
        _type_in?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsQueryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
