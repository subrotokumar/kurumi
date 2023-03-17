// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userid.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserIDData> _$gUserIDDataSerializer = new _$GUserIDDataSerializer();
Serializer<GUserIDData_Viewer> _$gUserIDDataViewerSerializer =
    new _$GUserIDData_ViewerSerializer();

class _$GUserIDDataSerializer implements StructuredSerializer<GUserIDData> {
  @override
  final Iterable<Type> types = const [GUserIDData, _$GUserIDData];
  @override
  final String wireName = 'GUserIDData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserIDData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Viewer;
    if (value != null) {
      result
        ..add('Viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserIDData_Viewer)));
    }
    return result;
  }

  @override
  GUserIDData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserIDDataBuilder();

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
        case 'Viewer':
          result.Viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserIDData_Viewer))!
              as GUserIDData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserIDData_ViewerSerializer
    implements StructuredSerializer<GUserIDData_Viewer> {
  @override
  final Iterable<Type> types = const [GUserIDData_Viewer, _$GUserIDData_Viewer];
  @override
  final String wireName = 'GUserIDData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserIDData_Viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserIDData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserIDData_ViewerBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserIDData extends GUserIDData {
  @override
  final String G__typename;
  @override
  final GUserIDData_Viewer? Viewer;

  factory _$GUserIDData([void Function(GUserIDDataBuilder)? updates]) =>
      (new GUserIDDataBuilder()..update(updates))._build();

  _$GUserIDData._({required this.G__typename, this.Viewer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserIDData', 'G__typename');
  }

  @override
  GUserIDData rebuild(void Function(GUserIDDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserIDDataBuilder toBuilder() => new GUserIDDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserIDData &&
        G__typename == other.G__typename &&
        Viewer == other.Viewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Viewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserIDData')
          ..add('G__typename', G__typename)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GUserIDDataBuilder implements Builder<GUserIDData, GUserIDDataBuilder> {
  _$GUserIDData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserIDData_ViewerBuilder? _Viewer;
  GUserIDData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GUserIDData_ViewerBuilder();
  set Viewer(GUserIDData_ViewerBuilder? Viewer) => _$this._Viewer = Viewer;

  GUserIDDataBuilder() {
    GUserIDData._initializeBuilder(this);
  }

  GUserIDDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserIDData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserIDData;
  }

  @override
  void update(void Function(GUserIDDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserIDData build() => _build();

  _$GUserIDData _build() {
    _$GUserIDData _$result;
    try {
      _$result = _$v ??
          new _$GUserIDData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserIDData', 'G__typename'),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserIDData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserIDData_Viewer extends GUserIDData_Viewer {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GUserIDData_Viewer(
          [void Function(GUserIDData_ViewerBuilder)? updates]) =>
      (new GUserIDData_ViewerBuilder()..update(updates))._build();

  _$GUserIDData_Viewer._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserIDData_Viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GUserIDData_Viewer', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GUserIDData_Viewer', 'name');
  }

  @override
  GUserIDData_Viewer rebuild(
          void Function(GUserIDData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserIDData_ViewerBuilder toBuilder() =>
      new GUserIDData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserIDData_Viewer &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserIDData_Viewer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GUserIDData_ViewerBuilder
    implements Builder<GUserIDData_Viewer, GUserIDData_ViewerBuilder> {
  _$GUserIDData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GUserIDData_ViewerBuilder() {
    GUserIDData_Viewer._initializeBuilder(this);
  }

  GUserIDData_ViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserIDData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserIDData_Viewer;
  }

  @override
  void update(void Function(GUserIDData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserIDData_Viewer build() => _build();

  _$GUserIDData_Viewer _build() {
    final _$result = _$v ??
        new _$GUserIDData_Viewer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserIDData_Viewer', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserIDData_Viewer', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GUserIDData_Viewer', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
