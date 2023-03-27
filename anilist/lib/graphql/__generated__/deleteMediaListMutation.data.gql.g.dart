// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteMediaListMutation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteMediaListEntryMutationData>
    _$gDeleteMediaListEntryMutationDataSerializer =
    new _$GDeleteMediaListEntryMutationDataSerializer();
Serializer<GDeleteMediaListEntryMutationData_DeleteMediaListEntry>
    _$gDeleteMediaListEntryMutationDataDeleteMediaListEntrySerializer =
    new _$GDeleteMediaListEntryMutationData_DeleteMediaListEntrySerializer();

class _$GDeleteMediaListEntryMutationDataSerializer
    implements StructuredSerializer<GDeleteMediaListEntryMutationData> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryMutationData,
    _$GDeleteMediaListEntryMutationData
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryMutationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMediaListEntryMutationData object,
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
                GDeleteMediaListEntryMutationData_DeleteMediaListEntry)));
    }
    return result;
  }

  @override
  GDeleteMediaListEntryMutationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryMutationDataBuilder();

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
                      GDeleteMediaListEntryMutationData_DeleteMediaListEntry))!
              as GDeleteMediaListEntryMutationData_DeleteMediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMediaListEntryMutationData_DeleteMediaListEntrySerializer
    implements
        StructuredSerializer<
            GDeleteMediaListEntryMutationData_DeleteMediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryMutationData_DeleteMediaListEntry,
    _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry
  ];
  @override
  final String wireName =
      'GDeleteMediaListEntryMutationData_DeleteMediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDeleteMediaListEntryMutationData_DeleteMediaListEntry object,
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
  GDeleteMediaListEntryMutationData_DeleteMediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder();

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

class _$GDeleteMediaListEntryMutationData
    extends GDeleteMediaListEntryMutationData {
  @override
  final String G__typename;
  @override
  final GDeleteMediaListEntryMutationData_DeleteMediaListEntry?
      DeleteMediaListEntry;

  factory _$GDeleteMediaListEntryMutationData(
          [void Function(GDeleteMediaListEntryMutationDataBuilder)? updates]) =>
      (new GDeleteMediaListEntryMutationDataBuilder()..update(updates))
          ._build();

  _$GDeleteMediaListEntryMutationData._(
      {required this.G__typename, this.DeleteMediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteMediaListEntryMutationData', 'G__typename');
  }

  @override
  GDeleteMediaListEntryMutationData rebuild(
          void Function(GDeleteMediaListEntryMutationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryMutationDataBuilder toBuilder() =>
      new GDeleteMediaListEntryMutationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryMutationData &&
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
    return (newBuiltValueToStringHelper(r'GDeleteMediaListEntryMutationData')
          ..add('G__typename', G__typename)
          ..add('DeleteMediaListEntry', DeleteMediaListEntry))
        .toString();
  }
}

class GDeleteMediaListEntryMutationDataBuilder
    implements
        Builder<GDeleteMediaListEntryMutationData,
            GDeleteMediaListEntryMutationDataBuilder> {
  _$GDeleteMediaListEntryMutationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder?
      _DeleteMediaListEntry;
  GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder
      get DeleteMediaListEntry => _$this._DeleteMediaListEntry ??=
          new GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder();
  set DeleteMediaListEntry(
          GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder?
              DeleteMediaListEntry) =>
      _$this._DeleteMediaListEntry = DeleteMediaListEntry;

  GDeleteMediaListEntryMutationDataBuilder() {
    GDeleteMediaListEntryMutationData._initializeBuilder(this);
  }

  GDeleteMediaListEntryMutationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _DeleteMediaListEntry = $v.DeleteMediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryMutationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryMutationData;
  }

  @override
  void update(
      void Function(GDeleteMediaListEntryMutationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryMutationData build() => _build();

  _$GDeleteMediaListEntryMutationData _build() {
    _$GDeleteMediaListEntryMutationData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteMediaListEntryMutationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GDeleteMediaListEntryMutationData', 'G__typename'),
              DeleteMediaListEntry: _DeleteMediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'DeleteMediaListEntry';
        _DeleteMediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteMediaListEntryMutationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry
    extends GDeleteMediaListEntryMutationData_DeleteMediaListEntry {
  @override
  final String G__typename;
  @override
  final bool? deleted;

  factory _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry(
          [void Function(
                  GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder)?
              updates]) =>
      (new GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry._(
      {required this.G__typename, this.deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GDeleteMediaListEntryMutationData_DeleteMediaListEntry',
        'G__typename');
  }

  @override
  GDeleteMediaListEntryMutationData_DeleteMediaListEntry rebuild(
          void Function(
                  GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder toBuilder() =>
      new GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryMutationData_DeleteMediaListEntry &&
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
            r'GDeleteMediaListEntryMutationData_DeleteMediaListEntry')
          ..add('G__typename', G__typename)
          ..add('deleted', deleted))
        .toString();
  }
}

class GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder
    implements
        Builder<GDeleteMediaListEntryMutationData_DeleteMediaListEntry,
            GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder> {
  _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder() {
    GDeleteMediaListEntryMutationData_DeleteMediaListEntry._initializeBuilder(
        this);
  }

  GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleted = $v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryMutationData_DeleteMediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry;
  }

  @override
  void update(
      void Function(
              GDeleteMediaListEntryMutationData_DeleteMediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryMutationData_DeleteMediaListEntry build() => _build();

  _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry _build() {
    final _$result = _$v ??
        new _$GDeleteMediaListEntryMutationData_DeleteMediaListEntry._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDeleteMediaListEntryMutationData_DeleteMediaListEntry',
                'G__typename'),
            deleted: deleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
