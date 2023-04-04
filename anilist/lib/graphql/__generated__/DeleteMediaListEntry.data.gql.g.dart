// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeleteMediaListEntry.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteMediaListEntryData> _$gDeleteMediaListEntryDataSerializer =
    new _$GDeleteMediaListEntryDataSerializer();
Serializer<GDeleteMediaListEntryData_DeleteMediaListEntry>
    _$gDeleteMediaListEntryDataDeleteMediaListEntrySerializer =
    new _$GDeleteMediaListEntryData_DeleteMediaListEntrySerializer();

class _$GDeleteMediaListEntryDataSerializer
    implements StructuredSerializer<GDeleteMediaListEntryData> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryData,
    _$GDeleteMediaListEntryData
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMediaListEntryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.DeleteMediaListEntry;
    if (value != null) {
      result
        ..add('DeleteMediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GDeleteMediaListEntryData_DeleteMediaListEntry)));
    }
    return result;
  }

  @override
  GDeleteMediaListEntryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'DeleteMediaListEntry':
          result.DeleteMediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GDeleteMediaListEntryData_DeleteMediaListEntry))!
              as GDeleteMediaListEntryData_DeleteMediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMediaListEntryData_DeleteMediaListEntrySerializer
    implements
        StructuredSerializer<GDeleteMediaListEntryData_DeleteMediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryData_DeleteMediaListEntry,
    _$GDeleteMediaListEntryData_DeleteMediaListEntry
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryData_DeleteMediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDeleteMediaListEntryData_DeleteMediaListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleted;
    if (value != null) {
      result
        ..add('deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMediaListEntryData extends GDeleteMediaListEntryData {
  @override
  final String G__typename;
  @override
  final GDeleteMediaListEntryData_DeleteMediaListEntry? DeleteMediaListEntry;

  factory _$GDeleteMediaListEntryData(
          [void Function(GDeleteMediaListEntryDataBuilder)? updates]) =>
      (new GDeleteMediaListEntryDataBuilder()..update(updates))._build();

  _$GDeleteMediaListEntryData._(
      {required this.G__typename, this.DeleteMediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteMediaListEntryData', 'G__typename');
  }

  @override
  GDeleteMediaListEntryData rebuild(
          void Function(GDeleteMediaListEntryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryDataBuilder toBuilder() =>
      new GDeleteMediaListEntryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryData &&
        G__typename == other.G__typename &&
        DeleteMediaListEntry == other.DeleteMediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, DeleteMediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteMediaListEntryData')
          ..add('G__typename', G__typename)
          ..add('DeleteMediaListEntry', DeleteMediaListEntry))
        .toString();
  }
}

class GDeleteMediaListEntryDataBuilder
    implements
        Builder<GDeleteMediaListEntryData, GDeleteMediaListEntryDataBuilder> {
  _$GDeleteMediaListEntryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder? _DeleteMediaListEntry;
  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder
      get DeleteMediaListEntry => _$this._DeleteMediaListEntry ??=
          new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder();
  set DeleteMediaListEntry(
          GDeleteMediaListEntryData_DeleteMediaListEntryBuilder?
              DeleteMediaListEntry) =>
      _$this._DeleteMediaListEntry = DeleteMediaListEntry;

  GDeleteMediaListEntryDataBuilder() {
    GDeleteMediaListEntryData._initializeBuilder(this);
  }

  GDeleteMediaListEntryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _DeleteMediaListEntry = $v.DeleteMediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryData;
  }

  @override
  void update(void Function(GDeleteMediaListEntryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryData build() => _build();

  _$GDeleteMediaListEntryData _build() {
    _$GDeleteMediaListEntryData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteMediaListEntryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeleteMediaListEntryData', 'G__typename'),
              DeleteMediaListEntry: _DeleteMediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'DeleteMediaListEntry';
        _DeleteMediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteMediaListEntryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteMediaListEntryData_DeleteMediaListEntry
    extends GDeleteMediaListEntryData_DeleteMediaListEntry {
  @override
  final String G__typename;
  @override
  final bool? deleted;

  factory _$GDeleteMediaListEntryData_DeleteMediaListEntry(
          [void Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder)?
              updates]) =>
      (new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GDeleteMediaListEntryData_DeleteMediaListEntry._(
      {required this.G__typename, this.deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GDeleteMediaListEntryData_DeleteMediaListEntry', 'G__typename');
  }

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntry rebuild(
          void Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder toBuilder() =>
      new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryData_DeleteMediaListEntry &&
        G__typename == other.G__typename &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDeleteMediaListEntryData_DeleteMediaListEntry')
          ..add('G__typename', G__typename)
          ..add('deleted', deleted))
        .toString();
  }
}

class GDeleteMediaListEntryData_DeleteMediaListEntryBuilder
    implements
        Builder<GDeleteMediaListEntryData_DeleteMediaListEntry,
            GDeleteMediaListEntryData_DeleteMediaListEntryBuilder> {
  _$GDeleteMediaListEntryData_DeleteMediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder() {
    GDeleteMediaListEntryData_DeleteMediaListEntry._initializeBuilder(this);
  }

  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleted = $v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryData_DeleteMediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryData_DeleteMediaListEntry;
  }

  @override
  void update(
      void Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntry build() => _build();

  _$GDeleteMediaListEntryData_DeleteMediaListEntry _build() {
    final _$result = _$v ??
        new _$GDeleteMediaListEntryData_DeleteMediaListEntry._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDeleteMediaListEntryData_DeleteMediaListEntry',
                'G__typename'),
            deleted: deleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
