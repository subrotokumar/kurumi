// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medialist_entry_mutation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListEntryMutationData>
    _$gMediaListEntryMutationDataSerializer =
    new _$GMediaListEntryMutationDataSerializer();
Serializer<GMediaListEntryMutationData_SaveMediaListEntry>
    _$gMediaListEntryMutationDataSaveMediaListEntrySerializer =
    new _$GMediaListEntryMutationData_SaveMediaListEntrySerializer();
Serializer<GMediaListEntryMutationData_SaveMediaListEntry_startedAt>
    _$gMediaListEntryMutationDataSaveMediaListEntryStartedAtSerializer =
    new _$GMediaListEntryMutationData_SaveMediaListEntry_startedAtSerializer();
Serializer<GMediaListEntryMutationData_SaveMediaListEntry_completedAt>
    _$gMediaListEntryMutationDataSaveMediaListEntryCompletedAtSerializer =
    new _$GMediaListEntryMutationData_SaveMediaListEntry_completedAtSerializer();
Serializer<GMediaListEntryMutationData_SaveMediaListEntry_media>
    _$gMediaListEntryMutationDataSaveMediaListEntryMediaSerializer =
    new _$GMediaListEntryMutationData_SaveMediaListEntry_mediaSerializer();
Serializer<GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry>
    _$gMediaListEntryMutationDataSaveMediaListEntryMediaMediaListEntrySerializer =
    new _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntrySerializer();
Serializer<
        GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt>
    _$gMediaListEntryMutationDataSaveMediaListEntryMediaMediaListEntryStartedAtSerializer =
    new _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtSerializer();
Serializer<
        GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt>
    _$gMediaListEntryMutationDataSaveMediaListEntryMediaMediaListEntryCompletedAtSerializer =
    new _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtSerializer();

class _$GMediaListEntryMutationDataSerializer
    implements StructuredSerializer<GMediaListEntryMutationData> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData,
    _$GMediaListEntryMutationData
  ];
  @override
  final String wireName = 'GMediaListEntryMutationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryMutationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SaveMediaListEntry;
    if (value != null) {
      result
        ..add('SaveMediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListEntryMutationData_SaveMediaListEntry)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryMutationDataBuilder();

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
        case 'SaveMediaListEntry':
          result.SaveMediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListEntryMutationData_SaveMediaListEntry))!
              as GMediaListEntryMutationData_SaveMediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntrySerializer
    implements
        StructuredSerializer<GMediaListEntryMutationData_SaveMediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData_SaveMediaListEntry,
    _$GMediaListEntryMutationData_SaveMediaListEntry
  ];
  @override
  final String wireName = 'GMediaListEntryMutationData_SaveMediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListEntryMutationData_SaveMediaListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'mediaId',
      serializers.serialize(object.mediaId, specifiedType: const FullType(int)),
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
    value = object.private;
    if (value != null) {
      result
        ..add('private')
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
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListEntryMutationData_SaveMediaListEntry_startedAt)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListEntryMutationData_SaveMediaListEntry_completedAt)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListEntryMutationData_SaveMediaListEntry_media)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryMutationData_SaveMediaListEntryBuilder();

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
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
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
        case 'repeat':
          result.repeat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListEntryMutationData_SaveMediaListEntry_startedAt))!
              as GMediaListEntryMutationData_SaveMediaListEntry_startedAt);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListEntryMutationData_SaveMediaListEntry_completedAt))!
              as GMediaListEntryMutationData_SaveMediaListEntry_completedAt);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListEntryMutationData_SaveMediaListEntry_media))!
              as GMediaListEntryMutationData_SaveMediaListEntry_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_startedAtSerializer
    implements
        StructuredSerializer<
            GMediaListEntryMutationData_SaveMediaListEntry_startedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData_SaveMediaListEntry_startedAt,
    _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt
  ];
  @override
  final String wireName =
      'GMediaListEntryMutationData_SaveMediaListEntry_startedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListEntryMutationData_SaveMediaListEntry_startedAt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_startedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder();

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
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_completedAtSerializer
    implements
        StructuredSerializer<
            GMediaListEntryMutationData_SaveMediaListEntry_completedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData_SaveMediaListEntry_completedAt,
    _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt
  ];
  @override
  final String wireName =
      'GMediaListEntryMutationData_SaveMediaListEntry_completedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListEntryMutationData_SaveMediaListEntry_completedAt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_completedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder();

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
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_mediaSerializer
    implements
        StructuredSerializer<
            GMediaListEntryMutationData_SaveMediaListEntry_media> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData_SaveMediaListEntry_media,
    _$GMediaListEntryMutationData_SaveMediaListEntry_media
  ];
  @override
  final String wireName =
      'GMediaListEntryMutationData_SaveMediaListEntry_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListEntryMutationData_SaveMediaListEntry_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.mediaListEntry;
    if (value != null) {
      result
        ..add('mediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder();

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
                      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry))!
              as GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntrySerializer
    implements
        StructuredSerializer<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry,
    _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
  ];
  @override
  final String wireName =
      'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
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
    value = object.private;
    if (value != null) {
      result
        ..add('private')
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
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder();

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
        case 'repeat':
          result.repeat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt))!
              as GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt))!
              as GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtSerializer
    implements
        StructuredSerializer<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt,
    _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
  ];
  @override
  final String wireName =
      'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder();

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
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtSerializer
    implements
        StructuredSerializer<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt,
    _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
  ];
  @override
  final String wireName =
      'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder();

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
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryMutationData extends GMediaListEntryMutationData {
  @override
  final String G__typename;
  @override
  final GMediaListEntryMutationData_SaveMediaListEntry? SaveMediaListEntry;

  factory _$GMediaListEntryMutationData(
          [void Function(GMediaListEntryMutationDataBuilder)? updates]) =>
      (new GMediaListEntryMutationDataBuilder()..update(updates))._build();

  _$GMediaListEntryMutationData._(
      {required this.G__typename, this.SaveMediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListEntryMutationData', 'G__typename');
  }

  @override
  GMediaListEntryMutationData rebuild(
          void Function(GMediaListEntryMutationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationDataBuilder toBuilder() =>
      new GMediaListEntryMutationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryMutationData &&
        G__typename == other.G__typename &&
        SaveMediaListEntry == other.SaveMediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SaveMediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListEntryMutationData')
          ..add('G__typename', G__typename)
          ..add('SaveMediaListEntry', SaveMediaListEntry))
        .toString();
  }
}

class GMediaListEntryMutationDataBuilder
    implements
        Builder<GMediaListEntryMutationData,
            GMediaListEntryMutationDataBuilder> {
  _$GMediaListEntryMutationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaListEntryMutationData_SaveMediaListEntryBuilder? _SaveMediaListEntry;
  GMediaListEntryMutationData_SaveMediaListEntryBuilder
      get SaveMediaListEntry => _$this._SaveMediaListEntry ??=
          new GMediaListEntryMutationData_SaveMediaListEntryBuilder();
  set SaveMediaListEntry(
          GMediaListEntryMutationData_SaveMediaListEntryBuilder?
              SaveMediaListEntry) =>
      _$this._SaveMediaListEntry = SaveMediaListEntry;

  GMediaListEntryMutationDataBuilder() {
    GMediaListEntryMutationData._initializeBuilder(this);
  }

  GMediaListEntryMutationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SaveMediaListEntry = $v.SaveMediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListEntryMutationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryMutationData;
  }

  @override
  void update(void Function(GMediaListEntryMutationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData build() => _build();

  _$GMediaListEntryMutationData _build() {
    _$GMediaListEntryMutationData _$result;
    try {
      _$result = _$v ??
          new _$GMediaListEntryMutationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaListEntryMutationData', 'G__typename'),
              SaveMediaListEntry: _SaveMediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SaveMediaListEntry';
        _SaveMediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListEntryMutationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry
    extends GMediaListEntryMutationData_SaveMediaListEntry {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int mediaId;
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
  @override
  final int? repeat;
  @override
  final int? priority;
  @override
  final bool? private;
  @override
  final String? notes;
  @override
  final GMediaListEntryMutationData_SaveMediaListEntry_startedAt? startedAt;
  @override
  final GMediaListEntryMutationData_SaveMediaListEntry_completedAt? completedAt;
  @override
  final GMediaListEntryMutationData_SaveMediaListEntry_media? media;

  factory _$GMediaListEntryMutationData_SaveMediaListEntry(
          [void Function(GMediaListEntryMutationData_SaveMediaListEntryBuilder)?
              updates]) =>
      (new GMediaListEntryMutationData_SaveMediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GMediaListEntryMutationData_SaveMediaListEntry._(
      {required this.G__typename,
      required this.id,
      required this.mediaId,
      required this.userId,
      this.status,
      this.score,
      this.progress,
      this.progressVolumes,
      this.repeat,
      this.priority,
      this.private,
      this.notes,
      this.startedAt,
      this.completedAt,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaListEntryMutationData_SaveMediaListEntry', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaListEntryMutationData_SaveMediaListEntry', 'id');
    BuiltValueNullFieldError.checkNotNull(
        mediaId, r'GMediaListEntryMutationData_SaveMediaListEntry', 'mediaId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GMediaListEntryMutationData_SaveMediaListEntry', 'userId');
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry rebuild(
          void Function(GMediaListEntryMutationData_SaveMediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationData_SaveMediaListEntryBuilder toBuilder() =>
      new GMediaListEntryMutationData_SaveMediaListEntryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryMutationData_SaveMediaListEntry &&
        G__typename == other.G__typename &&
        id == other.id &&
        mediaId == other.mediaId &&
        userId == other.userId &&
        status == other.status &&
        score == other.score &&
        progress == other.progress &&
        progressVolumes == other.progressVolumes &&
        repeat == other.repeat &&
        priority == other.priority &&
        private == other.private &&
        notes == other.notes &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, progressVolumes.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListEntryMutationData_SaveMediaListEntry')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('mediaId', mediaId)
          ..add('userId', userId)
          ..add('status', status)
          ..add('score', score)
          ..add('progress', progress)
          ..add('progressVolumes', progressVolumes)
          ..add('repeat', repeat)
          ..add('priority', priority)
          ..add('private', private)
          ..add('notes', notes)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt)
          ..add('media', media))
        .toString();
  }
}

class GMediaListEntryMutationData_SaveMediaListEntryBuilder
    implements
        Builder<GMediaListEntryMutationData_SaveMediaListEntry,
            GMediaListEntryMutationData_SaveMediaListEntryBuilder> {
  _$GMediaListEntryMutationData_SaveMediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

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

  int? _repeat;
  int? get repeat => _$this._repeat;
  set repeat(int? repeat) => _$this._repeat = repeat;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder? _startedAt;
  GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder
      get startedAt => _$this._startedAt ??=
          new GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder();
  set startedAt(
          GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder?
              startedAt) =>
      _$this._startedAt = startedAt;

  GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder?
      _completedAt;
  GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder
      get completedAt => _$this._completedAt ??=
          new GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder();
  set completedAt(
          GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder?
              completedAt) =>
      _$this._completedAt = completedAt;

  GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder? _media;
  GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder get media =>
      _$this._media ??=
          new GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder();
  set media(
          GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder? media) =>
      _$this._media = media;

  GMediaListEntryMutationData_SaveMediaListEntryBuilder() {
    GMediaListEntryMutationData_SaveMediaListEntry._initializeBuilder(this);
  }

  GMediaListEntryMutationData_SaveMediaListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _mediaId = $v.mediaId;
      _userId = $v.userId;
      _status = $v.status;
      _score = $v.score;
      _progress = $v.progress;
      _progressVolumes = $v.progressVolumes;
      _repeat = $v.repeat;
      _priority = $v.priority;
      _private = $v.private;
      _notes = $v.notes;
      _startedAt = $v.startedAt?.toBuilder();
      _completedAt = $v.completedAt?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListEntryMutationData_SaveMediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryMutationData_SaveMediaListEntry;
  }

  @override
  void update(
      void Function(GMediaListEntryMutationData_SaveMediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry build() => _build();

  _$GMediaListEntryMutationData_SaveMediaListEntry _build() {
    _$GMediaListEntryMutationData_SaveMediaListEntry _$result;
    try {
      _$result = _$v ??
          new _$GMediaListEntryMutationData_SaveMediaListEntry._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListEntryMutationData_SaveMediaListEntry',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaListEntryMutationData_SaveMediaListEntry', 'id'),
              mediaId: BuiltValueNullFieldError.checkNotNull(mediaId,
                  r'GMediaListEntryMutationData_SaveMediaListEntry', 'mediaId'),
              userId: BuiltValueNullFieldError.checkNotNull(userId,
                  r'GMediaListEntryMutationData_SaveMediaListEntry', 'userId'),
              status: status,
              score: score,
              progress: progress,
              progressVolumes: progressVolumes,
              repeat: repeat,
              priority: priority,
              private: private,
              notes: notes,
              startedAt: _startedAt?.build(),
              completedAt: _completedAt?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startedAt';
        _startedAt?.build();
        _$failedField = 'completedAt';
        _completedAt?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListEntryMutationData_SaveMediaListEntry',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt
    extends GMediaListEntryMutationData_SaveMediaListEntry_startedAt {
  @override
  final String G__typename;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt(
          [void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder)?
              updates]) =>
      (new GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder()
            ..update(updates))
          ._build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt._(
      {required this.G__typename, this.year, this.month, this.day})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListEntryMutationData_SaveMediaListEntry_startedAt',
        'G__typename');
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_startedAt rebuild(
          void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder toBuilder() =>
      new GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryMutationData_SaveMediaListEntry_startedAt &&
        G__typename == other.G__typename &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListEntryMutationData_SaveMediaListEntry_startedAt')
          ..add('G__typename', G__typename)
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder
    implements
        Builder<GMediaListEntryMutationData_SaveMediaListEntry_startedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder> {
  _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder() {
    GMediaListEntryMutationData_SaveMediaListEntry_startedAt._initializeBuilder(
        this);
  }

  GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _year = $v.year;
      _month = $v.month;
      _day = $v.day;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListEntryMutationData_SaveMediaListEntry_startedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt;
  }

  @override
  void update(
      void Function(
              GMediaListEntryMutationData_SaveMediaListEntry_startedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_startedAt build() => _build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt _build() {
    final _$result = _$v ??
        new _$GMediaListEntryMutationData_SaveMediaListEntry_startedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListEntryMutationData_SaveMediaListEntry_startedAt',
                'G__typename'),
            year: year,
            month: month,
            day: day);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt
    extends GMediaListEntryMutationData_SaveMediaListEntry_completedAt {
  @override
  final String G__typename;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt(
          [void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder)?
              updates]) =>
      (new GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder()
            ..update(updates))
          ._build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt._(
      {required this.G__typename, this.year, this.month, this.day})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListEntryMutationData_SaveMediaListEntry_completedAt',
        'G__typename');
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_completedAt rebuild(
          void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder
      toBuilder() =>
          new GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListEntryMutationData_SaveMediaListEntry_completedAt &&
        G__typename == other.G__typename &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListEntryMutationData_SaveMediaListEntry_completedAt')
          ..add('G__typename', G__typename)
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder
    implements
        Builder<GMediaListEntryMutationData_SaveMediaListEntry_completedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder> {
  _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder() {
    GMediaListEntryMutationData_SaveMediaListEntry_completedAt
        ._initializeBuilder(this);
  }

  GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _year = $v.year;
      _month = $v.month;
      _day = $v.day;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListEntryMutationData_SaveMediaListEntry_completedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt;
  }

  @override
  void update(
      void Function(
              GMediaListEntryMutationData_SaveMediaListEntry_completedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_completedAt build() =>
      _build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt _build() {
    final _$result = _$v ??
        new _$GMediaListEntryMutationData_SaveMediaListEntry_completedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListEntryMutationData_SaveMediaListEntry_completedAt',
                'G__typename'),
            year: year,
            month: month,
            day: day);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_media
    extends GMediaListEntryMutationData_SaveMediaListEntry_media {
  @override
  final String G__typename;
  @override
  final GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry?
      mediaListEntry;

  factory _$GMediaListEntryMutationData_SaveMediaListEntry_media(
          [void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder)?
              updates]) =>
      (new GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder()
            ..update(updates))
          ._build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media._(
      {required this.G__typename, this.mediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaListEntryMutationData_SaveMediaListEntry_media', 'G__typename');
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media rebuild(
          void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder toBuilder() =>
      new GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryMutationData_SaveMediaListEntry_media &&
        G__typename == other.G__typename &&
        mediaListEntry == other.mediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, mediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListEntryMutationData_SaveMediaListEntry_media')
          ..add('G__typename', G__typename)
          ..add('mediaListEntry', mediaListEntry))
        .toString();
  }
}

class GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder
    implements
        Builder<GMediaListEntryMutationData_SaveMediaListEntry_media,
            GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder> {
  _$GMediaListEntryMutationData_SaveMediaListEntry_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder?
      _mediaListEntry;
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder
      get mediaListEntry => _$this._mediaListEntry ??=
          new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder();
  set mediaListEntry(
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder?
              mediaListEntry) =>
      _$this._mediaListEntry = mediaListEntry;

  GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder() {
    GMediaListEntryMutationData_SaveMediaListEntry_media._initializeBuilder(
        this);
  }

  GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mediaListEntry = $v.mediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListEntryMutationData_SaveMediaListEntry_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryMutationData_SaveMediaListEntry_media;
  }

  @override
  void update(
      void Function(
              GMediaListEntryMutationData_SaveMediaListEntry_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media build() => _build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media _build() {
    _$GMediaListEntryMutationData_SaveMediaListEntry_media _$result;
    try {
      _$result = _$v ??
          new _$GMediaListEntryMutationData_SaveMediaListEntry_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListEntryMutationData_SaveMediaListEntry_media',
                  'G__typename'),
              mediaListEntry: _mediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaListEntry';
        _mediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListEntryMutationData_SaveMediaListEntry_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
    extends GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry {
  @override
  final String G__typename;
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
  @override
  final int? repeat;
  @override
  final int? priority;
  @override
  final bool? private;
  @override
  final String? notes;
  @override
  final GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt?
      startedAt;
  @override
  final GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt?
      completedAt;

  factory _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry(
          [void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder)?
              updates]) =>
      (new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry._(
      {required this.G__typename,
      required this.userId,
      this.status,
      this.score,
      this.progress,
      this.progressVolumes,
      this.repeat,
      this.priority,
      this.private,
      this.notes,
      this.startedAt,
      this.completedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId,
        r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry',
        'userId');
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry rebuild(
          void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder
      toBuilder() =>
          new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        status == other.status &&
        score == other.score &&
        progress == other.progress &&
        progressVolumes == other.progressVolumes &&
        repeat == other.repeat &&
        priority == other.priority &&
        private == other.private &&
        notes == other.notes &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, progressVolumes.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('status', status)
          ..add('score', score)
          ..add('progress', progress)
          ..add('progressVolumes', progressVolumes)
          ..add('repeat', repeat)
          ..add('priority', priority)
          ..add('private', private)
          ..add('notes', notes)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder
    implements
        Builder<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry,
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder> {
  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

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

  int? _repeat;
  int? get repeat => _$this._repeat;
  set repeat(int? repeat) => _$this._repeat = repeat;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder?
      _startedAt;
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder
      get startedAt => _$this._startedAt ??=
          new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder();
  set startedAt(
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder?
              startedAt) =>
      _$this._startedAt = startedAt;

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder?
      _completedAt;
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder
      get completedAt => _$this._completedAt ??=
          new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder();
  set completedAt(
          GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder?
              completedAt) =>
      _$this._completedAt = completedAt;

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder() {
    GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
        ._initializeBuilder(this);
  }

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _status = $v.status;
      _score = $v.score;
      _progress = $v.progress;
      _progressVolumes = $v.progressVolumes;
      _repeat = $v.repeat;
      _priority = $v.priority;
      _private = $v.private;
      _notes = $v.notes;
      _startedAt = $v.startedAt?.toBuilder();
      _completedAt = $v.completedAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry;
  }

  @override
  void update(
      void Function(
              GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry build() =>
      _build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
      _build() {
    _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
        _$result;
    try {
      _$result = _$v ??
          new _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry
                  ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry',
                  'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId,
                  r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry',
                  'userId'),
              status: status,
              score: score,
              progress: progress,
              progressVolumes: progressVolumes,
              repeat: repeat,
              priority: priority,
              private: private,
              notes: notes,
              startedAt: _startedAt?.build(),
              completedAt: _completedAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startedAt';
        _startedAt?.build();
        _$failedField = 'completedAt';
        _completedAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
    extends GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt {
  @override
  final String G__typename;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt(
          [void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder)?
              updates]) =>
      (new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder()
            ..update(updates))
          ._build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt._(
      {required this.G__typename, this.year, this.month, this.day})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt',
        'G__typename');
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
      rebuild(
              void Function(
                      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder
      toBuilder() =>
          new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt &&
        G__typename == other.G__typename &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt')
          ..add('G__typename', G__typename)
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder
    implements
        Builder<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder> {
  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder() {
    GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
        ._initializeBuilder(this);
  }

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _year = $v.year;
      _month = $v.month;
      _day = $v.day;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt;
  }

  @override
  void update(
      void Function(
              GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
      build() => _build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
      _build() {
    final _$result = _$v ??
        new _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_startedAt',
                'G__typename'),
            year: year,
            month: month,
            day: day);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
    extends GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt {
  @override
  final String G__typename;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt(
          [void Function(
                  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder)?
              updates]) =>
      (new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder()
            ..update(updates))
          ._build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt._(
      {required this.G__typename, this.year, this.month, this.day})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt',
        'G__typename');
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
      rebuild(
              void Function(
                      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder
      toBuilder() =>
          new GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt &&
        G__typename == other.G__typename &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt')
          ..add('G__typename', G__typename)
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder
    implements
        Builder<
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt,
            GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder> {
  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder() {
    GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
        ._initializeBuilder(this);
  }

  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _year = $v.year;
      _month = $v.month;
      _day = $v.day;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt;
  }

  @override
  void update(
      void Function(
              GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
      build() => _build();

  _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
      _build() {
    final _$result = _$v ??
        new _$GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListEntryMutationData_SaveMediaListEntry_media_mediaListEntry_completedAt',
                'G__typename'),
            year: year,
            month: month,
            day: day);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
