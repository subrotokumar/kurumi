// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CharacterDetailQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharacterDetailQueryData> _$gCharacterDetailQueryDataSerializer =
    new _$GCharacterDetailQueryDataSerializer();
Serializer<GCharacterDetailQueryData_Character>
    _$gCharacterDetailQueryDataCharacterSerializer =
    new _$GCharacterDetailQueryData_CharacterSerializer();
Serializer<GCharacterDetailQueryData_Character_name>
    _$gCharacterDetailQueryDataCharacterNameSerializer =
    new _$GCharacterDetailQueryData_Character_nameSerializer();
Serializer<GCharacterDetailQueryData_Character_image>
    _$gCharacterDetailQueryDataCharacterImageSerializer =
    new _$GCharacterDetailQueryData_Character_imageSerializer();
Serializer<GCharacterDetailQueryData_Character_dateOfBirth>
    _$gCharacterDetailQueryDataCharacterDateOfBirthSerializer =
    new _$GCharacterDetailQueryData_Character_dateOfBirthSerializer();
Serializer<GCharacterDetailQueryData_Character_media>
    _$gCharacterDetailQueryDataCharacterMediaSerializer =
    new _$GCharacterDetailQueryData_Character_mediaSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges>
    _$gCharacterDetailQueryDataCharacterMediaEdgesSerializer =
    new _$GCharacterDetailQueryData_Character_media_edgesSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_node>
    _$gCharacterDetailQueryDataCharacterMediaEdgesNodeSerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_nodeSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_node_title>
    _$gCharacterDetailQueryDataCharacterMediaEdgesNodeTitleSerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_node_titleSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_node_coverImage>
    _$gCharacterDetailQueryDataCharacterMediaEdgesNodeCoverImageSerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_node_coverImageSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_node_startDate>
    _$gCharacterDetailQueryDataCharacterMediaEdgesNodeStartDateSerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_node_startDateSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry>
    _$gCharacterDetailQueryDataCharacterMediaEdgesNodeMediaListEntrySerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntrySerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_voiceActors>
    _$gCharacterDetailQueryDataCharacterMediaEdgesVoiceActorsSerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_voiceActorsSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_voiceActors_name>
    _$gCharacterDetailQueryDataCharacterMediaEdgesVoiceActorsNameSerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_voiceActors_nameSerializer();
Serializer<GCharacterDetailQueryData_Character_media_edges_voiceActors_image>
    _$gCharacterDetailQueryDataCharacterMediaEdgesVoiceActorsImageSerializer =
    new _$GCharacterDetailQueryData_Character_media_edges_voiceActors_imageSerializer();
Serializer<GCharacterDetailQueryData_Character_media_pageInfo>
    _$gCharacterDetailQueryDataCharacterMediaPageInfoSerializer =
    new _$GCharacterDetailQueryData_Character_media_pageInfoSerializer();

class _$GCharacterDetailQueryDataSerializer
    implements StructuredSerializer<GCharacterDetailQueryData> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData,
    _$GCharacterDetailQueryData
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterDetailQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Character;
    if (value != null) {
      result
        ..add('Character')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCharacterDetailQueryData_Character)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryDataBuilder();

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
        case 'Character':
          result.Character.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCharacterDetailQueryData_Character))!
              as GCharacterDetailQueryData_Character);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_CharacterSerializer
    implements StructuredSerializer<GCharacterDetailQueryData_Character> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character,
    _$GCharacterDetailQueryData_Character
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData_Character';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterDetailQueryData_Character object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'isFavourite',
      serializers.serialize(object.isFavourite,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCharacterDetailQueryData_Character_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCharacterDetailQueryData_Character_image)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.siteUrl;
    if (value != null) {
      result
        ..add('siteUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_dateOfBirth)));
    }
    value = object.bloodType;
    if (value != null) {
      result
        ..add('bloodType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCharacterDetailQueryData_Character_media)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryData_CharacterBuilder();

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
          result.name.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCharacterDetailQueryData_Character_name))!
              as GCharacterDetailQueryData_Character_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_image))!
              as GCharacterDetailQueryData_Character_image);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFavourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'siteUrl':
          result.siteUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favourites':
          result.favourites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_dateOfBirth))!
              as GCharacterDetailQueryData_Character_dateOfBirth);
          break;
        case 'bloodType':
          result.bloodType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media))!
              as GCharacterDetailQueryData_Character_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_nameSerializer
    implements StructuredSerializer<GCharacterDetailQueryData_Character_name> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_name,
    _$GCharacterDetailQueryData_Character_name
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData_Character_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterDetailQueryData_Character_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.full;
    if (value != null) {
      result
        ..add('full')
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
  GCharacterDetailQueryData_Character_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryData_Character_nameBuilder();

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
        case 'full':
          result.full = serializers.deserialize(value,
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

class _$GCharacterDetailQueryData_Character_imageSerializer
    implements StructuredSerializer<GCharacterDetailQueryData_Character_image> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_image,
    _$GCharacterDetailQueryData_Character_image
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData_Character_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterDetailQueryData_Character_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryData_Character_imageBuilder();

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
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_dateOfBirthSerializer
    implements
        StructuredSerializer<GCharacterDetailQueryData_Character_dateOfBirth> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_dateOfBirth,
    _$GCharacterDetailQueryData_Character_dateOfBirth
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData_Character_dateOfBirth';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_dateOfBirth object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_dateOfBirth deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryData_Character_dateOfBirthBuilder();

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
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_mediaSerializer
    implements StructuredSerializer<GCharacterDetailQueryData_Character_media> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media,
    _$GCharacterDetailQueryData_Character_media
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData_Character_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterDetailQueryData_Character_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GCharacterDetailQueryData_Character_media_edges)
            ])));
    }
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_pageInfo)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryData_Character_mediaBuilder();

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
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GCharacterDetailQueryData_Character_media_edges)
              ]))! as BuiltList<Object?>);
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_pageInfo))!
              as GCharacterDetailQueryData_Character_media_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edgesSerializer
    implements
        StructuredSerializer<GCharacterDetailQueryData_Character_media_edges> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges,
    _$GCharacterDetailQueryData_Character_media_edges
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData_Character_media_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_edges_node)));
    }
    value = object.relationType;
    if (value != null) {
      result
        ..add('relationType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaRelation)));
    }
    value = object.characterRole;
    if (value != null) {
      result
        ..add('characterRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GCharacterRole)));
    }
    value = object.staffRole;
    if (value != null) {
      result
        ..add('staffRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.voiceActors;
    if (value != null) {
      result
        ..add('voiceActors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GCharacterDetailQueryData_Character_media_edges_voiceActors)
            ])));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDetailQueryData_Character_media_edgesBuilder();

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
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_edges_node))!
              as GCharacterDetailQueryData_Character_media_edges_node);
          break;
        case 'relationType':
          result.relationType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaRelation))
              as _i2.GMediaRelation?;
          break;
        case 'characterRole':
          result.characterRole = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GCharacterRole))
              as _i2.GCharacterRole?;
          break;
        case 'staffRole':
          result.staffRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'voiceActors':
          result.voiceActors.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GCharacterDetailQueryData_Character_media_edges_voiceActors)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_nodeSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_node> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_node,
    _$GCharacterDetailQueryData_Character_media_edges_node
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_edges_node_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_edges_node_coverImage)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaType)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaFormat)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_edges_node_startDate)));
    }
    value = object.averageScore;
    if (value != null) {
      result
        ..add('averageScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mediaListEntry;
    if (value != null) {
      result
        ..add('mediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_nodeBuilder();

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
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_edges_node_title))!
              as GCharacterDetailQueryData_Character_media_edges_node_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_edges_node_coverImage))!
              as GCharacterDetailQueryData_Character_media_edges_node_coverImage);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GMediaType)) as _i2.GMediaType?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaFormat))
              as _i2.GMediaFormat?;
          break;
        case 'startDate':
          result.startDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_edges_node_startDate))!
              as GCharacterDetailQueryData_Character_media_edges_node_startDate);
          break;
        case 'averageScore':
          result.averageScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'favourites':
          result.favourites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mediaListEntry':
          result.mediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry))!
              as GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node_titleSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_node_title> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_node_title,
    _$GCharacterDetailQueryData_Character_media_edges_node_title
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_node_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_node_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  GCharacterDetailQueryData_Character_media_edges_node_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_node_titleBuilder();

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
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node_coverImageSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_node_coverImage> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_node_coverImage,
    _$GCharacterDetailQueryData_Character_media_edges_node_coverImage
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_node_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_node_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder();

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
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node_startDateSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_node_startDate> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_node_startDate,
    _$GCharacterDetailQueryData_Character_media_edges_node_startDate
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_node_startDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_node_startDate object,
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
  GCharacterDetailQueryData_Character_media_edges_node_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder();

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

class _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntrySerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry,
    _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaListStatus)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaListStatus))
              as _i2.GMediaListStatus?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_voiceActorsSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_voiceActors> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_voiceActors,
    _$GCharacterDetailQueryData_Character_media_edges_voiceActors
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_voiceActors';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_voiceActors object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_edges_voiceActors_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterDetailQueryData_Character_media_edges_voiceActors_image)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GStaffLanguage)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder();

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
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_edges_voiceActors_name))!
              as GCharacterDetailQueryData_Character_media_edges_voiceActors_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterDetailQueryData_Character_media_edges_voiceActors_image))!
              as GCharacterDetailQueryData_Character_media_edges_voiceActors_image);
          break;
        case 'language':
          result.language = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GStaffLanguage))
              as _i2.GStaffLanguage?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_voiceActors_nameSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_voiceActors_name> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_voiceActors_name,
    _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_voiceActors_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_voiceActors_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.full;
    if (value != null) {
      result
        ..add('full')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder();

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
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_voiceActors_imageSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_edges_voiceActors_image> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_edges_voiceActors_image,
    _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image
  ];
  @override
  final String wireName =
      'GCharacterDetailQueryData_Character_media_edges_voiceActors_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_edges_voiceActors_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder();

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
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData_Character_media_pageInfoSerializer
    implements
        StructuredSerializer<
            GCharacterDetailQueryData_Character_media_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GCharacterDetailQueryData_Character_media_pageInfo,
    _$GCharacterDetailQueryData_Character_media_pageInfo
  ];
  @override
  final String wireName = 'GCharacterDetailQueryData_Character_media_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterDetailQueryData_Character_media_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastPage;
    if (value != null) {
      result
        ..add('lastPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GCharacterDetailQueryData_Character_media_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterDetailQueryData_Character_media_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lastPage':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterDetailQueryData extends GCharacterDetailQueryData {
  @override
  final String G__typename;
  @override
  final GCharacterDetailQueryData_Character? Character;

  factory _$GCharacterDetailQueryData(
          [void Function(GCharacterDetailQueryDataBuilder)? updates]) =>
      (new GCharacterDetailQueryDataBuilder()..update(updates))._build();

  _$GCharacterDetailQueryData._({required this.G__typename, this.Character})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterDetailQueryData', 'G__typename');
  }

  @override
  GCharacterDetailQueryData rebuild(
          void Function(GCharacterDetailQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryDataBuilder toBuilder() =>
      new GCharacterDetailQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData &&
        G__typename == other.G__typename &&
        Character == other.Character;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Character.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterDetailQueryData')
          ..add('G__typename', G__typename)
          ..add('Character', Character))
        .toString();
  }
}

class GCharacterDetailQueryDataBuilder
    implements
        Builder<GCharacterDetailQueryData, GCharacterDetailQueryDataBuilder> {
  _$GCharacterDetailQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCharacterDetailQueryData_CharacterBuilder? _Character;
  GCharacterDetailQueryData_CharacterBuilder get Character =>
      _$this._Character ??= new GCharacterDetailQueryData_CharacterBuilder();
  set Character(GCharacterDetailQueryData_CharacterBuilder? Character) =>
      _$this._Character = Character;

  GCharacterDetailQueryDataBuilder() {
    GCharacterDetailQueryData._initializeBuilder(this);
  }

  GCharacterDetailQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Character = $v.Character?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData;
  }

  @override
  void update(void Function(GCharacterDetailQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData build() => _build();

  _$GCharacterDetailQueryData _build() {
    _$GCharacterDetailQueryData _$result;
    try {
      _$result = _$v ??
          new _$GCharacterDetailQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCharacterDetailQueryData', 'G__typename'),
              Character: _Character?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Character';
        _Character?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterDetailQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character
    extends GCharacterDetailQueryData_Character {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharacterDetailQueryData_Character_name? name;
  @override
  final GCharacterDetailQueryData_Character_image? image;
  @override
  final String? description;
  @override
  final bool isFavourite;
  @override
  final String? siteUrl;
  @override
  final int? favourites;
  @override
  final String? gender;
  @override
  final String? age;
  @override
  final GCharacterDetailQueryData_Character_dateOfBirth? dateOfBirth;
  @override
  final String? bloodType;
  @override
  final GCharacterDetailQueryData_Character_media? media;

  factory _$GCharacterDetailQueryData_Character(
          [void Function(GCharacterDetailQueryData_CharacterBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_CharacterBuilder()..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.image,
      this.description,
      required this.isFavourite,
      this.siteUrl,
      this.favourites,
      this.gender,
      this.age,
      this.dateOfBirth,
      this.bloodType,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterDetailQueryData_Character', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCharacterDetailQueryData_Character', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isFavourite, r'GCharacterDetailQueryData_Character', 'isFavourite');
  }

  @override
  GCharacterDetailQueryData_Character rebuild(
          void Function(GCharacterDetailQueryData_CharacterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_CharacterBuilder toBuilder() =>
      new GCharacterDetailQueryData_CharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        description == other.description &&
        isFavourite == other.isFavourite &&
        siteUrl == other.siteUrl &&
        favourites == other.favourites &&
        gender == other.gender &&
        age == other.age &&
        dateOfBirth == other.dateOfBirth &&
        bloodType == other.bloodType &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isFavourite.hashCode);
    _$hash = $jc(_$hash, siteUrl.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, bloodType.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterDetailQueryData_Character')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('description', description)
          ..add('isFavourite', isFavourite)
          ..add('siteUrl', siteUrl)
          ..add('favourites', favourites)
          ..add('gender', gender)
          ..add('age', age)
          ..add('dateOfBirth', dateOfBirth)
          ..add('bloodType', bloodType)
          ..add('media', media))
        .toString();
  }
}

class GCharacterDetailQueryData_CharacterBuilder
    implements
        Builder<GCharacterDetailQueryData_Character,
            GCharacterDetailQueryData_CharacterBuilder> {
  _$GCharacterDetailQueryData_Character? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharacterDetailQueryData_Character_nameBuilder? _name;
  GCharacterDetailQueryData_Character_nameBuilder get name =>
      _$this._name ??= new GCharacterDetailQueryData_Character_nameBuilder();
  set name(GCharacterDetailQueryData_Character_nameBuilder? name) =>
      _$this._name = name;

  GCharacterDetailQueryData_Character_imageBuilder? _image;
  GCharacterDetailQueryData_Character_imageBuilder get image =>
      _$this._image ??= new GCharacterDetailQueryData_Character_imageBuilder();
  set image(GCharacterDetailQueryData_Character_imageBuilder? image) =>
      _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  String? _siteUrl;
  String? get siteUrl => _$this._siteUrl;
  set siteUrl(String? siteUrl) => _$this._siteUrl = siteUrl;

  int? _favourites;
  int? get favourites => _$this._favourites;
  set favourites(int? favourites) => _$this._favourites = favourites;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _age;
  String? get age => _$this._age;
  set age(String? age) => _$this._age = age;

  GCharacterDetailQueryData_Character_dateOfBirthBuilder? _dateOfBirth;
  GCharacterDetailQueryData_Character_dateOfBirthBuilder get dateOfBirth =>
      _$this._dateOfBirth ??=
          new GCharacterDetailQueryData_Character_dateOfBirthBuilder();
  set dateOfBirth(
          GCharacterDetailQueryData_Character_dateOfBirthBuilder?
              dateOfBirth) =>
      _$this._dateOfBirth = dateOfBirth;

  String? _bloodType;
  String? get bloodType => _$this._bloodType;
  set bloodType(String? bloodType) => _$this._bloodType = bloodType;

  GCharacterDetailQueryData_Character_mediaBuilder? _media;
  GCharacterDetailQueryData_Character_mediaBuilder get media =>
      _$this._media ??= new GCharacterDetailQueryData_Character_mediaBuilder();
  set media(GCharacterDetailQueryData_Character_mediaBuilder? media) =>
      _$this._media = media;

  GCharacterDetailQueryData_CharacterBuilder() {
    GCharacterDetailQueryData_Character._initializeBuilder(this);
  }

  GCharacterDetailQueryData_CharacterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _description = $v.description;
      _isFavourite = $v.isFavourite;
      _siteUrl = $v.siteUrl;
      _favourites = $v.favourites;
      _gender = $v.gender;
      _age = $v.age;
      _dateOfBirth = $v.dateOfBirth?.toBuilder();
      _bloodType = $v.bloodType;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character;
  }

  @override
  void update(
      void Function(GCharacterDetailQueryData_CharacterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character build() => _build();

  _$GCharacterDetailQueryData_Character _build() {
    _$GCharacterDetailQueryData_Character _$result;
    try {
      _$result = _$v ??
          new _$GCharacterDetailQueryData_Character._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCharacterDetailQueryData_Character', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCharacterDetailQueryData_Character', 'id'),
              name: _name?.build(),
              image: _image?.build(),
              description: description,
              isFavourite: BuiltValueNullFieldError.checkNotNull(isFavourite,
                  r'GCharacterDetailQueryData_Character', 'isFavourite'),
              siteUrl: siteUrl,
              favourites: favourites,
              gender: gender,
              age: age,
              dateOfBirth: _dateOfBirth?.build(),
              bloodType: bloodType,
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();

        _$failedField = 'dateOfBirth';
        _dateOfBirth?.build();

        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterDetailQueryData_Character',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_name
    extends GCharacterDetailQueryData_Character_name {
  @override
  final String G__typename;
  @override
  final String? full;
  @override
  final String? userPreferred;

  factory _$GCharacterDetailQueryData_Character_name(
          [void Function(GCharacterDetailQueryData_Character_nameBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_nameBuilder()..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_name._(
      {required this.G__typename, this.full, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterDetailQueryData_Character_name', 'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_name rebuild(
          void Function(GCharacterDetailQueryData_Character_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_nameBuilder toBuilder() =>
      new GCharacterDetailQueryData_Character_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character_name &&
        G__typename == other.G__typename &&
        full == other.full &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, full.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_name')
          ..add('G__typename', G__typename)
          ..add('full', full)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_nameBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_name,
            GCharacterDetailQueryData_Character_nameBuilder> {
  _$GCharacterDetailQueryData_Character_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharacterDetailQueryData_Character_nameBuilder() {
    GCharacterDetailQueryData_Character_name._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _full = $v.full;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_name;
  }

  @override
  void update(
      void Function(GCharacterDetailQueryData_Character_nameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_name build() => _build();

  _$GCharacterDetailQueryData_Character_name _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCharacterDetailQueryData_Character_name', 'G__typename'),
            full: full,
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_image
    extends GCharacterDetailQueryData_Character_image {
  @override
  final String G__typename;
  @override
  final String? large;
  @override
  final String? medium;

  factory _$GCharacterDetailQueryData_Character_image(
          [void Function(GCharacterDetailQueryData_Character_imageBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_imageBuilder()..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_image._(
      {required this.G__typename, this.large, this.medium})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterDetailQueryData_Character_image', 'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_image rebuild(
          void Function(GCharacterDetailQueryData_Character_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_imageBuilder toBuilder() =>
      new GCharacterDetailQueryData_Character_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character_image &&
        G__typename == other.G__typename &&
        large == other.large &&
        medium == other.medium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_image')
          ..add('G__typename', G__typename)
          ..add('large', large)
          ..add('medium', medium))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_imageBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_image,
            GCharacterDetailQueryData_Character_imageBuilder> {
  _$GCharacterDetailQueryData_Character_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  GCharacterDetailQueryData_Character_imageBuilder() {
    GCharacterDetailQueryData_Character_image._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _medium = $v.medium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_image;
  }

  @override
  void update(
      void Function(GCharacterDetailQueryData_Character_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_image build() => _build();

  _$GCharacterDetailQueryData_Character_image _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCharacterDetailQueryData_Character_image', 'G__typename'),
            large: large,
            medium: medium);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_dateOfBirth
    extends GCharacterDetailQueryData_Character_dateOfBirth {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GCharacterDetailQueryData_Character_dateOfBirth(
          [void Function(
                  GCharacterDetailQueryData_Character_dateOfBirthBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_dateOfBirthBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_dateOfBirth._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterDetailQueryData_Character_dateOfBirth', 'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_dateOfBirth rebuild(
          void Function(GCharacterDetailQueryData_Character_dateOfBirthBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_dateOfBirthBuilder toBuilder() =>
      new GCharacterDetailQueryData_Character_dateOfBirthBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character_dateOfBirth &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_dateOfBirth')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_dateOfBirthBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_dateOfBirth,
            GCharacterDetailQueryData_Character_dateOfBirthBuilder> {
  _$GCharacterDetailQueryData_Character_dateOfBirth? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GCharacterDetailQueryData_Character_dateOfBirthBuilder() {
    GCharacterDetailQueryData_Character_dateOfBirth._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_dateOfBirthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character_dateOfBirth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_dateOfBirth;
  }

  @override
  void update(
      void Function(GCharacterDetailQueryData_Character_dateOfBirthBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_dateOfBirth build() => _build();

  _$GCharacterDetailQueryData_Character_dateOfBirth _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_dateOfBirth._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_dateOfBirth',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media
    extends GCharacterDetailQueryData_Character_media {
  @override
  final String G__typename;
  @override
  final BuiltList<GCharacterDetailQueryData_Character_media_edges?>? edges;
  @override
  final GCharacterDetailQueryData_Character_media_pageInfo? pageInfo;

  factory _$GCharacterDetailQueryData_Character_media(
          [void Function(GCharacterDetailQueryData_Character_mediaBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_mediaBuilder()..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media._(
      {required this.G__typename, this.edges, this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterDetailQueryData_Character_media', 'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media rebuild(
          void Function(GCharacterDetailQueryData_Character_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_mediaBuilder toBuilder() =>
      new GCharacterDetailQueryData_Character_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character_media &&
        G__typename == other.G__typename &&
        edges == other.edges &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media')
          ..add('G__typename', G__typename)
          ..add('edges', edges)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_mediaBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media,
            GCharacterDetailQueryData_Character_mediaBuilder> {
  _$GCharacterDetailQueryData_Character_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GCharacterDetailQueryData_Character_media_edges?>? _edges;
  ListBuilder<GCharacterDetailQueryData_Character_media_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GCharacterDetailQueryData_Character_media_edges?>();
  set edges(
          ListBuilder<GCharacterDetailQueryData_Character_media_edges?>?
              edges) =>
      _$this._edges = edges;

  GCharacterDetailQueryData_Character_media_pageInfoBuilder? _pageInfo;
  GCharacterDetailQueryData_Character_media_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GCharacterDetailQueryData_Character_media_pageInfoBuilder();
  set pageInfo(
          GCharacterDetailQueryData_Character_media_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  GCharacterDetailQueryData_Character_mediaBuilder() {
    GCharacterDetailQueryData_Character_media._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _pageInfo = $v.pageInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_media;
  }

  @override
  void update(
      void Function(GCharacterDetailQueryData_Character_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media build() => _build();

  _$GCharacterDetailQueryData_Character_media _build() {
    _$GCharacterDetailQueryData_Character_media _$result;
    try {
      _$result = _$v ??
          new _$GCharacterDetailQueryData_Character_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCharacterDetailQueryData_Character_media', 'G__typename'),
              edges: _edges?.build(),
              pageInfo: _pageInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
        _$failedField = 'pageInfo';
        _pageInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterDetailQueryData_Character_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges
    extends GCharacterDetailQueryData_Character_media_edges {
  @override
  final String G__typename;
  @override
  final GCharacterDetailQueryData_Character_media_edges_node? node;
  @override
  final _i2.GMediaRelation? relationType;
  @override
  final _i2.GCharacterRole? characterRole;
  @override
  final String? staffRole;
  @override
  final BuiltList<GCharacterDetailQueryData_Character_media_edges_voiceActors?>?
      voiceActors;

  factory _$GCharacterDetailQueryData_Character_media_edges(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edgesBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edgesBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges._(
      {required this.G__typename,
      this.node,
      this.relationType,
      this.characterRole,
      this.staffRole,
      this.voiceActors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterDetailQueryData_Character_media_edges', 'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges rebuild(
          void Function(GCharacterDetailQueryData_Character_media_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edgesBuilder toBuilder() =>
      new GCharacterDetailQueryData_Character_media_edgesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character_media_edges &&
        G__typename == other.G__typename &&
        node == other.node &&
        relationType == other.relationType &&
        characterRole == other.characterRole &&
        staffRole == other.staffRole &&
        voiceActors == other.voiceActors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, characterRole.hashCode);
    _$hash = $jc(_$hash, staffRole.hashCode);
    _$hash = $jc(_$hash, voiceActors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges')
          ..add('G__typename', G__typename)
          ..add('node', node)
          ..add('relationType', relationType)
          ..add('characterRole', characterRole)
          ..add('staffRole', staffRole)
          ..add('voiceActors', voiceActors))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edgesBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media_edges,
            GCharacterDetailQueryData_Character_media_edgesBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCharacterDetailQueryData_Character_media_edges_nodeBuilder? _node;
  GCharacterDetailQueryData_Character_media_edges_nodeBuilder get node =>
      _$this._node ??=
          new GCharacterDetailQueryData_Character_media_edges_nodeBuilder();
  set node(GCharacterDetailQueryData_Character_media_edges_nodeBuilder? node) =>
      _$this._node = node;

  _i2.GMediaRelation? _relationType;
  _i2.GMediaRelation? get relationType => _$this._relationType;
  set relationType(_i2.GMediaRelation? relationType) =>
      _$this._relationType = relationType;

  _i2.GCharacterRole? _characterRole;
  _i2.GCharacterRole? get characterRole => _$this._characterRole;
  set characterRole(_i2.GCharacterRole? characterRole) =>
      _$this._characterRole = characterRole;

  String? _staffRole;
  String? get staffRole => _$this._staffRole;
  set staffRole(String? staffRole) => _$this._staffRole = staffRole;

  ListBuilder<GCharacterDetailQueryData_Character_media_edges_voiceActors?>?
      _voiceActors;
  ListBuilder<GCharacterDetailQueryData_Character_media_edges_voiceActors?>
      get voiceActors => _$this._voiceActors ??= new ListBuilder<
          GCharacterDetailQueryData_Character_media_edges_voiceActors?>();
  set voiceActors(
          ListBuilder<
                  GCharacterDetailQueryData_Character_media_edges_voiceActors?>?
              voiceActors) =>
      _$this._voiceActors = voiceActors;

  GCharacterDetailQueryData_Character_media_edgesBuilder() {
    GCharacterDetailQueryData_Character_media_edges._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _relationType = $v.relationType;
      _characterRole = $v.characterRole;
      _staffRole = $v.staffRole;
      _voiceActors = $v.voiceActors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character_media_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_media_edges;
  }

  @override
  void update(
      void Function(GCharacterDetailQueryData_Character_media_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges build() => _build();

  _$GCharacterDetailQueryData_Character_media_edges _build() {
    _$GCharacterDetailQueryData_Character_media_edges _$result;
    try {
      _$result = _$v ??
          new _$GCharacterDetailQueryData_Character_media_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharacterDetailQueryData_Character_media_edges',
                  'G__typename'),
              node: _node?.build(),
              relationType: relationType,
              characterRole: characterRole,
              staffRole: staffRole,
              voiceActors: _voiceActors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();

        _$failedField = 'voiceActors';
        _voiceActors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterDetailQueryData_Character_media_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node
    extends GCharacterDetailQueryData_Character_media_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharacterDetailQueryData_Character_media_edges_node_title? title;
  @override
  final GCharacterDetailQueryData_Character_media_edges_node_coverImage?
      coverImage;
  @override
  final _i2.GMediaType? type;
  @override
  final _i2.GMediaFormat? format;
  @override
  final GCharacterDetailQueryData_Character_media_edges_node_startDate?
      startDate;
  @override
  final int? averageScore;
  @override
  final int? popularity;
  @override
  final int? favourites;
  @override
  final GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry?
      mediaListEntry;

  factory _$GCharacterDetailQueryData_Character_media_edges_node(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_nodeBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_node._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage,
      this.type,
      this.format,
      this.startDate,
      this.averageScore,
      this.popularity,
      this.favourites,
      this.mediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCharacterDetailQueryData_Character_media_edges_node', 'id');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_nodeBuilder toBuilder() =>
      new GCharacterDetailQueryData_Character_media_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character_media_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        type == other.type &&
        format == other.format &&
        startDate == other.startDate &&
        averageScore == other.averageScore &&
        popularity == other.popularity &&
        favourites == other.favourites &&
        mediaListEntry == other.mediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, averageScore.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jc(_$hash, mediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('type', type)
          ..add('format', format)
          ..add('startDate', startDate)
          ..add('averageScore', averageScore)
          ..add('popularity', popularity)
          ..add('favourites', favourites)
          ..add('mediaListEntry', mediaListEntry))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_nodeBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media_edges_node,
            GCharacterDetailQueryData_Character_media_edges_nodeBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharacterDetailQueryData_Character_media_edges_node_titleBuilder? _title;
  GCharacterDetailQueryData_Character_media_edges_node_titleBuilder get title =>
      _$this._title ??=
          new GCharacterDetailQueryData_Character_media_edges_node_titleBuilder();
  set title(
          GCharacterDetailQueryData_Character_media_edges_node_titleBuilder?
              title) =>
      _$this._title = title;

  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder?
      _coverImage;
  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder();
  set coverImage(
          GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  _i2.GMediaType? _type;
  _i2.GMediaType? get type => _$this._type;
  set type(_i2.GMediaType? type) => _$this._type = type;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder?
      _startDate;
  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder
      get startDate => _$this._startDate ??=
          new GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder();
  set startDate(
          GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder?
              startDate) =>
      _$this._startDate = startDate;

  int? _averageScore;
  int? get averageScore => _$this._averageScore;
  set averageScore(int? averageScore) => _$this._averageScore = averageScore;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  int? _favourites;
  int? get favourites => _$this._favourites;
  set favourites(int? favourites) => _$this._favourites = favourites;

  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder?
      _mediaListEntry;
  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder
      get mediaListEntry => _$this._mediaListEntry ??=
          new GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder();
  set mediaListEntry(
          GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder?
              mediaListEntry) =>
      _$this._mediaListEntry = mediaListEntry;

  GCharacterDetailQueryData_Character_media_edges_nodeBuilder() {
    GCharacterDetailQueryData_Character_media_edges_node._initializeBuilder(
        this);
  }

  GCharacterDetailQueryData_Character_media_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _type = $v.type;
      _format = $v.format;
      _startDate = $v.startDate?.toBuilder();
      _averageScore = $v.averageScore;
      _popularity = $v.popularity;
      _favourites = $v.favourites;
      _mediaListEntry = $v.mediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character_media_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_media_edges_node;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node build() => _build();

  _$GCharacterDetailQueryData_Character_media_edges_node _build() {
    _$GCharacterDetailQueryData_Character_media_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GCharacterDetailQueryData_Character_media_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharacterDetailQueryData_Character_media_edges_node',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GCharacterDetailQueryData_Character_media_edges_node',
                  'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              type: type,
              format: format,
              startDate: _startDate?.build(),
              averageScore: averageScore,
              popularity: popularity,
              favourites: favourites,
              mediaListEntry: _mediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();

        _$failedField = 'startDate';
        _startDate?.build();

        _$failedField = 'mediaListEntry';
        _mediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterDetailQueryData_Character_media_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node_title
    extends GCharacterDetailQueryData_Character_media_edges_node_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GCharacterDetailQueryData_Character_media_edges_node_title(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_titleBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_node_titleBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_node_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_node_title',
        'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_title rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_node_titleBuilder
      toBuilder() =>
          new GCharacterDetailQueryData_Character_media_edges_node_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterDetailQueryData_Character_media_edges_node_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges_node_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_node_titleBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media_edges_node_title,
            GCharacterDetailQueryData_Character_media_edges_node_titleBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_node_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharacterDetailQueryData_Character_media_edges_node_titleBuilder() {
    GCharacterDetailQueryData_Character_media_edges_node_title
        ._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edges_node_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterDetailQueryData_Character_media_edges_node_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_media_edges_node_title;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_node_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_title build() =>
      _build();

  _$GCharacterDetailQueryData_Character_media_edges_node_title _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_media_edges_node_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_media_edges_node_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node_coverImage
    extends GCharacterDetailQueryData_Character_media_edges_node_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCharacterDetailQueryData_Character_media_edges_node_coverImage(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_node_coverImage._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_node_coverImage',
        'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_coverImage rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder
      toBuilder() =>
          new GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterDetailQueryData_Character_media_edges_node_coverImage &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges_node_coverImage')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media_edges_node_coverImage,
            GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_node_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder() {
    GCharacterDetailQueryData_Character_media_edges_node_coverImage
        ._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterDetailQueryData_Character_media_edges_node_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterDetailQueryData_Character_media_edges_node_coverImage;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_node_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_coverImage build() =>
      _build();

  _$GCharacterDetailQueryData_Character_media_edges_node_coverImage _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_media_edges_node_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_media_edges_node_coverImage',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node_startDate
    extends GCharacterDetailQueryData_Character_media_edges_node_startDate {
  @override
  final String G__typename;
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$GCharacterDetailQueryData_Character_media_edges_node_startDate(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_node_startDate._(
      {required this.G__typename, this.year, this.month, this.day})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_node_startDate',
        'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_startDate rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder
      toBuilder() =>
          new GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterDetailQueryData_Character_media_edges_node_startDate &&
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
            r'GCharacterDetailQueryData_Character_media_edges_node_startDate')
          ..add('G__typename', G__typename)
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media_edges_node_startDate,
            GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_node_startDate? _$v;

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

  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder() {
    GCharacterDetailQueryData_Character_media_edges_node_startDate
        ._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder
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
      GCharacterDetailQueryData_Character_media_edges_node_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterDetailQueryData_Character_media_edges_node_startDate;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_node_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_startDate build() =>
      _build();

  _$GCharacterDetailQueryData_Character_media_edges_node_startDate _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_media_edges_node_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_media_edges_node_startDate',
                'G__typename'),
            year: year,
            month: month,
            day: day);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
    extends GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry {
  @override
  final String G__typename;
  @override
  final _i2.GMediaListStatus? status;

  factory _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry._(
      {required this.G__typename, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry',
        'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder
      toBuilder() =>
          new GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry &&
        G__typename == other.G__typename &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry')
          ..add('G__typename', G__typename)
          ..add('status', status))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder
    implements
        Builder<
            GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry,
            GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GMediaListStatus? _status;
  _i2.GMediaListStatus? get status => _$this._status;
  set status(_i2.GMediaListStatus? status) => _$this._status = status;

  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder() {
    GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
        ._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_node_mediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry build() =>
      _build();

  _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
      _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_media_edges_node_mediaListEntry',
                'G__typename'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_voiceActors
    extends GCharacterDetailQueryData_Character_media_edges_voiceActors {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharacterDetailQueryData_Character_media_edges_voiceActors_name? name;
  @override
  final GCharacterDetailQueryData_Character_media_edges_voiceActors_image?
      image;
  @override
  final _i2.GStaffLanguage? language;

  factory _$GCharacterDetailQueryData_Character_media_edges_voiceActors(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_voiceActors._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.image,
      this.language})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_voiceActors',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'GCharacterDetailQueryData_Character_media_edges_voiceActors', 'id');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder
      toBuilder() =>
          new GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterDetailQueryData_Character_media_edges_voiceActors &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges_voiceActors')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('language', language))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media_edges_voiceActors,
            GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_voiceActors? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder?
      _name;
  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder
      get name => _$this._name ??=
          new GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder();
  set name(
          GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder?
              name) =>
      _$this._name = name;

  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder?
      _image;
  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder
      get image => _$this._image ??=
          new GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder();
  set image(
          GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder?
              image) =>
      _$this._image = image;

  _i2.GStaffLanguage? _language;
  _i2.GStaffLanguage? get language => _$this._language;
  set language(_i2.GStaffLanguage? language) => _$this._language = language;

  GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder() {
    GCharacterDetailQueryData_Character_media_edges_voiceActors
        ._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterDetailQueryData_Character_media_edges_voiceActors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GCharacterDetailQueryData_Character_media_edges_voiceActors;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_voiceActorsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors build() =>
      _build();

  _$GCharacterDetailQueryData_Character_media_edges_voiceActors _build() {
    _$GCharacterDetailQueryData_Character_media_edges_voiceActors _$result;
    try {
      _$result = _$v ??
          new _$GCharacterDetailQueryData_Character_media_edges_voiceActors._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharacterDetailQueryData_Character_media_edges_voiceActors',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GCharacterDetailQueryData_Character_media_edges_voiceActors',
                  'id'),
              name: _name?.build(),
              image: _image?.build(),
              language: language);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterDetailQueryData_Character_media_edges_voiceActors',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name
    extends GCharacterDetailQueryData_Character_media_edges_voiceActors_name {
  @override
  final String G__typename;
  @override
  final String? full;

  factory _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name._(
      {required this.G__typename, this.full})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_voiceActors_name',
        'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_name rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder
      toBuilder() =>
          new GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterDetailQueryData_Character_media_edges_voiceActors_name &&
        G__typename == other.G__typename &&
        full == other.full;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, full.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges_voiceActors_name')
          ..add('G__typename', G__typename)
          ..add('full', full))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder
    implements
        Builder<
            GCharacterDetailQueryData_Character_media_edges_voiceActors_name,
            GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder() {
    GCharacterDetailQueryData_Character_media_edges_voiceActors_name
        ._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _full = $v.full;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterDetailQueryData_Character_media_edges_voiceActors_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_voiceActors_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_name build() =>
      _build();

  _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_media_edges_voiceActors_name
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_media_edges_voiceActors_name',
                'G__typename'),
            full: full);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image
    extends GCharacterDetailQueryData_Character_media_edges_voiceActors_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image(
          [void Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterDetailQueryData_Character_media_edges_voiceActors_image',
        'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_image rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder
      toBuilder() =>
          new GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterDetailQueryData_Character_media_edges_voiceActors_image &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_edges_voiceActors_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder
    implements
        Builder<
            GCharacterDetailQueryData_Character_media_edges_voiceActors_image,
            GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder> {
  _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder() {
    GCharacterDetailQueryData_Character_media_edges_voiceActors_image
        ._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterDetailQueryData_Character_media_edges_voiceActors_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image;
  }

  @override
  void update(
      void Function(
              GCharacterDetailQueryData_Character_media_edges_voiceActors_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_edges_voiceActors_image build() =>
      _build();

  _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_media_edges_voiceActors_image
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_media_edges_voiceActors_image',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterDetailQueryData_Character_media_pageInfo
    extends GCharacterDetailQueryData_Character_media_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;
  @override
  final int? perPage;
  @override
  final int? currentPage;
  @override
  final int? lastPage;
  @override
  final bool? hasNextPage;

  factory _$GCharacterDetailQueryData_Character_media_pageInfo(
          [void Function(
                  GCharacterDetailQueryData_Character_media_pageInfoBuilder)?
              updates]) =>
      (new GCharacterDetailQueryData_Character_media_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GCharacterDetailQueryData_Character_media_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterDetailQueryData_Character_media_pageInfo', 'G__typename');
  }

  @override
  GCharacterDetailQueryData_Character_media_pageInfo rebuild(
          void Function(
                  GCharacterDetailQueryData_Character_media_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDetailQueryData_Character_media_pageInfoBuilder toBuilder() =>
      new GCharacterDetailQueryData_Character_media_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterDetailQueryData_Character_media_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total &&
        perPage == other.perPage &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterDetailQueryData_Character_media_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GCharacterDetailQueryData_Character_media_pageInfoBuilder
    implements
        Builder<GCharacterDetailQueryData_Character_media_pageInfo,
            GCharacterDetailQueryData_Character_media_pageInfoBuilder> {
  _$GCharacterDetailQueryData_Character_media_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GCharacterDetailQueryData_Character_media_pageInfoBuilder() {
    GCharacterDetailQueryData_Character_media_pageInfo._initializeBuilder(this);
  }

  GCharacterDetailQueryData_Character_media_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _perPage = $v.perPage;
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterDetailQueryData_Character_media_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterDetailQueryData_Character_media_pageInfo;
  }

  @override
  void update(
      void Function(GCharacterDetailQueryData_Character_media_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterDetailQueryData_Character_media_pageInfo build() => _build();

  _$GCharacterDetailQueryData_Character_media_pageInfo _build() {
    final _$result = _$v ??
        new _$GCharacterDetailQueryData_Character_media_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterDetailQueryData_Character_media_pageInfo',
                'G__typename'),
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
