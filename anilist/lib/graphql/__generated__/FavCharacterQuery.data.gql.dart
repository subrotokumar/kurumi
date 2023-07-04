// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'FavCharacterQuery.data.gql.g.dart';

abstract class GFavCharacterQueryData
    implements Built<GFavCharacterQueryData, GFavCharacterQueryDataBuilder> {
  GFavCharacterQueryData._();

  factory GFavCharacterQueryData(
          [Function(GFavCharacterQueryDataBuilder b) updates]) =
      _$GFavCharacterQueryData;

  static void _initializeBuilder(GFavCharacterQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFavCharacterQueryData_Viewer? get Viewer;
  static Serializer<GFavCharacterQueryData> get serializer =>
      _$gFavCharacterQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavCharacterQueryData.serializer,
        json,
      );
}

abstract class GFavCharacterQueryData_Viewer
    implements
        Built<GFavCharacterQueryData_Viewer,
            GFavCharacterQueryData_ViewerBuilder> {
  GFavCharacterQueryData_Viewer._();

  factory GFavCharacterQueryData_Viewer(
          [Function(GFavCharacterQueryData_ViewerBuilder b) updates]) =
      _$GFavCharacterQueryData_Viewer;

  static void _initializeBuilder(GFavCharacterQueryData_ViewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GFavCharacterQueryData_Viewer_favourites? get favourites;
  static Serializer<GFavCharacterQueryData_Viewer> get serializer =>
      _$gFavCharacterQueryDataViewerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData_Viewer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData_Viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavCharacterQueryData_Viewer.serializer,
        json,
      );
}

abstract class GFavCharacterQueryData_Viewer_favourites
    implements
        Built<GFavCharacterQueryData_Viewer_favourites,
            GFavCharacterQueryData_Viewer_favouritesBuilder> {
  GFavCharacterQueryData_Viewer_favourites._();

  factory GFavCharacterQueryData_Viewer_favourites(
      [Function(GFavCharacterQueryData_Viewer_favouritesBuilder b)
          updates]) = _$GFavCharacterQueryData_Viewer_favourites;

  static void _initializeBuilder(
          GFavCharacterQueryData_Viewer_favouritesBuilder b) =>
      b..G__typename = 'Favourites';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFavCharacterQueryData_Viewer_favourites_characters? get characters;
  static Serializer<GFavCharacterQueryData_Viewer_favourites> get serializer =>
      _$gFavCharacterQueryDataViewerFavouritesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData_Viewer_favourites.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData_Viewer_favourites? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavCharacterQueryData_Viewer_favourites.serializer,
        json,
      );
}

abstract class GFavCharacterQueryData_Viewer_favourites_characters
    implements
        Built<GFavCharacterQueryData_Viewer_favourites_characters,
            GFavCharacterQueryData_Viewer_favourites_charactersBuilder> {
  GFavCharacterQueryData_Viewer_favourites_characters._();

  factory GFavCharacterQueryData_Viewer_favourites_characters(
      [Function(GFavCharacterQueryData_Viewer_favourites_charactersBuilder b)
          updates]) = _$GFavCharacterQueryData_Viewer_favourites_characters;

  static void _initializeBuilder(
          GFavCharacterQueryData_Viewer_favourites_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFavCharacterQueryData_Viewer_favourites_characters_pageInfo? get pageInfo;
  BuiltList<GFavCharacterQueryData_Viewer_favourites_characters_nodes?>?
      get nodes;
  static Serializer<GFavCharacterQueryData_Viewer_favourites_characters>
      get serializer =>
          _$gFavCharacterQueryDataViewerFavouritesCharactersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData_Viewer_favourites_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters.serializer,
        json,
      );
}

abstract class GFavCharacterQueryData_Viewer_favourites_characters_pageInfo
    implements
        Built<GFavCharacterQueryData_Viewer_favourites_characters_pageInfo,
            GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder> {
  GFavCharacterQueryData_Viewer_favourites_characters_pageInfo._();

  factory GFavCharacterQueryData_Viewer_favourites_characters_pageInfo(
          [Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder
                      b)
              updates]) =
      _$GFavCharacterQueryData_Viewer_favourites_characters_pageInfo;

  static void _initializeBuilder(
          GFavCharacterQueryData_Viewer_favourites_characters_pageInfoBuilder
              b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<
          GFavCharacterQueryData_Viewer_favourites_characters_pageInfo>
      get serializer =>
          _$gFavCharacterQueryDataViewerFavouritesCharactersPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData_Viewer_favourites_characters_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters_pageInfo.serializer,
        json,
      );
}

abstract class GFavCharacterQueryData_Viewer_favourites_characters_nodes
    implements
        Built<GFavCharacterQueryData_Viewer_favourites_characters_nodes,
            GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder> {
  GFavCharacterQueryData_Viewer_favourites_characters_nodes._();

  factory GFavCharacterQueryData_Viewer_favourites_characters_nodes(
      [Function(
              GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder
                  b)
          updates]) = _$GFavCharacterQueryData_Viewer_favourites_characters_nodes;

  static void _initializeBuilder(
          GFavCharacterQueryData_Viewer_favourites_characters_nodesBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_name? get name;
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_image? get image;
  static Serializer<GFavCharacterQueryData_Viewer_favourites_characters_nodes>
      get serializer =>
          _$gFavCharacterQueryDataViewerFavouritesCharactersNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData_Viewer_favourites_characters_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters_nodes.serializer,
        json,
      );
}

abstract class GFavCharacterQueryData_Viewer_favourites_characters_nodes_name
    implements
        Built<GFavCharacterQueryData_Viewer_favourites_characters_nodes_name,
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder> {
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_name._();

  factory GFavCharacterQueryData_Viewer_favourites_characters_nodes_name(
          [Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder
                      b)
              updates]) =
      _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_name;

  static void _initializeBuilder(
          GFavCharacterQueryData_Viewer_favourites_characters_nodes_nameBuilder
              b) =>
      b..G__typename = 'CharacterName';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get full;
  static Serializer<
          GFavCharacterQueryData_Viewer_favourites_characters_nodes_name>
      get serializer =>
          _$gFavCharacterQueryDataViewerFavouritesCharactersNodesNameSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters_nodes_name
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData_Viewer_favourites_characters_nodes_name?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_name
                .serializer,
            json,
          );
}

abstract class GFavCharacterQueryData_Viewer_favourites_characters_nodes_image
    implements
        Built<GFavCharacterQueryData_Viewer_favourites_characters_nodes_image,
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder> {
  GFavCharacterQueryData_Viewer_favourites_characters_nodes_image._();

  factory GFavCharacterQueryData_Viewer_favourites_characters_nodes_image(
          [Function(
                  GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder
                      b)
              updates]) =
      _$GFavCharacterQueryData_Viewer_favourites_characters_nodes_image;

  static void _initializeBuilder(
          GFavCharacterQueryData_Viewer_favourites_characters_nodes_imageBuilder
              b) =>
      b..G__typename = 'CharacterImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get medium;
  String? get large;
  static Serializer<
          GFavCharacterQueryData_Viewer_favourites_characters_nodes_image>
      get serializer =>
          _$gFavCharacterQueryDataViewerFavouritesCharactersNodesImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavCharacterQueryData_Viewer_favourites_characters_nodes_image
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavCharacterQueryData_Viewer_favourites_characters_nodes_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GFavCharacterQueryData_Viewer_favourites_characters_nodes_image
                .serializer,
            json,
          );
}
