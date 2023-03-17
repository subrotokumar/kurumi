// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchMangaQuery.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchMangaQueryVars> _$gSearchMangaQueryVarsSerializer =
    new _$GSearchMangaQueryVarsSerializer();

class _$GSearchMangaQueryVarsSerializer
    implements StructuredSerializer<GSearchMangaQueryVars> {
  @override
  final Iterable<Type> types = const [
    GSearchMangaQueryVars,
    _$GSearchMangaQueryVars
  ];
  @override
  final String wireName = 'GSearchMangaQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchMangaQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i1.GMediaSort)])));
    }
    value = object.formatIn;
    if (value != null) {
      result
        ..add('formatIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i1.GMediaFormat)])));
    }
    value = object.statusIn;
    if (value != null) {
      result
        ..add('statusIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i1.GMediaStatus)])));
    }
    value = object.sourceIn;
    if (value != null) {
      result
        ..add('sourceIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i1.GMediaSource)])));
    }
    value = object.countryOfOrigin;
    if (value != null) {
      result
        ..add('countryOfOrigin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCountryCode)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaSeason)));
    }
    value = object.startDateGreater;
    if (value != null) {
      result
        ..add('startDateGreater')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GFuzzyDateInt)));
    }
    value = object.startDateLesser;
    if (value != null) {
      result
        ..add('startDateLesser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GFuzzyDateInt)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.onList;
    if (value != null) {
      result
        ..add('onList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genreIn;
    if (value != null) {
      result
        ..add('genreIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.genreNotIn;
    if (value != null) {
      result
        ..add('genreNotIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.minimumTagRank;
    if (value != null) {
      result
        ..add('minimumTagRank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tagIn;
    if (value != null) {
      result
        ..add('tagIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.tagNotIn;
    if (value != null) {
      result
        ..add('tagNotIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.licensedByIn;
    if (value != null) {
      result
        ..add('licensedByIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.chaptersGreater;
    if (value != null) {
      result
        ..add('chaptersGreater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chaptersLesser;
    if (value != null) {
      result
        ..add('chaptersLesser')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumesGreater;
    if (value != null) {
      result
        ..add('volumesGreater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumesLesser;
    if (value != null) {
      result
        ..add('volumesLesser')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.averageScoreGreater;
    if (value != null) {
      result
        ..add('averageScoreGreater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.averageScoreLesser;
    if (value != null) {
      result
        ..add('averageScoreLesser')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.popularityGreater;
    if (value != null) {
      result
        ..add('popularityGreater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.popularityLesser;
    if (value != null) {
      result
        ..add('popularityLesser')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GSearchMangaQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchMangaQueryVarsBuilder();

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
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GMediaSort)
              ]))! as BuiltList<Object?>);
          break;
        case 'formatIn':
          result.formatIn.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GMediaFormat)
              ]))! as BuiltList<Object?>);
          break;
        case 'statusIn':
          result.statusIn.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GMediaStatus)
              ]))! as BuiltList<Object?>);
          break;
        case 'sourceIn':
          result.sourceIn.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GMediaSource)
              ]))! as BuiltList<Object?>);
          break;
        case 'countryOfOrigin':
          result.countryOfOrigin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCountryCode))!
              as _i1.GCountryCode);
          break;
        case 'season':
          result.season = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaSeason))
              as _i1.GMediaSeason?;
          break;
        case 'startDateGreater':
          result.startDateGreater.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFuzzyDateInt))!
              as _i1.GFuzzyDateInt);
          break;
        case 'startDateLesser':
          result.startDateLesser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFuzzyDateInt))!
              as _i1.GFuzzyDateInt);
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'onList':
          result.onList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genreIn':
          result.genreIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'genreNotIn':
          result.genreNotIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'minimumTagRank':
          result.minimumTagRank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tagIn':
          result.tagIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'tagNotIn':
          result.tagNotIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'licensedByIn':
          result.licensedByIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'chaptersGreater':
          result.chaptersGreater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chaptersLesser':
          result.chaptersLesser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumesGreater':
          result.volumesGreater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumesLesser':
          result.volumesLesser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'averageScoreGreater':
          result.averageScoreGreater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'averageScoreLesser':
          result.averageScoreLesser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'popularityGreater':
          result.popularityGreater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'popularityLesser':
          result.popularityLesser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchMangaQueryVars extends GSearchMangaQueryVars {
  @override
  final int? page;
  @override
  final String? search;
  @override
  final BuiltList<_i1.GMediaSort?>? sort;
  @override
  final BuiltList<_i1.GMediaFormat?>? formatIn;
  @override
  final BuiltList<_i1.GMediaStatus?>? statusIn;
  @override
  final BuiltList<_i1.GMediaSource?>? sourceIn;
  @override
  final _i1.GCountryCode? countryOfOrigin;
  @override
  final _i1.GMediaSeason? season;
  @override
  final _i1.GFuzzyDateInt? startDateGreater;
  @override
  final _i1.GFuzzyDateInt? startDateLesser;
  @override
  final bool? isAdult;
  @override
  final bool? onList;
  @override
  final BuiltList<String?>? genreIn;
  @override
  final BuiltList<String?>? genreNotIn;
  @override
  final int? minimumTagRank;
  @override
  final BuiltList<String?>? tagIn;
  @override
  final BuiltList<String?>? tagNotIn;
  @override
  final BuiltList<String?>? licensedByIn;
  @override
  final int? chaptersGreater;
  @override
  final int? chaptersLesser;
  @override
  final int? volumesGreater;
  @override
  final int? volumesLesser;
  @override
  final int? averageScoreGreater;
  @override
  final int? averageScoreLesser;
  @override
  final int? popularityGreater;
  @override
  final int? popularityLesser;

  factory _$GSearchMangaQueryVars(
          [void Function(GSearchMangaQueryVarsBuilder)? updates]) =>
      (new GSearchMangaQueryVarsBuilder()..update(updates))._build();

  _$GSearchMangaQueryVars._(
      {this.page,
      this.search,
      this.sort,
      this.formatIn,
      this.statusIn,
      this.sourceIn,
      this.countryOfOrigin,
      this.season,
      this.startDateGreater,
      this.startDateLesser,
      this.isAdult,
      this.onList,
      this.genreIn,
      this.genreNotIn,
      this.minimumTagRank,
      this.tagIn,
      this.tagNotIn,
      this.licensedByIn,
      this.chaptersGreater,
      this.chaptersLesser,
      this.volumesGreater,
      this.volumesLesser,
      this.averageScoreGreater,
      this.averageScoreLesser,
      this.popularityGreater,
      this.popularityLesser})
      : super._();

  @override
  GSearchMangaQueryVars rebuild(
          void Function(GSearchMangaQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchMangaQueryVarsBuilder toBuilder() =>
      new GSearchMangaQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchMangaQueryVars &&
        page == other.page &&
        search == other.search &&
        sort == other.sort &&
        formatIn == other.formatIn &&
        statusIn == other.statusIn &&
        sourceIn == other.sourceIn &&
        countryOfOrigin == other.countryOfOrigin &&
        season == other.season &&
        startDateGreater == other.startDateGreater &&
        startDateLesser == other.startDateLesser &&
        isAdult == other.isAdult &&
        onList == other.onList &&
        genreIn == other.genreIn &&
        genreNotIn == other.genreNotIn &&
        minimumTagRank == other.minimumTagRank &&
        tagIn == other.tagIn &&
        tagNotIn == other.tagNotIn &&
        licensedByIn == other.licensedByIn &&
        chaptersGreater == other.chaptersGreater &&
        chaptersLesser == other.chaptersLesser &&
        volumesGreater == other.volumesGreater &&
        volumesLesser == other.volumesLesser &&
        averageScoreGreater == other.averageScoreGreater &&
        averageScoreLesser == other.averageScoreLesser &&
        popularityGreater == other.popularityGreater &&
        popularityLesser == other.popularityLesser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, formatIn.hashCode);
    _$hash = $jc(_$hash, statusIn.hashCode);
    _$hash = $jc(_$hash, sourceIn.hashCode);
    _$hash = $jc(_$hash, countryOfOrigin.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, startDateGreater.hashCode);
    _$hash = $jc(_$hash, startDateLesser.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, onList.hashCode);
    _$hash = $jc(_$hash, genreIn.hashCode);
    _$hash = $jc(_$hash, genreNotIn.hashCode);
    _$hash = $jc(_$hash, minimumTagRank.hashCode);
    _$hash = $jc(_$hash, tagIn.hashCode);
    _$hash = $jc(_$hash, tagNotIn.hashCode);
    _$hash = $jc(_$hash, licensedByIn.hashCode);
    _$hash = $jc(_$hash, chaptersGreater.hashCode);
    _$hash = $jc(_$hash, chaptersLesser.hashCode);
    _$hash = $jc(_$hash, volumesGreater.hashCode);
    _$hash = $jc(_$hash, volumesLesser.hashCode);
    _$hash = $jc(_$hash, averageScoreGreater.hashCode);
    _$hash = $jc(_$hash, averageScoreLesser.hashCode);
    _$hash = $jc(_$hash, popularityGreater.hashCode);
    _$hash = $jc(_$hash, popularityLesser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchMangaQueryVars')
          ..add('page', page)
          ..add('search', search)
          ..add('sort', sort)
          ..add('formatIn', formatIn)
          ..add('statusIn', statusIn)
          ..add('sourceIn', sourceIn)
          ..add('countryOfOrigin', countryOfOrigin)
          ..add('season', season)
          ..add('startDateGreater', startDateGreater)
          ..add('startDateLesser', startDateLesser)
          ..add('isAdult', isAdult)
          ..add('onList', onList)
          ..add('genreIn', genreIn)
          ..add('genreNotIn', genreNotIn)
          ..add('minimumTagRank', minimumTagRank)
          ..add('tagIn', tagIn)
          ..add('tagNotIn', tagNotIn)
          ..add('licensedByIn', licensedByIn)
          ..add('chaptersGreater', chaptersGreater)
          ..add('chaptersLesser', chaptersLesser)
          ..add('volumesGreater', volumesGreater)
          ..add('volumesLesser', volumesLesser)
          ..add('averageScoreGreater', averageScoreGreater)
          ..add('averageScoreLesser', averageScoreLesser)
          ..add('popularityGreater', popularityGreater)
          ..add('popularityLesser', popularityLesser))
        .toString();
  }
}

class GSearchMangaQueryVarsBuilder
    implements Builder<GSearchMangaQueryVars, GSearchMangaQueryVarsBuilder> {
  _$GSearchMangaQueryVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  ListBuilder<_i1.GMediaSort?>? _sort;
  ListBuilder<_i1.GMediaSort?> get sort =>
      _$this._sort ??= new ListBuilder<_i1.GMediaSort?>();
  set sort(ListBuilder<_i1.GMediaSort?>? sort) => _$this._sort = sort;

  ListBuilder<_i1.GMediaFormat?>? _formatIn;
  ListBuilder<_i1.GMediaFormat?> get formatIn =>
      _$this._formatIn ??= new ListBuilder<_i1.GMediaFormat?>();
  set formatIn(ListBuilder<_i1.GMediaFormat?>? formatIn) =>
      _$this._formatIn = formatIn;

  ListBuilder<_i1.GMediaStatus?>? _statusIn;
  ListBuilder<_i1.GMediaStatus?> get statusIn =>
      _$this._statusIn ??= new ListBuilder<_i1.GMediaStatus?>();
  set statusIn(ListBuilder<_i1.GMediaStatus?>? statusIn) =>
      _$this._statusIn = statusIn;

  ListBuilder<_i1.GMediaSource?>? _sourceIn;
  ListBuilder<_i1.GMediaSource?> get sourceIn =>
      _$this._sourceIn ??= new ListBuilder<_i1.GMediaSource?>();
  set sourceIn(ListBuilder<_i1.GMediaSource?>? sourceIn) =>
      _$this._sourceIn = sourceIn;

  _i1.GCountryCodeBuilder? _countryOfOrigin;
  _i1.GCountryCodeBuilder get countryOfOrigin =>
      _$this._countryOfOrigin ??= new _i1.GCountryCodeBuilder();
  set countryOfOrigin(_i1.GCountryCodeBuilder? countryOfOrigin) =>
      _$this._countryOfOrigin = countryOfOrigin;

  _i1.GMediaSeason? _season;
  _i1.GMediaSeason? get season => _$this._season;
  set season(_i1.GMediaSeason? season) => _$this._season = season;

  _i1.GFuzzyDateIntBuilder? _startDateGreater;
  _i1.GFuzzyDateIntBuilder get startDateGreater =>
      _$this._startDateGreater ??= new _i1.GFuzzyDateIntBuilder();
  set startDateGreater(_i1.GFuzzyDateIntBuilder? startDateGreater) =>
      _$this._startDateGreater = startDateGreater;

  _i1.GFuzzyDateIntBuilder? _startDateLesser;
  _i1.GFuzzyDateIntBuilder get startDateLesser =>
      _$this._startDateLesser ??= new _i1.GFuzzyDateIntBuilder();
  set startDateLesser(_i1.GFuzzyDateIntBuilder? startDateLesser) =>
      _$this._startDateLesser = startDateLesser;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  bool? _onList;
  bool? get onList => _$this._onList;
  set onList(bool? onList) => _$this._onList = onList;

  ListBuilder<String?>? _genreIn;
  ListBuilder<String?> get genreIn =>
      _$this._genreIn ??= new ListBuilder<String?>();
  set genreIn(ListBuilder<String?>? genreIn) => _$this._genreIn = genreIn;

  ListBuilder<String?>? _genreNotIn;
  ListBuilder<String?> get genreNotIn =>
      _$this._genreNotIn ??= new ListBuilder<String?>();
  set genreNotIn(ListBuilder<String?>? genreNotIn) =>
      _$this._genreNotIn = genreNotIn;

  int? _minimumTagRank;
  int? get minimumTagRank => _$this._minimumTagRank;
  set minimumTagRank(int? minimumTagRank) =>
      _$this._minimumTagRank = minimumTagRank;

  ListBuilder<String?>? _tagIn;
  ListBuilder<String?> get tagIn =>
      _$this._tagIn ??= new ListBuilder<String?>();
  set tagIn(ListBuilder<String?>? tagIn) => _$this._tagIn = tagIn;

  ListBuilder<String?>? _tagNotIn;
  ListBuilder<String?> get tagNotIn =>
      _$this._tagNotIn ??= new ListBuilder<String?>();
  set tagNotIn(ListBuilder<String?>? tagNotIn) => _$this._tagNotIn = tagNotIn;

  ListBuilder<String?>? _licensedByIn;
  ListBuilder<String?> get licensedByIn =>
      _$this._licensedByIn ??= new ListBuilder<String?>();
  set licensedByIn(ListBuilder<String?>? licensedByIn) =>
      _$this._licensedByIn = licensedByIn;

  int? _chaptersGreater;
  int? get chaptersGreater => _$this._chaptersGreater;
  set chaptersGreater(int? chaptersGreater) =>
      _$this._chaptersGreater = chaptersGreater;

  int? _chaptersLesser;
  int? get chaptersLesser => _$this._chaptersLesser;
  set chaptersLesser(int? chaptersLesser) =>
      _$this._chaptersLesser = chaptersLesser;

  int? _volumesGreater;
  int? get volumesGreater => _$this._volumesGreater;
  set volumesGreater(int? volumesGreater) =>
      _$this._volumesGreater = volumesGreater;

  int? _volumesLesser;
  int? get volumesLesser => _$this._volumesLesser;
  set volumesLesser(int? volumesLesser) =>
      _$this._volumesLesser = volumesLesser;

  int? _averageScoreGreater;
  int? get averageScoreGreater => _$this._averageScoreGreater;
  set averageScoreGreater(int? averageScoreGreater) =>
      _$this._averageScoreGreater = averageScoreGreater;

  int? _averageScoreLesser;
  int? get averageScoreLesser => _$this._averageScoreLesser;
  set averageScoreLesser(int? averageScoreLesser) =>
      _$this._averageScoreLesser = averageScoreLesser;

  int? _popularityGreater;
  int? get popularityGreater => _$this._popularityGreater;
  set popularityGreater(int? popularityGreater) =>
      _$this._popularityGreater = popularityGreater;

  int? _popularityLesser;
  int? get popularityLesser => _$this._popularityLesser;
  set popularityLesser(int? popularityLesser) =>
      _$this._popularityLesser = popularityLesser;

  GSearchMangaQueryVarsBuilder();

  GSearchMangaQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _search = $v.search;
      _sort = $v.sort?.toBuilder();
      _formatIn = $v.formatIn?.toBuilder();
      _statusIn = $v.statusIn?.toBuilder();
      _sourceIn = $v.sourceIn?.toBuilder();
      _countryOfOrigin = $v.countryOfOrigin?.toBuilder();
      _season = $v.season;
      _startDateGreater = $v.startDateGreater?.toBuilder();
      _startDateLesser = $v.startDateLesser?.toBuilder();
      _isAdult = $v.isAdult;
      _onList = $v.onList;
      _genreIn = $v.genreIn?.toBuilder();
      _genreNotIn = $v.genreNotIn?.toBuilder();
      _minimumTagRank = $v.minimumTagRank;
      _tagIn = $v.tagIn?.toBuilder();
      _tagNotIn = $v.tagNotIn?.toBuilder();
      _licensedByIn = $v.licensedByIn?.toBuilder();
      _chaptersGreater = $v.chaptersGreater;
      _chaptersLesser = $v.chaptersLesser;
      _volumesGreater = $v.volumesGreater;
      _volumesLesser = $v.volumesLesser;
      _averageScoreGreater = $v.averageScoreGreater;
      _averageScoreLesser = $v.averageScoreLesser;
      _popularityGreater = $v.popularityGreater;
      _popularityLesser = $v.popularityLesser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchMangaQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchMangaQueryVars;
  }

  @override
  void update(void Function(GSearchMangaQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchMangaQueryVars build() => _build();

  _$GSearchMangaQueryVars _build() {
    _$GSearchMangaQueryVars _$result;
    try {
      _$result = _$v ??
          new _$GSearchMangaQueryVars._(
              page: page,
              search: search,
              sort: _sort?.build(),
              formatIn: _formatIn?.build(),
              statusIn: _statusIn?.build(),
              sourceIn: _sourceIn?.build(),
              countryOfOrigin: _countryOfOrigin?.build(),
              season: season,
              startDateGreater: _startDateGreater?.build(),
              startDateLesser: _startDateLesser?.build(),
              isAdult: isAdult,
              onList: onList,
              genreIn: _genreIn?.build(),
              genreNotIn: _genreNotIn?.build(),
              minimumTagRank: minimumTagRank,
              tagIn: _tagIn?.build(),
              tagNotIn: _tagNotIn?.build(),
              licensedByIn: _licensedByIn?.build(),
              chaptersGreater: chaptersGreater,
              chaptersLesser: chaptersLesser,
              volumesGreater: volumesGreater,
              volumesLesser: volumesLesser,
              averageScoreGreater: averageScoreGreater,
              averageScoreLesser: averageScoreLesser,
              popularityGreater: popularityGreater,
              popularityLesser: popularityLesser);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
        _$failedField = 'formatIn';
        _formatIn?.build();
        _$failedField = 'statusIn';
        _statusIn?.build();
        _$failedField = 'sourceIn';
        _sourceIn?.build();
        _$failedField = 'countryOfOrigin';
        _countryOfOrigin?.build();

        _$failedField = 'startDateGreater';
        _startDateGreater?.build();
        _$failedField = 'startDateLesser';
        _startDateLesser?.build();

        _$failedField = 'genreIn';
        _genreIn?.build();
        _$failedField = 'genreNotIn';
        _genreNotIn?.build();

        _$failedField = 'tagIn';
        _tagIn?.build();
        _$failedField = 'tagNotIn';
        _tagNotIn?.build();
        _$failedField = 'licensedByIn';
        _licensedByIn?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchMangaQueryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
