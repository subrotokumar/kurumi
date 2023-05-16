// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medialist_collection.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListCollectionData> _$gMediaListCollectionDataSerializer =
    new _$GMediaListCollectionDataSerializer();
Serializer<GMediaListCollectionData_MediaListCollection>
    _$gMediaListCollectionDataMediaListCollectionSerializer =
    new _$GMediaListCollectionData_MediaListCollectionSerializer();
Serializer<GMediaListCollectionData_MediaListCollection_lists>
    _$gMediaListCollectionDataMediaListCollectionListsSerializer =
    new _$GMediaListCollectionData_MediaListCollection_listsSerializer();
Serializer<GMediaListCollectionData_MediaListCollection_lists_entries>
    _$gMediaListCollectionDataMediaListCollectionListsEntriesSerializer =
    new _$GMediaListCollectionData_MediaListCollection_lists_entriesSerializer();
Serializer<GMediaListCollectionData_MediaListCollection_lists_entries_media>
    _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaSerializer =
    new _$GMediaListCollectionData_MediaListCollection_lists_entries_mediaSerializer();
Serializer<
        GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry>
    _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaMediaListEntrySerializer =
    new _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntrySerializer();
Serializer<
        GMediaListCollectionData_MediaListCollection_lists_entries_media_title>
    _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaTitleSerializer =
    new _$GMediaListCollectionData_MediaListCollection_lists_entries_media_titleSerializer();
Serializer<
        GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage>
    _$gMediaListCollectionDataMediaListCollectionListsEntriesMediaCoverImageSerializer =
    new _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageSerializer();

class _$GMediaListCollectionDataSerializer
    implements StructuredSerializer<GMediaListCollectionData> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData,
    _$GMediaListCollectionData
  ];
  @override
  final String wireName = 'GMediaListCollectionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListCollectionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.MediaListCollection;
    if (value != null) {
      result
        ..add('MediaListCollection')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaListCollectionData_MediaListCollection)));
    }
    return result;
  }

  @override
  GMediaListCollectionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListCollectionDataBuilder();

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
        case 'MediaListCollection':
          result.MediaListCollection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListCollectionData_MediaListCollection))!
              as GMediaListCollectionData_MediaListCollection);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData_MediaListCollectionSerializer
    implements
        StructuredSerializer<GMediaListCollectionData_MediaListCollection> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData_MediaListCollection,
    _$GMediaListCollectionData_MediaListCollection
  ];
  @override
  final String wireName = 'GMediaListCollectionData_MediaListCollection';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListCollectionData_MediaListCollection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lists;
    if (value != null) {
      result
        ..add('lists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GMediaListCollectionData_MediaListCollection_lists)
            ])));
    }
    return result;
  }

  @override
  GMediaListCollectionData_MediaListCollection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListCollectionData_MediaListCollectionBuilder();

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
        case 'lists':
          result.lists.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GMediaListCollectionData_MediaListCollection_lists)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData_MediaListCollection_listsSerializer
    implements
        StructuredSerializer<
            GMediaListCollectionData_MediaListCollection_lists> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData_MediaListCollection_lists,
    _$GMediaListCollectionData_MediaListCollection_lists
  ];
  @override
  final String wireName = 'GMediaListCollectionData_MediaListCollection_lists';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListCollectionData_MediaListCollection_lists object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.entries;
    if (value != null) {
      result
        ..add('entries')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GMediaListCollectionData_MediaListCollection_lists_entries)
            ])));
    }
    return result;
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListCollectionData_MediaListCollection_listsBuilder();

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
        case 'entries':
          result.entries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GMediaListCollectionData_MediaListCollection_lists_entries)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entriesSerializer
    implements
        StructuredSerializer<
            GMediaListCollectionData_MediaListCollection_lists_entries> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData_MediaListCollection_lists_entries,
    _$GMediaListCollectionData_MediaListCollection_lists_entries
  ];
  @override
  final String wireName =
      'GMediaListCollectionData_MediaListCollection_lists_entries';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListCollectionData_MediaListCollection_lists_entries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListCollectionData_MediaListCollection_lists_entries_media)));
    }
    return result;
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListCollectionData_MediaListCollection_lists_entriesBuilder();

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
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListCollectionData_MediaListCollection_lists_entries_media))!
              as GMediaListCollectionData_MediaListCollection_lists_entries_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_mediaSerializer
    implements
        StructuredSerializer<
            GMediaListCollectionData_MediaListCollection_lists_entries_media> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData_MediaListCollection_lists_entries_media,
    _$GMediaListCollectionData_MediaListCollection_lists_entries_media
  ];
  @override
  final String wireName =
      'GMediaListCollectionData_MediaListCollection_lists_entries_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListCollectionData_MediaListCollection_lists_entries_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.mediaListEntry;
    if (value != null) {
      result
        ..add('mediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListCollectionData_MediaListCollection_lists_entries_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chapters;
    if (value != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumes;
    if (value != null) {
      result
        ..add('volumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaFormat)));
    }
    return result;
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder();

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
        case 'mediaListEntry':
          result.mediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry))!
              as GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListCollectionData_MediaListCollection_lists_entries_media_title))!
              as GMediaListCollectionData_MediaListCollection_lists_entries_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage))!
              as GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage);
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumes':
          result.volumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaFormat))
              as _i2.GMediaFormat?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntrySerializer
    implements
        StructuredSerializer<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry,
    _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
  ];
  @override
  final String wireName =
      'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaListStatus)));
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
    value = object.progressVolumes;
    if (value != null) {
      result
        ..add('progressVolumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaListStatus))
              as _i2.GMediaListStatus?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progressVolumes':
          result.progressVolumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_media_titleSerializer
    implements
        StructuredSerializer<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_title> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData_MediaListCollection_lists_entries_media_title,
    _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title
  ];
  @override
  final String wireName =
      'GMediaListCollectionData_MediaListCollection_lists_entries_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaListCollectionData_MediaListCollection_lists_entries_media_title
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.romaji;
    if (value != null) {
      result
        ..add('romaji')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_title
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder();

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
        case 'romaji':
          result.romaji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageSerializer
    implements
        StructuredSerializer<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage,
    _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
  ];
  @override
  final String wireName =
      'GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder();

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
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListCollectionData extends GMediaListCollectionData {
  @override
  final String G__typename;
  @override
  final GMediaListCollectionData_MediaListCollection? MediaListCollection;

  factory _$GMediaListCollectionData(
          [void Function(GMediaListCollectionDataBuilder)? updates]) =>
      (new GMediaListCollectionDataBuilder()..update(updates))._build();

  _$GMediaListCollectionData._(
      {required this.G__typename, this.MediaListCollection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListCollectionData', 'G__typename');
  }

  @override
  GMediaListCollectionData rebuild(
          void Function(GMediaListCollectionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionDataBuilder toBuilder() =>
      new GMediaListCollectionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListCollectionData &&
        G__typename == other.G__typename &&
        MediaListCollection == other.MediaListCollection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, MediaListCollection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListCollectionData')
          ..add('G__typename', G__typename)
          ..add('MediaListCollection', MediaListCollection))
        .toString();
  }
}

class GMediaListCollectionDataBuilder
    implements
        Builder<GMediaListCollectionData, GMediaListCollectionDataBuilder> {
  _$GMediaListCollectionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaListCollectionData_MediaListCollectionBuilder? _MediaListCollection;
  GMediaListCollectionData_MediaListCollectionBuilder get MediaListCollection =>
      _$this._MediaListCollection ??=
          new GMediaListCollectionData_MediaListCollectionBuilder();
  set MediaListCollection(
          GMediaListCollectionData_MediaListCollectionBuilder?
              MediaListCollection) =>
      _$this._MediaListCollection = MediaListCollection;

  GMediaListCollectionDataBuilder() {
    GMediaListCollectionData._initializeBuilder(this);
  }

  GMediaListCollectionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _MediaListCollection = $v.MediaListCollection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListCollectionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListCollectionData;
  }

  @override
  void update(void Function(GMediaListCollectionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData build() => _build();

  _$GMediaListCollectionData _build() {
    _$GMediaListCollectionData _$result;
    try {
      _$result = _$v ??
          new _$GMediaListCollectionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaListCollectionData', 'G__typename'),
              MediaListCollection: _MediaListCollection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'MediaListCollection';
        _MediaListCollection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListCollectionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListCollectionData_MediaListCollection
    extends GMediaListCollectionData_MediaListCollection {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaListCollectionData_MediaListCollection_lists?>? lists;

  factory _$GMediaListCollectionData_MediaListCollection(
          [void Function(GMediaListCollectionData_MediaListCollectionBuilder)?
              updates]) =>
      (new GMediaListCollectionData_MediaListCollectionBuilder()
            ..update(updates))
          ._build();

  _$GMediaListCollectionData_MediaListCollection._(
      {required this.G__typename, this.lists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaListCollectionData_MediaListCollection', 'G__typename');
  }

  @override
  GMediaListCollectionData_MediaListCollection rebuild(
          void Function(GMediaListCollectionData_MediaListCollectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionData_MediaListCollectionBuilder toBuilder() =>
      new GMediaListCollectionData_MediaListCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListCollectionData_MediaListCollection &&
        G__typename == other.G__typename &&
        lists == other.lists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListCollectionData_MediaListCollection')
          ..add('G__typename', G__typename)
          ..add('lists', lists))
        .toString();
  }
}

class GMediaListCollectionData_MediaListCollectionBuilder
    implements
        Builder<GMediaListCollectionData_MediaListCollection,
            GMediaListCollectionData_MediaListCollectionBuilder> {
  _$GMediaListCollectionData_MediaListCollection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaListCollectionData_MediaListCollection_lists?>? _lists;
  ListBuilder<
      GMediaListCollectionData_MediaListCollection_lists?> get lists => _$this
          ._lists ??=
      new ListBuilder<GMediaListCollectionData_MediaListCollection_lists?>();
  set lists(
          ListBuilder<GMediaListCollectionData_MediaListCollection_lists?>?
              lists) =>
      _$this._lists = lists;

  GMediaListCollectionData_MediaListCollectionBuilder() {
    GMediaListCollectionData_MediaListCollection._initializeBuilder(this);
  }

  GMediaListCollectionData_MediaListCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lists = $v.lists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListCollectionData_MediaListCollection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListCollectionData_MediaListCollection;
  }

  @override
  void update(
      void Function(GMediaListCollectionData_MediaListCollectionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData_MediaListCollection build() => _build();

  _$GMediaListCollectionData_MediaListCollection _build() {
    _$GMediaListCollectionData_MediaListCollection _$result;
    try {
      _$result = _$v ??
          new _$GMediaListCollectionData_MediaListCollection._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListCollectionData_MediaListCollection',
                  'G__typename'),
              lists: _lists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lists';
        _lists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListCollectionData_MediaListCollection',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists
    extends GMediaListCollectionData_MediaListCollection_lists {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaListCollectionData_MediaListCollection_lists_entries?>?
      entries;

  factory _$GMediaListCollectionData_MediaListCollection_lists(
          [void Function(
                  GMediaListCollectionData_MediaListCollection_listsBuilder)?
              updates]) =>
      (new GMediaListCollectionData_MediaListCollection_listsBuilder()
            ..update(updates))
          ._build();

  _$GMediaListCollectionData_MediaListCollection_lists._(
      {required this.G__typename, this.entries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaListCollectionData_MediaListCollection_lists', 'G__typename');
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists rebuild(
          void Function(
                  GMediaListCollectionData_MediaListCollection_listsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionData_MediaListCollection_listsBuilder toBuilder() =>
      new GMediaListCollectionData_MediaListCollection_listsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListCollectionData_MediaListCollection_lists &&
        G__typename == other.G__typename &&
        entries == other.entries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListCollectionData_MediaListCollection_lists')
          ..add('G__typename', G__typename)
          ..add('entries', entries))
        .toString();
  }
}

class GMediaListCollectionData_MediaListCollection_listsBuilder
    implements
        Builder<GMediaListCollectionData_MediaListCollection_lists,
            GMediaListCollectionData_MediaListCollection_listsBuilder> {
  _$GMediaListCollectionData_MediaListCollection_lists? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaListCollectionData_MediaListCollection_lists_entries?>?
      _entries;
  ListBuilder<GMediaListCollectionData_MediaListCollection_lists_entries?>
      get entries => _$this._entries ??= new ListBuilder<
          GMediaListCollectionData_MediaListCollection_lists_entries?>();
  set entries(
          ListBuilder<
                  GMediaListCollectionData_MediaListCollection_lists_entries?>?
              entries) =>
      _$this._entries = entries;

  GMediaListCollectionData_MediaListCollection_listsBuilder() {
    GMediaListCollectionData_MediaListCollection_lists._initializeBuilder(this);
  }

  GMediaListCollectionData_MediaListCollection_listsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _entries = $v.entries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListCollectionData_MediaListCollection_lists other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListCollectionData_MediaListCollection_lists;
  }

  @override
  void update(
      void Function(GMediaListCollectionData_MediaListCollection_listsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists build() => _build();

  _$GMediaListCollectionData_MediaListCollection_lists _build() {
    _$GMediaListCollectionData_MediaListCollection_lists _$result;
    try {
      _$result = _$v ??
          new _$GMediaListCollectionData_MediaListCollection_lists._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListCollectionData_MediaListCollection_lists',
                  'G__typename'),
              entries: _entries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        _entries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListCollectionData_MediaListCollection_lists',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries
    extends GMediaListCollectionData_MediaListCollection_lists_entries {
  @override
  final String G__typename;
  @override
  final GMediaListCollectionData_MediaListCollection_lists_entries_media? media;

  factory _$GMediaListCollectionData_MediaListCollection_lists_entries(
          [void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entriesBuilder)?
              updates]) =>
      (new GMediaListCollectionData_MediaListCollection_lists_entriesBuilder()
            ..update(updates))
          ._build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries._(
      {required this.G__typename, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListCollectionData_MediaListCollection_lists_entries',
        'G__typename');
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries rebuild(
          void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionData_MediaListCollection_lists_entriesBuilder
      toBuilder() =>
          new GMediaListCollectionData_MediaListCollection_lists_entriesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListCollectionData_MediaListCollection_lists_entries &&
        G__typename == other.G__typename &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListCollectionData_MediaListCollection_lists_entries')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GMediaListCollectionData_MediaListCollection_lists_entriesBuilder
    implements
        Builder<GMediaListCollectionData_MediaListCollection_lists_entries,
            GMediaListCollectionData_MediaListCollection_lists_entriesBuilder> {
  _$GMediaListCollectionData_MediaListCollection_lists_entries? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder?
      _media;
  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder
      get media => _$this._media ??=
          new GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder();
  set media(
          GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder?
              media) =>
      _$this._media = media;

  GMediaListCollectionData_MediaListCollection_lists_entriesBuilder() {
    GMediaListCollectionData_MediaListCollection_lists_entries
        ._initializeBuilder(this);
  }

  GMediaListCollectionData_MediaListCollection_lists_entriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListCollectionData_MediaListCollection_lists_entries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListCollectionData_MediaListCollection_lists_entries;
  }

  @override
  void update(
      void Function(
              GMediaListCollectionData_MediaListCollection_lists_entriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries build() =>
      _build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries _build() {
    _$GMediaListCollectionData_MediaListCollection_lists_entries _$result;
    try {
      _$result = _$v ??
          new _$GMediaListCollectionData_MediaListCollection_lists_entries._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListCollectionData_MediaListCollection_lists_entries',
                  'G__typename'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListCollectionData_MediaListCollection_lists_entries',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_media
    extends GMediaListCollectionData_MediaListCollection_lists_entries_media {
  @override
  final String G__typename;
  @override
  final GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry?
      mediaListEntry;
  @override
  final int id;
  @override
  final GMediaListCollectionData_MediaListCollection_lists_entries_media_title?
      title;
  @override
  final GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage?
      coverImage;
  @override
  final String? bannerImage;
  @override
  final int? episodes;
  @override
  final int? chapters;
  @override
  final int? volumes;
  @override
  final _i2.GMediaFormat? format;

  factory _$GMediaListCollectionData_MediaListCollection_lists_entries_media(
          [void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder)?
              updates]) =>
      (new GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder()
            ..update(updates))
          ._build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media._(
      {required this.G__typename,
      this.mediaListEntry,
      required this.id,
      this.title,
      this.coverImage,
      this.bannerImage,
      this.episodes,
      this.chapters,
      this.volumes,
      this.format})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListCollectionData_MediaListCollection_lists_entries_media',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GMediaListCollectionData_MediaListCollection_lists_entries_media',
        'id');
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media rebuild(
          void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder
      toBuilder() =>
          new GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListCollectionData_MediaListCollection_lists_entries_media &&
        G__typename == other.G__typename &&
        mediaListEntry == other.mediaListEntry &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        bannerImage == other.bannerImage &&
        episodes == other.episodes &&
        chapters == other.chapters &&
        volumes == other.volumes &&
        format == other.format;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, mediaListEntry.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, volumes.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListCollectionData_MediaListCollection_lists_entries_media')
          ..add('G__typename', G__typename)
          ..add('mediaListEntry', mediaListEntry)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('bannerImage', bannerImage)
          ..add('episodes', episodes)
          ..add('chapters', chapters)
          ..add('volumes', volumes)
          ..add('format', format))
        .toString();
  }
}

class GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder
    implements
        Builder<
            GMediaListCollectionData_MediaListCollection_lists_entries_media,
            GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder> {
  _$GMediaListCollectionData_MediaListCollection_lists_entries_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder?
      _mediaListEntry;
  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder
      get mediaListEntry => _$this._mediaListEntry ??=
          new GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder();
  set mediaListEntry(
          GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder?
              mediaListEntry) =>
      _$this._mediaListEntry = mediaListEntry;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder?
      _title;
  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder
      get title => _$this._title ??=
          new GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder();
  set title(
          GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder?
              title) =>
      _$this._title = title;

  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder?
      _coverImage;
  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder();
  set coverImage(
          GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  int? _volumes;
  int? get volumes => _$this._volumes;
  set volumes(int? volumes) => _$this._volumes = volumes;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder() {
    GMediaListCollectionData_MediaListCollection_lists_entries_media
        ._initializeBuilder(this);
  }

  GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mediaListEntry = $v.mediaListEntry?.toBuilder();
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _bannerImage = $v.bannerImage;
      _episodes = $v.episodes;
      _chapters = $v.chapters;
      _volumes = $v.volumes;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListCollectionData_MediaListCollection_lists_entries_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListCollectionData_MediaListCollection_lists_entries_media;
  }

  @override
  void update(
      void Function(
              GMediaListCollectionData_MediaListCollection_lists_entries_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media build() =>
      _build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media _build() {
    _$GMediaListCollectionData_MediaListCollection_lists_entries_media _$result;
    try {
      _$result = _$v ??
          new _$GMediaListCollectionData_MediaListCollection_lists_entries_media
                  ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListCollectionData_MediaListCollection_lists_entries_media',
                  'G__typename'),
              mediaListEntry: _mediaListEntry?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GMediaListCollectionData_MediaListCollection_lists_entries_media',
                  'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              bannerImage: bannerImage,
              episodes: episodes,
              chapters: chapters,
              volumes: volumes,
              format: format);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaListEntry';
        _mediaListEntry?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListCollectionData_MediaListCollection_lists_entries_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
    extends GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int userId;
  @override
  final _i2.GMediaListStatus? status;
  @override
  final double? score;
  @override
  final int? progress;
  @override
  final int? progressVolumes;

  factory _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry(
          [void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder)?
              updates]) =>
      (new GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry._(
      {required this.G__typename,
      required this.id,
      required this.userId,
      this.status,
      this.score,
      this.progress,
      this.progressVolumes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        userId,
        r'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry',
        'userId');
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
      rebuild(
              void Function(
                      GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder
      toBuilder() =>
          new GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        status == other.status &&
        score == other.score &&
        progress == other.progress &&
        progressVolumes == other.progressVolumes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, progressVolumes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('status', status)
          ..add('score', score)
          ..add('progress', progress)
          ..add('progressVolumes', progressVolumes))
        .toString();
  }
}

class GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder
    implements
        Builder<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry,
            GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder> {
  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i2.GMediaListStatus? _status;
  _i2.GMediaListStatus? get status => _$this._status;
  set status(_i2.GMediaListStatus? status) => _$this._status = status;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  int? _progressVolumes;
  int? get progressVolumes => _$this._progressVolumes;
  set progressVolumes(int? progressVolumes) =>
      _$this._progressVolumes = progressVolumes;

  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder() {
    GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
        ._initializeBuilder(this);
  }

  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _status = $v.status;
      _score = $v.score;
      _progress = $v.progress;
      _progressVolumes = $v.progressVolumes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry;
  }

  @override
  void update(
      void Function(
              GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
      build() => _build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry
      _build() {
    final _$result = _$v ??
        new _$GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry',
                'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GMediaListCollectionData_MediaListCollection_lists_entries_media_mediaListEntry',
                'userId'),
            status: status,
            score: score,
            progress: progress,
            progressVolumes: progressVolumes);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title
    extends GMediaListCollectionData_MediaListCollection_lists_entries_media_title {
  @override
  final String G__typename;
  @override
  final String? romaji;
  @override
  final String? english;
  @override
  final String? userPreferred;

  factory _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title(
          [void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder)?
              updates]) =>
      (new GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title._(
      {required this.G__typename,
      this.romaji,
      this.english,
      this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListCollectionData_MediaListCollection_lists_entries_media_title',
        'G__typename');
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_title rebuild(
          void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder
      toBuilder() =>
          new GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListCollectionData_MediaListCollection_lists_entries_media_title &&
        G__typename == other.G__typename &&
        romaji == other.romaji &&
        english == other.english &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, romaji.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListCollectionData_MediaListCollection_lists_entries_media_title')
          ..add('G__typename', G__typename)
          ..add('romaji', romaji)
          ..add('english', english)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder
    implements
        Builder<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_title,
            GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder> {
  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _romaji;
  String? get romaji => _$this._romaji;
  set romaji(String? romaji) => _$this._romaji = romaji;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder() {
    GMediaListCollectionData_MediaListCollection_lists_entries_media_title
        ._initializeBuilder(this);
  }

  GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _romaji = $v.romaji;
      _english = $v.english;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListCollectionData_MediaListCollection_lists_entries_media_title
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title;
  }

  @override
  void update(
      void Function(
              GMediaListCollectionData_MediaListCollection_lists_entries_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_title
      build() => _build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title
      _build() {
    final _$result = _$v ??
        new _$GMediaListCollectionData_MediaListCollection_lists_entries_media_title
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListCollectionData_MediaListCollection_lists_entries_media_title',
                'G__typename'),
            romaji: romaji,
            english: english,
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
    extends GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? medium;
  @override
  final String? large;
  @override
  final String? extraLarge;
  @override
  final String? color;

  factory _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage(
          [void Function(
                  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder)?
              updates]) =>
      (new GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage._(
      {required this.G__typename,
      this.medium,
      this.large,
      this.extraLarge,
      this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage',
        'G__typename');
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
      rebuild(
              void Function(
                      GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder
      toBuilder() =>
          new GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage &&
        G__typename == other.G__typename &&
        medium == other.medium &&
        large == other.large &&
        extraLarge == other.extraLarge &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('medium', medium)
          ..add('large', large)
          ..add('extraLarge', extraLarge)
          ..add('color', color))
        .toString();
  }
}

class GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder
    implements
        Builder<
            GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage,
            GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder> {
  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder() {
    GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
        ._initializeBuilder(this);
  }

  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _large = $v.large;
      _extraLarge = $v.extraLarge;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage;
  }

  @override
  void update(
      void Function(
              GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
      build() => _build();

  _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
      _build() {
    final _$result = _$v ??
        new _$GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListCollectionData_MediaListCollection_lists_entries_media_coverImage',
                'G__typename'),
            medium: medium,
            large: large,
            extraLarge: extraLarge,
            color: color);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
