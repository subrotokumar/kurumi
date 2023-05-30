// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StaffQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStaffQueryData> _$gStaffQueryDataSerializer =
    new _$GStaffQueryDataSerializer();
Serializer<GStaffQueryData_Staff> _$gStaffQueryDataStaffSerializer =
    new _$GStaffQueryData_StaffSerializer();
Serializer<GStaffQueryData_Staff_name> _$gStaffQueryDataStaffNameSerializer =
    new _$GStaffQueryData_Staff_nameSerializer();
Serializer<GStaffQueryData_Staff_image> _$gStaffQueryDataStaffImageSerializer =
    new _$GStaffQueryData_Staff_imageSerializer();
Serializer<GStaffQueryData_Staff_dateOfBirth>
    _$gStaffQueryDataStaffDateOfBirthSerializer =
    new _$GStaffQueryData_Staff_dateOfBirthSerializer();
Serializer<GStaffQueryData_Staff_characters>
    _$gStaffQueryDataStaffCharactersSerializer =
    new _$GStaffQueryData_Staff_charactersSerializer();
Serializer<GStaffQueryData_Staff_characters_nodes>
    _$gStaffQueryDataStaffCharactersNodesSerializer =
    new _$GStaffQueryData_Staff_characters_nodesSerializer();
Serializer<GStaffQueryData_Staff_characters_nodes_name>
    _$gStaffQueryDataStaffCharactersNodesNameSerializer =
    new _$GStaffQueryData_Staff_characters_nodes_nameSerializer();
Serializer<GStaffQueryData_Staff_characters_nodes_image>
    _$gStaffQueryDataStaffCharactersNodesImageSerializer =
    new _$GStaffQueryData_Staff_characters_nodes_imageSerializer();
Serializer<GStaffQueryData_Staff_characterMedia>
    _$gStaffQueryDataStaffCharacterMediaSerializer =
    new _$GStaffQueryData_Staff_characterMediaSerializer();
Serializer<GStaffQueryData_Staff_characterMedia_nodes>
    _$gStaffQueryDataStaffCharacterMediaNodesSerializer =
    new _$GStaffQueryData_Staff_characterMedia_nodesSerializer();
Serializer<GStaffQueryData_Staff_characterMedia_nodes_title>
    _$gStaffQueryDataStaffCharacterMediaNodesTitleSerializer =
    new _$GStaffQueryData_Staff_characterMedia_nodes_titleSerializer();
Serializer<GStaffQueryData_Staff_characterMedia_nodes_coverImage>
    _$gStaffQueryDataStaffCharacterMediaNodesCoverImageSerializer =
    new _$GStaffQueryData_Staff_characterMedia_nodes_coverImageSerializer();

class _$GStaffQueryDataSerializer
    implements StructuredSerializer<GStaffQueryData> {
  @override
  final Iterable<Type> types = const [GStaffQueryData, _$GStaffQueryData];
  @override
  final String wireName = 'GStaffQueryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStaffQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Staff;
    if (value != null) {
      result
        ..add('Staff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffQueryData_Staff)));
    }
    return result;
  }

  @override
  GStaffQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryDataBuilder();

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
        case 'Staff':
          result.Staff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffQueryData_Staff))!
              as GStaffQueryData_Staff);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_StaffSerializer
    implements StructuredSerializer<GStaffQueryData_Staff> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff,
    _$GStaffQueryData_Staff
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffQueryData_Staff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffQueryData_Staff_name)));
    }
    value = object.languageV2;
    if (value != null) {
      result
        ..add('languageV2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffQueryData_Staff_image)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffQueryData_Staff_dateOfBirth)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.homeTown;
    if (value != null) {
      result
        ..add('homeTown')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bloodType;
    if (value != null) {
      result
        ..add('bloodType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffQueryData_Staff_characters)));
    }
    value = object.characterMedia;
    if (value != null) {
      result
        ..add('characterMedia')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStaffQueryData_Staff_characterMedia)));
    }
    return result;
  }

  @override
  GStaffQueryData_Staff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_StaffBuilder();

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
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffQueryData_Staff_name))!
              as GStaffQueryData_Staff_name);
          break;
        case 'languageV2':
          result.languageV2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffQueryData_Staff_image))!
              as GStaffQueryData_Staff_image);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStaffQueryData_Staff_dateOfBirth))!
              as GStaffQueryData_Staff_dateOfBirth);
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'homeTown':
          result.homeTown = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bloodType':
          result.bloodType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStaffQueryData_Staff_characters))!
              as GStaffQueryData_Staff_characters);
          break;
        case 'characterMedia':
          result.characterMedia.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStaffQueryData_Staff_characterMedia))!
              as GStaffQueryData_Staff_characterMedia);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_Staff_nameSerializer
    implements StructuredSerializer<GStaffQueryData_Staff_name> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_name,
    _$GStaffQueryData_Staff_name
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffQueryData_Staff_name object,
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
  GStaffQueryData_Staff_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_nameBuilder();

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

class _$GStaffQueryData_Staff_imageSerializer
    implements StructuredSerializer<GStaffQueryData_Staff_image> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_image,
    _$GStaffQueryData_Staff_image
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffQueryData_Staff_image object,
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
    return result;
  }

  @override
  GStaffQueryData_Staff_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_imageBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_Staff_dateOfBirthSerializer
    implements StructuredSerializer<GStaffQueryData_Staff_dateOfBirth> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_dateOfBirth,
    _$GStaffQueryData_Staff_dateOfBirth
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_dateOfBirth';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffQueryData_Staff_dateOfBirth object,
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
  GStaffQueryData_Staff_dateOfBirth deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_dateOfBirthBuilder();

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

class _$GStaffQueryData_Staff_charactersSerializer
    implements StructuredSerializer<GStaffQueryData_Staff_characters> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characters,
    _$GStaffQueryData_Staff_characters
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffQueryData_Staff_characters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GStaffQueryData_Staff_characters_nodes)
            ])));
    }
    return result;
  }

  @override
  GStaffQueryData_Staff_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_charactersBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GStaffQueryData_Staff_characters_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_Staff_characters_nodesSerializer
    implements StructuredSerializer<GStaffQueryData_Staff_characters_nodes> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characters_nodes,
    _$GStaffQueryData_Staff_characters_nodes
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_characters_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffQueryData_Staff_characters_nodes object,
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
            specifiedType:
                const FullType(GStaffQueryData_Staff_characters_nodes_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStaffQueryData_Staff_characters_nodes_image)));
    }
    return result;
  }

  @override
  GStaffQueryData_Staff_characters_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_characters_nodesBuilder();

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
                      GStaffQueryData_Staff_characters_nodes_name))!
              as GStaffQueryData_Staff_characters_nodes_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffQueryData_Staff_characters_nodes_image))!
              as GStaffQueryData_Staff_characters_nodes_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_Staff_characters_nodes_nameSerializer
    implements
        StructuredSerializer<GStaffQueryData_Staff_characters_nodes_name> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characters_nodes_name,
    _$GStaffQueryData_Staff_characters_nodes_name
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_characters_nodes_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffQueryData_Staff_characters_nodes_name object,
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
  GStaffQueryData_Staff_characters_nodes_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_characters_nodes_nameBuilder();

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

class _$GStaffQueryData_Staff_characters_nodes_imageSerializer
    implements
        StructuredSerializer<GStaffQueryData_Staff_characters_nodes_image> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characters_nodes_image,
    _$GStaffQueryData_Staff_characters_nodes_image
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_characters_nodes_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffQueryData_Staff_characters_nodes_image object,
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
    return result;
  }

  @override
  GStaffQueryData_Staff_characters_nodes_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_characters_nodes_imageBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_Staff_characterMediaSerializer
    implements StructuredSerializer<GStaffQueryData_Staff_characterMedia> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characterMedia,
    _$GStaffQueryData_Staff_characterMedia
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_characterMedia';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffQueryData_Staff_characterMedia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GStaffQueryData_Staff_characterMedia_nodes)
            ])));
    }
    return result;
  }

  @override
  GStaffQueryData_Staff_characterMedia deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_characterMediaBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GStaffQueryData_Staff_characterMedia_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_Staff_characterMedia_nodesSerializer
    implements
        StructuredSerializer<GStaffQueryData_Staff_characterMedia_nodes> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characterMedia_nodes,
    _$GStaffQueryData_Staff_characterMedia_nodes
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_characterMedia_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffQueryData_Staff_characterMedia_nodes object,
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
                GStaffQueryData_Staff_characterMedia_nodes_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GStaffQueryData_Staff_characterMedia_nodes_coverImage)));
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
  GStaffQueryData_Staff_characterMedia_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffQueryData_Staff_characterMedia_nodesBuilder();

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
                      GStaffQueryData_Staff_characterMedia_nodes_title))!
              as GStaffQueryData_Staff_characterMedia_nodes_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffQueryData_Staff_characterMedia_nodes_coverImage))!
              as GStaffQueryData_Staff_characterMedia_nodes_coverImage);
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

class _$GStaffQueryData_Staff_characterMedia_nodes_titleSerializer
    implements
        StructuredSerializer<GStaffQueryData_Staff_characterMedia_nodes_title> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characterMedia_nodes_title,
    _$GStaffQueryData_Staff_characterMedia_nodes_title
  ];
  @override
  final String wireName = 'GStaffQueryData_Staff_characterMedia_nodes_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffQueryData_Staff_characterMedia_nodes_title object,
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
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffQueryData_Staff_characterMedia_nodes_titleBuilder();

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
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData_Staff_characterMedia_nodes_coverImageSerializer
    implements
        StructuredSerializer<
            GStaffQueryData_Staff_characterMedia_nodes_coverImage> {
  @override
  final Iterable<Type> types = const [
    GStaffQueryData_Staff_characterMedia_nodes_coverImage,
    _$GStaffQueryData_Staff_characterMedia_nodes_coverImage
  ];
  @override
  final String wireName =
      'GStaffQueryData_Staff_characterMedia_nodes_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffQueryData_Staff_characterMedia_nodes_coverImage object,
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
    return result;
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GStaffQueryData extends GStaffQueryData {
  @override
  final String G__typename;
  @override
  final GStaffQueryData_Staff? Staff;

  factory _$GStaffQueryData([void Function(GStaffQueryDataBuilder)? updates]) =>
      (new GStaffQueryDataBuilder()..update(updates))._build();

  _$GStaffQueryData._({required this.G__typename, this.Staff}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData', 'G__typename');
  }

  @override
  GStaffQueryData rebuild(void Function(GStaffQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryDataBuilder toBuilder() =>
      new GStaffQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData &&
        G__typename == other.G__typename &&
        Staff == other.Staff;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Staff.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffQueryData')
          ..add('G__typename', G__typename)
          ..add('Staff', Staff))
        .toString();
  }
}

class GStaffQueryDataBuilder
    implements Builder<GStaffQueryData, GStaffQueryDataBuilder> {
  _$GStaffQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStaffQueryData_StaffBuilder? _Staff;
  GStaffQueryData_StaffBuilder get Staff =>
      _$this._Staff ??= new GStaffQueryData_StaffBuilder();
  set Staff(GStaffQueryData_StaffBuilder? Staff) => _$this._Staff = Staff;

  GStaffQueryDataBuilder() {
    GStaffQueryData._initializeBuilder(this);
  }

  GStaffQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Staff = $v.Staff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData;
  }

  @override
  void update(void Function(GStaffQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData build() => _build();

  _$GStaffQueryData _build() {
    _$GStaffQueryData _$result;
    try {
      _$result = _$v ??
          new _$GStaffQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStaffQueryData', 'G__typename'),
              Staff: _Staff?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Staff';
        _Staff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff extends GStaffQueryData_Staff {
  @override
  final String G__typename;
  @override
  final GStaffQueryData_Staff_name? name;
  @override
  final String? languageV2;
  @override
  final GStaffQueryData_Staff_image? image;
  @override
  final String? description;
  @override
  final String? gender;
  @override
  final GStaffQueryData_Staff_dateOfBirth? dateOfBirth;
  @override
  final int? age;
  @override
  final String? homeTown;
  @override
  final String? bloodType;
  @override
  final GStaffQueryData_Staff_characters? characters;
  @override
  final GStaffQueryData_Staff_characterMedia? characterMedia;

  factory _$GStaffQueryData_Staff(
          [void Function(GStaffQueryData_StaffBuilder)? updates]) =>
      (new GStaffQueryData_StaffBuilder()..update(updates))._build();

  _$GStaffQueryData_Staff._(
      {required this.G__typename,
      this.name,
      this.languageV2,
      this.image,
      this.description,
      this.gender,
      this.dateOfBirth,
      this.age,
      this.homeTown,
      this.bloodType,
      this.characters,
      this.characterMedia})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData_Staff', 'G__typename');
  }

  @override
  GStaffQueryData_Staff rebuild(
          void Function(GStaffQueryData_StaffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_StaffBuilder toBuilder() =>
      new GStaffQueryData_StaffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff &&
        G__typename == other.G__typename &&
        name == other.name &&
        languageV2 == other.languageV2 &&
        image == other.image &&
        description == other.description &&
        gender == other.gender &&
        dateOfBirth == other.dateOfBirth &&
        age == other.age &&
        homeTown == other.homeTown &&
        bloodType == other.bloodType &&
        characters == other.characters &&
        characterMedia == other.characterMedia;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, languageV2.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, homeTown.hashCode);
    _$hash = $jc(_$hash, bloodType.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, characterMedia.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffQueryData_Staff')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('languageV2', languageV2)
          ..add('image', image)
          ..add('description', description)
          ..add('gender', gender)
          ..add('dateOfBirth', dateOfBirth)
          ..add('age', age)
          ..add('homeTown', homeTown)
          ..add('bloodType', bloodType)
          ..add('characters', characters)
          ..add('characterMedia', characterMedia))
        .toString();
  }
}

class GStaffQueryData_StaffBuilder
    implements Builder<GStaffQueryData_Staff, GStaffQueryData_StaffBuilder> {
  _$GStaffQueryData_Staff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStaffQueryData_Staff_nameBuilder? _name;
  GStaffQueryData_Staff_nameBuilder get name =>
      _$this._name ??= new GStaffQueryData_Staff_nameBuilder();
  set name(GStaffQueryData_Staff_nameBuilder? name) => _$this._name = name;

  String? _languageV2;
  String? get languageV2 => _$this._languageV2;
  set languageV2(String? languageV2) => _$this._languageV2 = languageV2;

  GStaffQueryData_Staff_imageBuilder? _image;
  GStaffQueryData_Staff_imageBuilder get image =>
      _$this._image ??= new GStaffQueryData_Staff_imageBuilder();
  set image(GStaffQueryData_Staff_imageBuilder? image) => _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GStaffQueryData_Staff_dateOfBirthBuilder? _dateOfBirth;
  GStaffQueryData_Staff_dateOfBirthBuilder get dateOfBirth =>
      _$this._dateOfBirth ??= new GStaffQueryData_Staff_dateOfBirthBuilder();
  set dateOfBirth(GStaffQueryData_Staff_dateOfBirthBuilder? dateOfBirth) =>
      _$this._dateOfBirth = dateOfBirth;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  String? _homeTown;
  String? get homeTown => _$this._homeTown;
  set homeTown(String? homeTown) => _$this._homeTown = homeTown;

  String? _bloodType;
  String? get bloodType => _$this._bloodType;
  set bloodType(String? bloodType) => _$this._bloodType = bloodType;

  GStaffQueryData_Staff_charactersBuilder? _characters;
  GStaffQueryData_Staff_charactersBuilder get characters =>
      _$this._characters ??= new GStaffQueryData_Staff_charactersBuilder();
  set characters(GStaffQueryData_Staff_charactersBuilder? characters) =>
      _$this._characters = characters;

  GStaffQueryData_Staff_characterMediaBuilder? _characterMedia;
  GStaffQueryData_Staff_characterMediaBuilder get characterMedia =>
      _$this._characterMedia ??=
          new GStaffQueryData_Staff_characterMediaBuilder();
  set characterMedia(
          GStaffQueryData_Staff_characterMediaBuilder? characterMedia) =>
      _$this._characterMedia = characterMedia;

  GStaffQueryData_StaffBuilder() {
    GStaffQueryData_Staff._initializeBuilder(this);
  }

  GStaffQueryData_StaffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name?.toBuilder();
      _languageV2 = $v.languageV2;
      _image = $v.image?.toBuilder();
      _description = $v.description;
      _gender = $v.gender;
      _dateOfBirth = $v.dateOfBirth?.toBuilder();
      _age = $v.age;
      _homeTown = $v.homeTown;
      _bloodType = $v.bloodType;
      _characters = $v.characters?.toBuilder();
      _characterMedia = $v.characterMedia?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff;
  }

  @override
  void update(void Function(GStaffQueryData_StaffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff build() => _build();

  _$GStaffQueryData_Staff _build() {
    _$GStaffQueryData_Staff _$result;
    try {
      _$result = _$v ??
          new _$GStaffQueryData_Staff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStaffQueryData_Staff', 'G__typename'),
              name: _name?.build(),
              languageV2: languageV2,
              image: _image?.build(),
              description: description,
              gender: gender,
              dateOfBirth: _dateOfBirth?.build(),
              age: age,
              homeTown: homeTown,
              bloodType: bloodType,
              characters: _characters?.build(),
              characterMedia: _characterMedia?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();

        _$failedField = 'image';
        _image?.build();

        _$failedField = 'dateOfBirth';
        _dateOfBirth?.build();

        _$failedField = 'characters';
        _characters?.build();
        _$failedField = 'characterMedia';
        _characterMedia?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffQueryData_Staff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_name extends GStaffQueryData_Staff_name {
  @override
  final String G__typename;
  @override
  final String? full;
  @override
  final String? userPreferred;

  factory _$GStaffQueryData_Staff_name(
          [void Function(GStaffQueryData_Staff_nameBuilder)? updates]) =>
      (new GStaffQueryData_Staff_nameBuilder()..update(updates))._build();

  _$GStaffQueryData_Staff_name._(
      {required this.G__typename, this.full, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData_Staff_name', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_name rebuild(
          void Function(GStaffQueryData_Staff_nameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_nameBuilder toBuilder() =>
      new GStaffQueryData_Staff_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_name &&
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
    return (newBuiltValueToStringHelper(r'GStaffQueryData_Staff_name')
          ..add('G__typename', G__typename)
          ..add('full', full)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStaffQueryData_Staff_nameBuilder
    implements
        Builder<GStaffQueryData_Staff_name, GStaffQueryData_Staff_nameBuilder> {
  _$GStaffQueryData_Staff_name? _$v;

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

  GStaffQueryData_Staff_nameBuilder() {
    GStaffQueryData_Staff_name._initializeBuilder(this);
  }

  GStaffQueryData_Staff_nameBuilder get _$this {
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
  void replace(GStaffQueryData_Staff_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_name;
  }

  @override
  void update(void Function(GStaffQueryData_Staff_nameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_name build() => _build();

  _$GStaffQueryData_Staff_name _build() {
    final _$result = _$v ??
        new _$GStaffQueryData_Staff_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffQueryData_Staff_name', 'G__typename'),
            full: full,
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_image extends GStaffQueryData_Staff_image {
  @override
  final String G__typename;
  @override
  final String? medium;
  @override
  final String? large;

  factory _$GStaffQueryData_Staff_image(
          [void Function(GStaffQueryData_Staff_imageBuilder)? updates]) =>
      (new GStaffQueryData_Staff_imageBuilder()..update(updates))._build();

  _$GStaffQueryData_Staff_image._(
      {required this.G__typename, this.medium, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData_Staff_image', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_image rebuild(
          void Function(GStaffQueryData_Staff_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_imageBuilder toBuilder() =>
      new GStaffQueryData_Staff_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_image &&
        G__typename == other.G__typename &&
        medium == other.medium &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffQueryData_Staff_image')
          ..add('G__typename', G__typename)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class GStaffQueryData_Staff_imageBuilder
    implements
        Builder<GStaffQueryData_Staff_image,
            GStaffQueryData_Staff_imageBuilder> {
  _$GStaffQueryData_Staff_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GStaffQueryData_Staff_imageBuilder() {
    GStaffQueryData_Staff_image._initializeBuilder(this);
  }

  GStaffQueryData_Staff_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_image;
  }

  @override
  void update(void Function(GStaffQueryData_Staff_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_image build() => _build();

  _$GStaffQueryData_Staff_image _build() {
    final _$result = _$v ??
        new _$GStaffQueryData_Staff_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffQueryData_Staff_image', 'G__typename'),
            medium: medium,
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_dateOfBirth
    extends GStaffQueryData_Staff_dateOfBirth {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GStaffQueryData_Staff_dateOfBirth(
          [void Function(GStaffQueryData_Staff_dateOfBirthBuilder)? updates]) =>
      (new GStaffQueryData_Staff_dateOfBirthBuilder()..update(updates))
          ._build();

  _$GStaffQueryData_Staff_dateOfBirth._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData_Staff_dateOfBirth', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_dateOfBirth rebuild(
          void Function(GStaffQueryData_Staff_dateOfBirthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_dateOfBirthBuilder toBuilder() =>
      new GStaffQueryData_Staff_dateOfBirthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_dateOfBirth &&
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
    return (newBuiltValueToStringHelper(r'GStaffQueryData_Staff_dateOfBirth')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GStaffQueryData_Staff_dateOfBirthBuilder
    implements
        Builder<GStaffQueryData_Staff_dateOfBirth,
            GStaffQueryData_Staff_dateOfBirthBuilder> {
  _$GStaffQueryData_Staff_dateOfBirth? _$v;

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

  GStaffQueryData_Staff_dateOfBirthBuilder() {
    GStaffQueryData_Staff_dateOfBirth._initializeBuilder(this);
  }

  GStaffQueryData_Staff_dateOfBirthBuilder get _$this {
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
  void replace(GStaffQueryData_Staff_dateOfBirth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_dateOfBirth;
  }

  @override
  void update(
      void Function(GStaffQueryData_Staff_dateOfBirthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_dateOfBirth build() => _build();

  _$GStaffQueryData_Staff_dateOfBirth _build() {
    final _$result = _$v ??
        new _$GStaffQueryData_Staff_dateOfBirth._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStaffQueryData_Staff_dateOfBirth', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characters
    extends GStaffQueryData_Staff_characters {
  @override
  final String G__typename;
  @override
  final BuiltList<GStaffQueryData_Staff_characters_nodes?>? nodes;

  factory _$GStaffQueryData_Staff_characters(
          [void Function(GStaffQueryData_Staff_charactersBuilder)? updates]) =>
      (new GStaffQueryData_Staff_charactersBuilder()..update(updates))._build();

  _$GStaffQueryData_Staff_characters._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData_Staff_characters', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_characters rebuild(
          void Function(GStaffQueryData_Staff_charactersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_charactersBuilder toBuilder() =>
      new GStaffQueryData_Staff_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characters &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffQueryData_Staff_characters')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GStaffQueryData_Staff_charactersBuilder
    implements
        Builder<GStaffQueryData_Staff_characters,
            GStaffQueryData_Staff_charactersBuilder> {
  _$GStaffQueryData_Staff_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GStaffQueryData_Staff_characters_nodes?>? _nodes;
  ListBuilder<GStaffQueryData_Staff_characters_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GStaffQueryData_Staff_characters_nodes?>();
  set nodes(ListBuilder<GStaffQueryData_Staff_characters_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GStaffQueryData_Staff_charactersBuilder() {
    GStaffQueryData_Staff_characters._initializeBuilder(this);
  }

  GStaffQueryData_Staff_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characters;
  }

  @override
  void update(void Function(GStaffQueryData_Staff_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characters build() => _build();

  _$GStaffQueryData_Staff_characters _build() {
    _$GStaffQueryData_Staff_characters _$result;
    try {
      _$result = _$v ??
          new _$GStaffQueryData_Staff_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffQueryData_Staff_characters', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffQueryData_Staff_characters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characters_nodes
    extends GStaffQueryData_Staff_characters_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GStaffQueryData_Staff_characters_nodes_name? name;
  @override
  final GStaffQueryData_Staff_characters_nodes_image? image;

  factory _$GStaffQueryData_Staff_characters_nodes(
          [void Function(GStaffQueryData_Staff_characters_nodesBuilder)?
              updates]) =>
      (new GStaffQueryData_Staff_characters_nodesBuilder()..update(updates))
          ._build();

  _$GStaffQueryData_Staff_characters_nodes._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData_Staff_characters_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GStaffQueryData_Staff_characters_nodes', 'id');
  }

  @override
  GStaffQueryData_Staff_characters_nodes rebuild(
          void Function(GStaffQueryData_Staff_characters_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_characters_nodesBuilder toBuilder() =>
      new GStaffQueryData_Staff_characters_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characters_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffQueryData_Staff_characters_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GStaffQueryData_Staff_characters_nodesBuilder
    implements
        Builder<GStaffQueryData_Staff_characters_nodes,
            GStaffQueryData_Staff_characters_nodesBuilder> {
  _$GStaffQueryData_Staff_characters_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GStaffQueryData_Staff_characters_nodes_nameBuilder? _name;
  GStaffQueryData_Staff_characters_nodes_nameBuilder get name =>
      _$this._name ??= new GStaffQueryData_Staff_characters_nodes_nameBuilder();
  set name(GStaffQueryData_Staff_characters_nodes_nameBuilder? name) =>
      _$this._name = name;

  GStaffQueryData_Staff_characters_nodes_imageBuilder? _image;
  GStaffQueryData_Staff_characters_nodes_imageBuilder get image =>
      _$this._image ??=
          new GStaffQueryData_Staff_characters_nodes_imageBuilder();
  set image(GStaffQueryData_Staff_characters_nodes_imageBuilder? image) =>
      _$this._image = image;

  GStaffQueryData_Staff_characters_nodesBuilder() {
    GStaffQueryData_Staff_characters_nodes._initializeBuilder(this);
  }

  GStaffQueryData_Staff_characters_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_characters_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characters_nodes;
  }

  @override
  void update(
      void Function(GStaffQueryData_Staff_characters_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characters_nodes build() => _build();

  _$GStaffQueryData_Staff_characters_nodes _build() {
    _$GStaffQueryData_Staff_characters_nodes _$result;
    try {
      _$result = _$v ??
          new _$GStaffQueryData_Staff_characters_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffQueryData_Staff_characters_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStaffQueryData_Staff_characters_nodes', 'id'),
              name: _name?.build(),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffQueryData_Staff_characters_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characters_nodes_name
    extends GStaffQueryData_Staff_characters_nodes_name {
  @override
  final String G__typename;
  @override
  final String? full;
  @override
  final String? userPreferred;

  factory _$GStaffQueryData_Staff_characters_nodes_name(
          [void Function(GStaffQueryData_Staff_characters_nodes_nameBuilder)?
              updates]) =>
      (new GStaffQueryData_Staff_characters_nodes_nameBuilder()
            ..update(updates))
          ._build();

  _$GStaffQueryData_Staff_characters_nodes_name._(
      {required this.G__typename, this.full, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffQueryData_Staff_characters_nodes_name', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_characters_nodes_name rebuild(
          void Function(GStaffQueryData_Staff_characters_nodes_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_characters_nodes_nameBuilder toBuilder() =>
      new GStaffQueryData_Staff_characters_nodes_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characters_nodes_name &&
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
            r'GStaffQueryData_Staff_characters_nodes_name')
          ..add('G__typename', G__typename)
          ..add('full', full)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStaffQueryData_Staff_characters_nodes_nameBuilder
    implements
        Builder<GStaffQueryData_Staff_characters_nodes_name,
            GStaffQueryData_Staff_characters_nodes_nameBuilder> {
  _$GStaffQueryData_Staff_characters_nodes_name? _$v;

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

  GStaffQueryData_Staff_characters_nodes_nameBuilder() {
    GStaffQueryData_Staff_characters_nodes_name._initializeBuilder(this);
  }

  GStaffQueryData_Staff_characters_nodes_nameBuilder get _$this {
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
  void replace(GStaffQueryData_Staff_characters_nodes_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characters_nodes_name;
  }

  @override
  void update(
      void Function(GStaffQueryData_Staff_characters_nodes_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characters_nodes_name build() => _build();

  _$GStaffQueryData_Staff_characters_nodes_name _build() {
    final _$result = _$v ??
        new _$GStaffQueryData_Staff_characters_nodes_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStaffQueryData_Staff_characters_nodes_name', 'G__typename'),
            full: full,
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characters_nodes_image
    extends GStaffQueryData_Staff_characters_nodes_image {
  @override
  final String G__typename;
  @override
  final String? medium;
  @override
  final String? large;

  factory _$GStaffQueryData_Staff_characters_nodes_image(
          [void Function(GStaffQueryData_Staff_characters_nodes_imageBuilder)?
              updates]) =>
      (new GStaffQueryData_Staff_characters_nodes_imageBuilder()
            ..update(updates))
          ._build();

  _$GStaffQueryData_Staff_characters_nodes_image._(
      {required this.G__typename, this.medium, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffQueryData_Staff_characters_nodes_image', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_characters_nodes_image rebuild(
          void Function(GStaffQueryData_Staff_characters_nodes_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_characters_nodes_imageBuilder toBuilder() =>
      new GStaffQueryData_Staff_characters_nodes_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characters_nodes_image &&
        G__typename == other.G__typename &&
        medium == other.medium &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffQueryData_Staff_characters_nodes_image')
          ..add('G__typename', G__typename)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class GStaffQueryData_Staff_characters_nodes_imageBuilder
    implements
        Builder<GStaffQueryData_Staff_characters_nodes_image,
            GStaffQueryData_Staff_characters_nodes_imageBuilder> {
  _$GStaffQueryData_Staff_characters_nodes_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GStaffQueryData_Staff_characters_nodes_imageBuilder() {
    GStaffQueryData_Staff_characters_nodes_image._initializeBuilder(this);
  }

  GStaffQueryData_Staff_characters_nodes_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_characters_nodes_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characters_nodes_image;
  }

  @override
  void update(
      void Function(GStaffQueryData_Staff_characters_nodes_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characters_nodes_image build() => _build();

  _$GStaffQueryData_Staff_characters_nodes_image _build() {
    final _$result = _$v ??
        new _$GStaffQueryData_Staff_characters_nodes_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStaffQueryData_Staff_characters_nodes_image', 'G__typename'),
            medium: medium,
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characterMedia
    extends GStaffQueryData_Staff_characterMedia {
  @override
  final String G__typename;
  @override
  final BuiltList<GStaffQueryData_Staff_characterMedia_nodes?>? nodes;

  factory _$GStaffQueryData_Staff_characterMedia(
          [void Function(GStaffQueryData_Staff_characterMediaBuilder)?
              updates]) =>
      (new GStaffQueryData_Staff_characterMediaBuilder()..update(updates))
          ._build();

  _$GStaffQueryData_Staff_characterMedia._(
      {required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffQueryData_Staff_characterMedia', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_characterMedia rebuild(
          void Function(GStaffQueryData_Staff_characterMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_characterMediaBuilder toBuilder() =>
      new GStaffQueryData_Staff_characterMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characterMedia &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffQueryData_Staff_characterMedia')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GStaffQueryData_Staff_characterMediaBuilder
    implements
        Builder<GStaffQueryData_Staff_characterMedia,
            GStaffQueryData_Staff_characterMediaBuilder> {
  _$GStaffQueryData_Staff_characterMedia? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GStaffQueryData_Staff_characterMedia_nodes?>? _nodes;
  ListBuilder<GStaffQueryData_Staff_characterMedia_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GStaffQueryData_Staff_characterMedia_nodes?>();
  set nodes(ListBuilder<GStaffQueryData_Staff_characterMedia_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GStaffQueryData_Staff_characterMediaBuilder() {
    GStaffQueryData_Staff_characterMedia._initializeBuilder(this);
  }

  GStaffQueryData_Staff_characterMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_characterMedia other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characterMedia;
  }

  @override
  void update(
      void Function(GStaffQueryData_Staff_characterMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characterMedia build() => _build();

  _$GStaffQueryData_Staff_characterMedia _build() {
    _$GStaffQueryData_Staff_characterMedia _$result;
    try {
      _$result = _$v ??
          new _$GStaffQueryData_Staff_characterMedia._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffQueryData_Staff_characterMedia', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffQueryData_Staff_characterMedia',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characterMedia_nodes
    extends GStaffQueryData_Staff_characterMedia_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GStaffQueryData_Staff_characterMedia_nodes_title? title;
  @override
  final GStaffQueryData_Staff_characterMedia_nodes_coverImage? coverImage;
  @override
  final _i2.GMediaFormat? format;

  factory _$GStaffQueryData_Staff_characterMedia_nodes(
          [void Function(GStaffQueryData_Staff_characterMedia_nodesBuilder)?
              updates]) =>
      (new GStaffQueryData_Staff_characterMedia_nodesBuilder()..update(updates))
          ._build();

  _$GStaffQueryData_Staff_characterMedia_nodes._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage,
      this.format})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffQueryData_Staff_characterMedia_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GStaffQueryData_Staff_characterMedia_nodes', 'id');
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes rebuild(
          void Function(GStaffQueryData_Staff_characterMedia_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_characterMedia_nodesBuilder toBuilder() =>
      new GStaffQueryData_Staff_characterMedia_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characterMedia_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        format == other.format;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffQueryData_Staff_characterMedia_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('format', format))
        .toString();
  }
}

class GStaffQueryData_Staff_characterMedia_nodesBuilder
    implements
        Builder<GStaffQueryData_Staff_characterMedia_nodes,
            GStaffQueryData_Staff_characterMedia_nodesBuilder> {
  _$GStaffQueryData_Staff_characterMedia_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GStaffQueryData_Staff_characterMedia_nodes_titleBuilder? _title;
  GStaffQueryData_Staff_characterMedia_nodes_titleBuilder get title =>
      _$this._title ??=
          new GStaffQueryData_Staff_characterMedia_nodes_titleBuilder();
  set title(GStaffQueryData_Staff_characterMedia_nodes_titleBuilder? title) =>
      _$this._title = title;

  GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder? _coverImage;
  GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder();
  set coverImage(
          GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  GStaffQueryData_Staff_characterMedia_nodesBuilder() {
    GStaffQueryData_Staff_characterMedia_nodes._initializeBuilder(this);
  }

  GStaffQueryData_Staff_characterMedia_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_characterMedia_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characterMedia_nodes;
  }

  @override
  void update(
      void Function(GStaffQueryData_Staff_characterMedia_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes build() => _build();

  _$GStaffQueryData_Staff_characterMedia_nodes _build() {
    _$GStaffQueryData_Staff_characterMedia_nodes _$result;
    try {
      _$result = _$v ??
          new _$GStaffQueryData_Staff_characterMedia_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffQueryData_Staff_characterMedia_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStaffQueryData_Staff_characterMedia_nodes', 'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              format: format);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffQueryData_Staff_characterMedia_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characterMedia_nodes_title
    extends GStaffQueryData_Staff_characterMedia_nodes_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;
  @override
  final String? english;

  factory _$GStaffQueryData_Staff_characterMedia_nodes_title(
          [void Function(
                  GStaffQueryData_Staff_characterMedia_nodes_titleBuilder)?
              updates]) =>
      (new GStaffQueryData_Staff_characterMedia_nodes_titleBuilder()
            ..update(updates))
          ._build();

  _$GStaffQueryData_Staff_characterMedia_nodes_title._(
      {required this.G__typename, this.userPreferred, this.english})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffQueryData_Staff_characterMedia_nodes_title', 'G__typename');
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes_title rebuild(
          void Function(GStaffQueryData_Staff_characterMedia_nodes_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_characterMedia_nodes_titleBuilder toBuilder() =>
      new GStaffQueryData_Staff_characterMedia_nodes_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characterMedia_nodes_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred &&
        english == other.english;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffQueryData_Staff_characterMedia_nodes_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred)
          ..add('english', english))
        .toString();
  }
}

class GStaffQueryData_Staff_characterMedia_nodes_titleBuilder
    implements
        Builder<GStaffQueryData_Staff_characterMedia_nodes_title,
            GStaffQueryData_Staff_characterMedia_nodes_titleBuilder> {
  _$GStaffQueryData_Staff_characterMedia_nodes_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  GStaffQueryData_Staff_characterMedia_nodes_titleBuilder() {
    GStaffQueryData_Staff_characterMedia_nodes_title._initializeBuilder(this);
  }

  GStaffQueryData_Staff_characterMedia_nodes_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _english = $v.english;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_characterMedia_nodes_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characterMedia_nodes_title;
  }

  @override
  void update(
      void Function(GStaffQueryData_Staff_characterMedia_nodes_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes_title build() => _build();

  _$GStaffQueryData_Staff_characterMedia_nodes_title _build() {
    final _$result = _$v ??
        new _$GStaffQueryData_Staff_characterMedia_nodes_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffQueryData_Staff_characterMedia_nodes_title',
                'G__typename'),
            userPreferred: userPreferred,
            english: english);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffQueryData_Staff_characterMedia_nodes_coverImage
    extends GStaffQueryData_Staff_characterMedia_nodes_coverImage {
  @override
  final String G__typename;
  @override
  final String? medium;
  @override
  final String? large;

  factory _$GStaffQueryData_Staff_characterMedia_nodes_coverImage(
          [void Function(
                  GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder)?
              updates]) =>
      (new GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GStaffQueryData_Staff_characterMedia_nodes_coverImage._(
      {required this.G__typename, this.medium, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GStaffQueryData_Staff_characterMedia_nodes_coverImage',
        'G__typename');
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes_coverImage rebuild(
          void Function(
                  GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder toBuilder() =>
      new GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffQueryData_Staff_characterMedia_nodes_coverImage &&
        G__typename == other.G__typename &&
        medium == other.medium &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffQueryData_Staff_characterMedia_nodes_coverImage')
          ..add('G__typename', G__typename)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder
    implements
        Builder<GStaffQueryData_Staff_characterMedia_nodes_coverImage,
            GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder> {
  _$GStaffQueryData_Staff_characterMedia_nodes_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder() {
    GStaffQueryData_Staff_characterMedia_nodes_coverImage._initializeBuilder(
        this);
  }

  GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffQueryData_Staff_characterMedia_nodes_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffQueryData_Staff_characterMedia_nodes_coverImage;
  }

  @override
  void update(
      void Function(
              GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffQueryData_Staff_characterMedia_nodes_coverImage build() => _build();

  _$GStaffQueryData_Staff_characterMedia_nodes_coverImage _build() {
    final _$result = _$v ??
        new _$GStaffQueryData_Staff_characterMedia_nodes_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffQueryData_Staff_characterMedia_nodes_coverImage',
                'G__typename'),
            medium: medium,
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
