// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airing_schedule_query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAiringScheduleQueryVars> _$gAiringScheduleQueryVarsSerializer =
    new _$GAiringScheduleQueryVarsSerializer();

class _$GAiringScheduleQueryVarsSerializer
    implements StructuredSerializer<GAiringScheduleQueryVars> {
  @override
  final Iterable<Type> types = const [
    GAiringScheduleQueryVars,
    _$GAiringScheduleQueryVars
  ];
  @override
  final String wireName = 'GAiringScheduleQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAiringScheduleQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.airingAtGreater;
    if (value != null) {
      result
        ..add('airingAtGreater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.airingAtLesser;
    if (value != null) {
      result
        ..add('airingAtLesser')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GAiringScheduleQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAiringScheduleQueryVarsBuilder();

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
        case 'airingAtGreater':
          result.airingAtGreater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'airingAtLesser':
          result.airingAtLesser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAiringScheduleQueryVars extends GAiringScheduleQueryVars {
  @override
  final int? page;
  @override
  final int? airingAtGreater;
  @override
  final int? airingAtLesser;

  factory _$GAiringScheduleQueryVars(
          [void Function(GAiringScheduleQueryVarsBuilder)? updates]) =>
      (new GAiringScheduleQueryVarsBuilder()..update(updates))._build();

  _$GAiringScheduleQueryVars._(
      {this.page, this.airingAtGreater, this.airingAtLesser})
      : super._();

  @override
  GAiringScheduleQueryVars rebuild(
          void Function(GAiringScheduleQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAiringScheduleQueryVarsBuilder toBuilder() =>
      new GAiringScheduleQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAiringScheduleQueryVars &&
        page == other.page &&
        airingAtGreater == other.airingAtGreater &&
        airingAtLesser == other.airingAtLesser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, airingAtGreater.hashCode);
    _$hash = $jc(_$hash, airingAtLesser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAiringScheduleQueryVars')
          ..add('page', page)
          ..add('airingAtGreater', airingAtGreater)
          ..add('airingAtLesser', airingAtLesser))
        .toString();
  }
}

class GAiringScheduleQueryVarsBuilder
    implements
        Builder<GAiringScheduleQueryVars, GAiringScheduleQueryVarsBuilder> {
  _$GAiringScheduleQueryVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _airingAtGreater;
  int? get airingAtGreater => _$this._airingAtGreater;
  set airingAtGreater(int? airingAtGreater) =>
      _$this._airingAtGreater = airingAtGreater;

  int? _airingAtLesser;
  int? get airingAtLesser => _$this._airingAtLesser;
  set airingAtLesser(int? airingAtLesser) =>
      _$this._airingAtLesser = airingAtLesser;

  GAiringScheduleQueryVarsBuilder();

  GAiringScheduleQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _airingAtGreater = $v.airingAtGreater;
      _airingAtLesser = $v.airingAtLesser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAiringScheduleQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAiringScheduleQueryVars;
  }

  @override
  void update(void Function(GAiringScheduleQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAiringScheduleQueryVars build() => _build();

  _$GAiringScheduleQueryVars _build() {
    final _$result = _$v ??
        new _$GAiringScheduleQueryVars._(
            page: page,
            airingAtGreater: airingAtGreater,
            airingAtLesser: airingAtLesser);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
