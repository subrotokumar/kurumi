// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'StaffQuery.data.gql.g.dart';

abstract class GStaffQueryData
    implements Built<GStaffQueryData, GStaffQueryDataBuilder> {
  GStaffQueryData._();

  factory GStaffQueryData([Function(GStaffQueryDataBuilder b) updates]) =
      _$GStaffQueryData;

  static void _initializeBuilder(GStaffQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStaffQueryData_Staff? get Staff;
  static Serializer<GStaffQueryData> get serializer =>
      _$gStaffQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff
    implements Built<GStaffQueryData_Staff, GStaffQueryData_StaffBuilder> {
  GStaffQueryData_Staff._();

  factory GStaffQueryData_Staff(
          [Function(GStaffQueryData_StaffBuilder b) updates]) =
      _$GStaffQueryData_Staff;

  static void _initializeBuilder(GStaffQueryData_StaffBuilder b) =>
      b..G__typename = 'Staff';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStaffQueryData_Staff_name? get name;
  String? get languageV2;
  GStaffQueryData_Staff_image? get image;
  String? get description;
  String? get gender;
  GStaffQueryData_Staff_dateOfBirth? get dateOfBirth;
  int? get age;
  String? get homeTown;
  String? get bloodType;
  GStaffQueryData_Staff_characters? get characters;
  GStaffQueryData_Staff_characterMedia? get characterMedia;
  static Serializer<GStaffQueryData_Staff> get serializer =>
      _$gStaffQueryDataStaffSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_name
    implements
        Built<GStaffQueryData_Staff_name, GStaffQueryData_Staff_nameBuilder> {
  GStaffQueryData_Staff_name._();

  factory GStaffQueryData_Staff_name(
          [Function(GStaffQueryData_Staff_nameBuilder b) updates]) =
      _$GStaffQueryData_Staff_name;

  static void _initializeBuilder(GStaffQueryData_Staff_nameBuilder b) =>
      b..G__typename = 'StaffName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  String? get userPreferred;
  static Serializer<GStaffQueryData_Staff_name> get serializer =>
      _$gStaffQueryDataStaffNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_name.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_name? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_name.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_image
    implements
        Built<GStaffQueryData_Staff_image, GStaffQueryData_Staff_imageBuilder> {
  GStaffQueryData_Staff_image._();

  factory GStaffQueryData_Staff_image(
          [Function(GStaffQueryData_Staff_imageBuilder b) updates]) =
      _$GStaffQueryData_Staff_image;

  static void _initializeBuilder(GStaffQueryData_Staff_imageBuilder b) =>
      b..G__typename = 'StaffImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  String? get large;
  static Serializer<GStaffQueryData_Staff_image> get serializer =>
      _$gStaffQueryDataStaffImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_image.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_image? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_image.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_dateOfBirth
    implements
        Built<GStaffQueryData_Staff_dateOfBirth,
            GStaffQueryData_Staff_dateOfBirthBuilder> {
  GStaffQueryData_Staff_dateOfBirth._();

  factory GStaffQueryData_Staff_dateOfBirth(
          [Function(GStaffQueryData_Staff_dateOfBirthBuilder b) updates]) =
      _$GStaffQueryData_Staff_dateOfBirth;

  static void _initializeBuilder(GStaffQueryData_Staff_dateOfBirthBuilder b) =>
      b..G__typename = 'FuzzyDate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get day;
  int? get month;
  int? get year;
  static Serializer<GStaffQueryData_Staff_dateOfBirth> get serializer =>
      _$gStaffQueryDataStaffDateOfBirthSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_dateOfBirth.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_dateOfBirth? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_dateOfBirth.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characters
    implements
        Built<GStaffQueryData_Staff_characters,
            GStaffQueryData_Staff_charactersBuilder> {
  GStaffQueryData_Staff_characters._();

  factory GStaffQueryData_Staff_characters(
          [Function(GStaffQueryData_Staff_charactersBuilder b) updates]) =
      _$GStaffQueryData_Staff_characters;

  static void _initializeBuilder(GStaffQueryData_Staff_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GStaffQueryData_Staff_characters_nodes?>? get nodes;
  static Serializer<GStaffQueryData_Staff_characters> get serializer =>
      _$gStaffQueryDataStaffCharactersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characters.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characters.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characters_nodes
    implements
        Built<GStaffQueryData_Staff_characters_nodes,
            GStaffQueryData_Staff_characters_nodesBuilder> {
  GStaffQueryData_Staff_characters_nodes._();

  factory GStaffQueryData_Staff_characters_nodes(
          [Function(GStaffQueryData_Staff_characters_nodesBuilder b) updates]) =
      _$GStaffQueryData_Staff_characters_nodes;

  static void _initializeBuilder(
          GStaffQueryData_Staff_characters_nodesBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GStaffQueryData_Staff_characters_nodes_name? get name;
  GStaffQueryData_Staff_characters_nodes_image? get image;
  static Serializer<GStaffQueryData_Staff_characters_nodes> get serializer =>
      _$gStaffQueryDataStaffCharactersNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characters_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characters_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characters_nodes.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characters_nodes_name
    implements
        Built<GStaffQueryData_Staff_characters_nodes_name,
            GStaffQueryData_Staff_characters_nodes_nameBuilder> {
  GStaffQueryData_Staff_characters_nodes_name._();

  factory GStaffQueryData_Staff_characters_nodes_name(
      [Function(GStaffQueryData_Staff_characters_nodes_nameBuilder b)
          updates]) = _$GStaffQueryData_Staff_characters_nodes_name;

  static void _initializeBuilder(
          GStaffQueryData_Staff_characters_nodes_nameBuilder b) =>
      b..G__typename = 'CharacterName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  String? get userPreferred;
  static Serializer<GStaffQueryData_Staff_characters_nodes_name>
      get serializer => _$gStaffQueryDataStaffCharactersNodesNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characters_nodes_name.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characters_nodes_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characters_nodes_name.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characters_nodes_image
    implements
        Built<GStaffQueryData_Staff_characters_nodes_image,
            GStaffQueryData_Staff_characters_nodes_imageBuilder> {
  GStaffQueryData_Staff_characters_nodes_image._();

  factory GStaffQueryData_Staff_characters_nodes_image(
      [Function(GStaffQueryData_Staff_characters_nodes_imageBuilder b)
          updates]) = _$GStaffQueryData_Staff_characters_nodes_image;

  static void _initializeBuilder(
          GStaffQueryData_Staff_characters_nodes_imageBuilder b) =>
      b..G__typename = 'CharacterImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  String? get large;
  static Serializer<GStaffQueryData_Staff_characters_nodes_image>
      get serializer => _$gStaffQueryDataStaffCharactersNodesImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characters_nodes_image.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characters_nodes_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characters_nodes_image.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characterMedia
    implements
        Built<GStaffQueryData_Staff_characterMedia,
            GStaffQueryData_Staff_characterMediaBuilder> {
  GStaffQueryData_Staff_characterMedia._();

  factory GStaffQueryData_Staff_characterMedia(
          [Function(GStaffQueryData_Staff_characterMediaBuilder b) updates]) =
      _$GStaffQueryData_Staff_characterMedia;

  static void _initializeBuilder(
          GStaffQueryData_Staff_characterMediaBuilder b) =>
      b..G__typename = 'MediaConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GStaffQueryData_Staff_characterMedia_nodes?>? get nodes;
  static Serializer<GStaffQueryData_Staff_characterMedia> get serializer =>
      _$gStaffQueryDataStaffCharacterMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characterMedia.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characterMedia? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characterMedia.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characterMedia_nodes
    implements
        Built<GStaffQueryData_Staff_characterMedia_nodes,
            GStaffQueryData_Staff_characterMedia_nodesBuilder> {
  GStaffQueryData_Staff_characterMedia_nodes._();

  factory GStaffQueryData_Staff_characterMedia_nodes(
      [Function(GStaffQueryData_Staff_characterMedia_nodesBuilder b)
          updates]) = _$GStaffQueryData_Staff_characterMedia_nodes;

  static void _initializeBuilder(
          GStaffQueryData_Staff_characterMedia_nodesBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GStaffQueryData_Staff_characterMedia_nodes_title? get title;
  GStaffQueryData_Staff_characterMedia_nodes_coverImage? get coverImage;
  _i2.GMediaFormat? get format;
  static Serializer<GStaffQueryData_Staff_characterMedia_nodes>
      get serializer => _$gStaffQueryDataStaffCharacterMediaNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characterMedia_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characterMedia_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characterMedia_nodes.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characterMedia_nodes_title
    implements
        Built<GStaffQueryData_Staff_characterMedia_nodes_title,
            GStaffQueryData_Staff_characterMedia_nodes_titleBuilder> {
  GStaffQueryData_Staff_characterMedia_nodes_title._();

  factory GStaffQueryData_Staff_characterMedia_nodes_title(
      [Function(GStaffQueryData_Staff_characterMedia_nodes_titleBuilder b)
          updates]) = _$GStaffQueryData_Staff_characterMedia_nodes_title;

  static void _initializeBuilder(
          GStaffQueryData_Staff_characterMedia_nodes_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  String? get english;
  static Serializer<GStaffQueryData_Staff_characterMedia_nodes_title>
      get serializer =>
          _$gStaffQueryDataStaffCharacterMediaNodesTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characterMedia_nodes_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characterMedia_nodes_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characterMedia_nodes_title.serializer,
        json,
      );
}

abstract class GStaffQueryData_Staff_characterMedia_nodes_coverImage
    implements
        Built<GStaffQueryData_Staff_characterMedia_nodes_coverImage,
            GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder> {
  GStaffQueryData_Staff_characterMedia_nodes_coverImage._();

  factory GStaffQueryData_Staff_characterMedia_nodes_coverImage(
      [Function(GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder b)
          updates]) = _$GStaffQueryData_Staff_characterMedia_nodes_coverImage;

  static void _initializeBuilder(
          GStaffQueryData_Staff_characterMedia_nodes_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  String? get large;
  static Serializer<GStaffQueryData_Staff_characterMedia_nodes_coverImage>
      get serializer =>
          _$gStaffQueryDataStaffCharacterMediaNodesCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffQueryData_Staff_characterMedia_nodes_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStaffQueryData_Staff_characterMedia_nodes_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffQueryData_Staff_characterMedia_nodes_coverImage.serializer,
        json,
      );
}
