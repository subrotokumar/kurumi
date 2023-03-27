// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medialist_entry_mutation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListEntryMutationVars>
    _$gMediaListEntryMutationVarsSerializer =
    new _$GMediaListEntryMutationVarsSerializer();

class _$GMediaListEntryMutationVarsSerializer
    implements StructuredSerializer<GMediaListEntryMutationVars> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationVars,
    _$GMediaListEntryMutationVars
  ];
  @override
  final String wireName = 'GMediaListEntryMutationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryMutationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mediaId;
    if (value != null) {
      result
        ..add('mediaId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaListStatus)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.repeat;
    if (value != null) {
      result
        ..add('repeat')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.priority;
    if (value != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isPrivate;
    if (value != null) {
      result
        ..add('isPrivate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hiddenFromStatusLists;
    if (value != null) {
      result
        ..add('hiddenFromStatusLists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.customLists;
    if (value != null) {
      result
        ..add('customLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.advancedScores;
    if (value != null) {
      result
        ..add('advancedScores')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(double)])));
    }
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GFuzzyDateInput)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GFuzzyDateInput)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryMutationVarsBuilder();

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
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaListStatus))
              as _i1.GMediaListStatus?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'repeat':
          result.repeat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isPrivate':
          result.isPrivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hiddenFromStatusLists':
          result.hiddenFromStatusLists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'customLists':
          result.customLists.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'advancedScores':
          result.advancedScores.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(double)]))!
              as BuiltList<Object?>);
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFuzzyDateInput))!
              as _i1.GFuzzyDateInput);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFuzzyDateInput))!
              as _i1.GFuzzyDateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationVars extends GMediaListEntryMutationVars {
  @override
  final int? id;
  @override
  final int? mediaId;
  @override
  final _i1.GMediaListStatus? status;
  @override
  final double? score;
  @override
  final int? progress;
  @override
  final int? repeat;
  @override
  final int? priority;
  @override
  final bool? isPrivate;
  @override
  final String? notes;
  @override
  final bool? hiddenFromStatusLists;
  @override
  final BuiltList<String?>? customLists;
  @override
  final BuiltList<double?>? advancedScores;
  @override
  final _i1.GFuzzyDateInput? startedAt;
  @override
  final _i1.GFuzzyDateInput? completedAt;

  factory _$GMediaListEntryMutationVars(
          [void Function(GMediaListEntryMutationVarsBuilder)? updates]) =>
      (new GMediaListEntryMutationVarsBuilder()..update(updates))._build();

  _$GMediaListEntryMutationVars._(
      {this.id,
      this.mediaId,
      this.status,
      this.score,
      this.progress,
      this.repeat,
      this.priority,
      this.isPrivate,
      this.notes,
      this.hiddenFromStatusLists,
      this.customLists,
      this.advancedScores,
      this.startedAt,
      this.completedAt})
      : super._();

  @override
  GMediaListEntryMutationVars rebuild(
          void Function(GMediaListEntryMutationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationVarsBuilder toBuilder() =>
      new GMediaListEntryMutationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryMutationVars &&
        id == other.id &&
        mediaId == other.mediaId &&
        status == other.status &&
        score == other.score &&
        progress == other.progress &&
        repeat == other.repeat &&
        priority == other.priority &&
        isPrivate == other.isPrivate &&
        notes == other.notes &&
        hiddenFromStatusLists == other.hiddenFromStatusLists &&
        customLists == other.customLists &&
        advancedScores == other.advancedScores &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, hiddenFromStatusLists.hashCode);
    _$hash = $jc(_$hash, customLists.hashCode);
    _$hash = $jc(_$hash, advancedScores.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListEntryMutationVars')
          ..add('id', id)
          ..add('mediaId', mediaId)
          ..add('status', status)
          ..add('score', score)
          ..add('progress', progress)
          ..add('repeat', repeat)
          ..add('priority', priority)
          ..add('isPrivate', isPrivate)
          ..add('notes', notes)
          ..add('hiddenFromStatusLists', hiddenFromStatusLists)
          ..add('customLists', customLists)
          ..add('advancedScores', advancedScores)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class GMediaListEntryMutationVarsBuilder
    implements
        Builder<GMediaListEntryMutationVars,
            GMediaListEntryMutationVarsBuilder> {
  _$GMediaListEntryMutationVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  _i1.GMediaListStatus? _status;
  _i1.GMediaListStatus? get status => _$this._status;
  set status(_i1.GMediaListStatus? status) => _$this._status = status;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  int? _repeat;
  int? get repeat => _$this._repeat;
  set repeat(int? repeat) => _$this._repeat = repeat;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  bool? _hiddenFromStatusLists;
  bool? get hiddenFromStatusLists => _$this._hiddenFromStatusLists;
  set hiddenFromStatusLists(bool? hiddenFromStatusLists) =>
      _$this._hiddenFromStatusLists = hiddenFromStatusLists;

  ListBuilder<String?>? _customLists;
  ListBuilder<String?> get customLists =>
      _$this._customLists ??= new ListBuilder<String?>();
  set customLists(ListBuilder<String?>? customLists) =>
      _$this._customLists = customLists;

  ListBuilder<double?>? _advancedScores;
  ListBuilder<double?> get advancedScores =>
      _$this._advancedScores ??= new ListBuilder<double?>();
  set advancedScores(ListBuilder<double?>? advancedScores) =>
      _$this._advancedScores = advancedScores;

  _i1.GFuzzyDateInputBuilder? _startedAt;
  _i1.GFuzzyDateInputBuilder get startedAt =>
      _$this._startedAt ??= new _i1.GFuzzyDateInputBuilder();
  set startedAt(_i1.GFuzzyDateInputBuilder? startedAt) =>
      _$this._startedAt = startedAt;

  _i1.GFuzzyDateInputBuilder? _completedAt;
  _i1.GFuzzyDateInputBuilder get completedAt =>
      _$this._completedAt ??= new _i1.GFuzzyDateInputBuilder();
  set completedAt(_i1.GFuzzyDateInputBuilder? completedAt) =>
      _$this._completedAt = completedAt;

  GMediaListEntryMutationVarsBuilder();

  GMediaListEntryMutationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _mediaId = $v.mediaId;
      _status = $v.status;
      _score = $v.score;
      _progress = $v.progress;
      _repeat = $v.repeat;
      _priority = $v.priority;
      _isPrivate = $v.isPrivate;
      _notes = $v.notes;
      _hiddenFromStatusLists = $v.hiddenFromStatusLists;
      _customLists = $v.customLists?.toBuilder();
      _advancedScores = $v.advancedScores?.toBuilder();
      _startedAt = $v.startedAt?.toBuilder();
      _completedAt = $v.completedAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListEntryMutationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryMutationVars;
  }

  @override
  void update(void Function(GMediaListEntryMutationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationVars build() => _build();

  _$GMediaListEntryMutationVars _build() {
    _$GMediaListEntryMutationVars _$result;
    try {
      _$result = _$v ??
          new _$GMediaListEntryMutationVars._(
              id: id,
              mediaId: mediaId,
              status: status,
              score: score,
              progress: progress,
              repeat: repeat,
              priority: priority,
              isPrivate: isPrivate,
              notes: notes,
              hiddenFromStatusLists: hiddenFromStatusLists,
              customLists: _customLists?.build(),
              advancedScores: _advancedScores?.build(),
              startedAt: _startedAt?.build(),
              completedAt: _completedAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customLists';
        _customLists?.build();
        _$failedField = 'advancedScores';
        _advancedScores?.build();
        _$failedField = 'startedAt';
        _startedAt?.build();
        _$failedField = 'completedAt';
        _completedAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListEntryMutationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
