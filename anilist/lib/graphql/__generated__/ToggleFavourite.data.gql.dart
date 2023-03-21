// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ToggleFavourite.data.gql.g.dart';

abstract class GToggleFavouriteData
    implements Built<GToggleFavouriteData, GToggleFavouriteDataBuilder> {
  GToggleFavouriteData._();

  factory GToggleFavouriteData(
          [Function(GToggleFavouriteDataBuilder b) updates]) =
      _$GToggleFavouriteData;

  static void _initializeBuilder(GToggleFavouriteDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavouriteData_ToggleFavourite? get ToggleFavourite;
  static Serializer<GToggleFavouriteData> get serializer =>
      _$gToggleFavouriteDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite
    implements
        Built<GToggleFavouriteData_ToggleFavourite,
            GToggleFavouriteData_ToggleFavouriteBuilder> {
  GToggleFavouriteData_ToggleFavourite._();

  factory GToggleFavouriteData_ToggleFavourite(
          [Function(GToggleFavouriteData_ToggleFavouriteBuilder b) updates]) =
      _$GToggleFavouriteData_ToggleFavourite;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavouriteBuilder b) =>
      b..G__typename = 'Favourites';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavouriteData_ToggleFavourite_anime? get anime;
  GToggleFavouriteData_ToggleFavourite_manga? get manga;
  GToggleFavouriteData_ToggleFavourite_characters? get characters;
  static Serializer<GToggleFavouriteData_ToggleFavourite> get serializer =>
      _$gToggleFavouriteDataToggleFavouriteSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite_anime
    implements
        Built<GToggleFavouriteData_ToggleFavourite_anime,
            GToggleFavouriteData_ToggleFavourite_animeBuilder> {
  GToggleFavouriteData_ToggleFavourite_anime._();

  factory GToggleFavouriteData_ToggleFavourite_anime(
      [Function(GToggleFavouriteData_ToggleFavourite_animeBuilder b)
          updates]) = _$GToggleFavouriteData_ToggleFavourite_anime;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavourite_animeBuilder b) =>
      b..G__typename = 'MediaConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GToggleFavouriteData_ToggleFavourite_anime_nodes?>? get nodes;
  static Serializer<GToggleFavouriteData_ToggleFavourite_anime>
      get serializer => _$gToggleFavouriteDataToggleFavouriteAnimeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite_anime.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite_anime? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite_anime.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite_anime_nodes
    implements
        Built<GToggleFavouriteData_ToggleFavourite_anime_nodes,
            GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder> {
  GToggleFavouriteData_ToggleFavourite_anime_nodes._();

  factory GToggleFavouriteData_ToggleFavourite_anime_nodes(
      [Function(GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder b)
          updates]) = _$GToggleFavouriteData_ToggleFavourite_anime_nodes;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavourite_anime_nodesBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  bool get isFavourite;
  static Serializer<GToggleFavouriteData_ToggleFavourite_anime_nodes>
      get serializer =>
          _$gToggleFavouriteDataToggleFavouriteAnimeNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite_anime_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite_anime_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite_anime_nodes.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite_manga
    implements
        Built<GToggleFavouriteData_ToggleFavourite_manga,
            GToggleFavouriteData_ToggleFavourite_mangaBuilder> {
  GToggleFavouriteData_ToggleFavourite_manga._();

  factory GToggleFavouriteData_ToggleFavourite_manga(
      [Function(GToggleFavouriteData_ToggleFavourite_mangaBuilder b)
          updates]) = _$GToggleFavouriteData_ToggleFavourite_manga;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavourite_mangaBuilder b) =>
      b..G__typename = 'MediaConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GToggleFavouriteData_ToggleFavourite_manga_nodes?>? get nodes;
  static Serializer<GToggleFavouriteData_ToggleFavourite_manga>
      get serializer => _$gToggleFavouriteDataToggleFavouriteMangaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite_manga.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite_manga? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite_manga.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite_manga_nodes
    implements
        Built<GToggleFavouriteData_ToggleFavourite_manga_nodes,
            GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder> {
  GToggleFavouriteData_ToggleFavourite_manga_nodes._();

  factory GToggleFavouriteData_ToggleFavourite_manga_nodes(
      [Function(GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder b)
          updates]) = _$GToggleFavouriteData_ToggleFavourite_manga_nodes;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavourite_manga_nodesBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  bool get isFavourite;
  static Serializer<GToggleFavouriteData_ToggleFavourite_manga_nodes>
      get serializer =>
          _$gToggleFavouriteDataToggleFavouriteMangaNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite_manga_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite_manga_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite_manga_nodes.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite_characters
    implements
        Built<GToggleFavouriteData_ToggleFavourite_characters,
            GToggleFavouriteData_ToggleFavourite_charactersBuilder> {
  GToggleFavouriteData_ToggleFavourite_characters._();

  factory GToggleFavouriteData_ToggleFavourite_characters(
      [Function(GToggleFavouriteData_ToggleFavourite_charactersBuilder b)
          updates]) = _$GToggleFavouriteData_ToggleFavourite_characters;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavourite_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavouriteData_ToggleFavourite_characters_pageInfo? get pageInfo;
  BuiltList<GToggleFavouriteData_ToggleFavourite_characters_edges?>? get edges;
  static Serializer<GToggleFavouriteData_ToggleFavourite_characters>
      get serializer =>
          _$gToggleFavouriteDataToggleFavouriteCharactersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite_characters.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite_characters.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite_characters_pageInfo
    implements
        Built<GToggleFavouriteData_ToggleFavourite_characters_pageInfo,
            GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder> {
  GToggleFavouriteData_ToggleFavourite_characters_pageInfo._();

  factory GToggleFavouriteData_ToggleFavourite_characters_pageInfo(
      [Function(
              GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder b)
          updates]) = _$GToggleFavouriteData_ToggleFavourite_characters_pageInfo;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavourite_characters_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GToggleFavouriteData_ToggleFavourite_characters_pageInfo>
      get serializer =>
          _$gToggleFavouriteDataToggleFavouriteCharactersPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite_characters_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite_characters_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite_characters_pageInfo.serializer,
        json,
      );
}

abstract class GToggleFavouriteData_ToggleFavourite_characters_edges
    implements
        Built<GToggleFavouriteData_ToggleFavourite_characters_edges,
            GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder> {
  GToggleFavouriteData_ToggleFavourite_characters_edges._();

  factory GToggleFavouriteData_ToggleFavourite_characters_edges(
      [Function(GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder b)
          updates]) = _$GToggleFavouriteData_ToggleFavourite_characters_edges;

  static void _initializeBuilder(
          GToggleFavouriteData_ToggleFavourite_characters_edgesBuilder b) =>
      b..G__typename = 'CharacterEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  static Serializer<GToggleFavouriteData_ToggleFavourite_characters_edges>
      get serializer =>
          _$gToggleFavouriteDataToggleFavouriteCharactersEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavouriteData_ToggleFavourite_characters_edges.serializer,
        this,
      ) as Map<String, dynamic>);
  static GToggleFavouriteData_ToggleFavourite_characters_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavouriteData_ToggleFavourite_characters_edges.serializer,
        json,
      );
}
