// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'FavMangaQuery.data.gql.g.dart';

abstract class GFavMangaQueryData
    implements Built<GFavMangaQueryData, GFavMangaQueryDataBuilder> {
  GFavMangaQueryData._();

  factory GFavMangaQueryData([Function(GFavMangaQueryDataBuilder b) updates]) =
      _$GFavMangaQueryData;

  static void _initializeBuilder(GFavMangaQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFavMangaQueryData_Viewer? get Viewer;
  static Serializer<GFavMangaQueryData> get serializer =>
      _$gFavMangaQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData.serializer,
        json,
      );
}

abstract class GFavMangaQueryData_Viewer
    implements
        Built<GFavMangaQueryData_Viewer, GFavMangaQueryData_ViewerBuilder> {
  GFavMangaQueryData_Viewer._();

  factory GFavMangaQueryData_Viewer(
          [Function(GFavMangaQueryData_ViewerBuilder b) updates]) =
      _$GFavMangaQueryData_Viewer;

  static void _initializeBuilder(GFavMangaQueryData_ViewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GFavMangaQueryData_Viewer_favourites? get favourites;
  static Serializer<GFavMangaQueryData_Viewer> get serializer =>
      _$gFavMangaQueryDataViewerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData_Viewer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData_Viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData_Viewer.serializer,
        json,
      );
}

abstract class GFavMangaQueryData_Viewer_favourites
    implements
        Built<GFavMangaQueryData_Viewer_favourites,
            GFavMangaQueryData_Viewer_favouritesBuilder> {
  GFavMangaQueryData_Viewer_favourites._();

  factory GFavMangaQueryData_Viewer_favourites(
          [Function(GFavMangaQueryData_Viewer_favouritesBuilder b) updates]) =
      _$GFavMangaQueryData_Viewer_favourites;

  static void _initializeBuilder(
          GFavMangaQueryData_Viewer_favouritesBuilder b) =>
      b..G__typename = 'Favourites';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFavMangaQueryData_Viewer_favourites_manga? get manga;
  static Serializer<GFavMangaQueryData_Viewer_favourites> get serializer =>
      _$gFavMangaQueryDataViewerFavouritesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData_Viewer_favourites.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData_Viewer_favourites? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData_Viewer_favourites.serializer,
        json,
      );
}

abstract class GFavMangaQueryData_Viewer_favourites_manga
    implements
        Built<GFavMangaQueryData_Viewer_favourites_manga,
            GFavMangaQueryData_Viewer_favourites_mangaBuilder> {
  GFavMangaQueryData_Viewer_favourites_manga._();

  factory GFavMangaQueryData_Viewer_favourites_manga(
      [Function(GFavMangaQueryData_Viewer_favourites_mangaBuilder b)
          updates]) = _$GFavMangaQueryData_Viewer_favourites_manga;

  static void _initializeBuilder(
          GFavMangaQueryData_Viewer_favourites_mangaBuilder b) =>
      b..G__typename = 'MediaConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFavMangaQueryData_Viewer_favourites_manga_pageInfo? get pageInfo;
  BuiltList<GFavMangaQueryData_Viewer_favourites_manga_nodes?>? get nodes;
  static Serializer<GFavMangaQueryData_Viewer_favourites_manga>
      get serializer => _$gFavMangaQueryDataViewerFavouritesMangaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData_Viewer_favourites_manga.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData_Viewer_favourites_manga? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData_Viewer_favourites_manga.serializer,
        json,
      );
}

abstract class GFavMangaQueryData_Viewer_favourites_manga_pageInfo
    implements
        Built<GFavMangaQueryData_Viewer_favourites_manga_pageInfo,
            GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder> {
  GFavMangaQueryData_Viewer_favourites_manga_pageInfo._();

  factory GFavMangaQueryData_Viewer_favourites_manga_pageInfo(
      [Function(GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder b)
          updates]) = _$GFavMangaQueryData_Viewer_favourites_manga_pageInfo;

  static void _initializeBuilder(
          GFavMangaQueryData_Viewer_favourites_manga_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get currentPage;
  int? get perPage;
  static Serializer<GFavMangaQueryData_Viewer_favourites_manga_pageInfo>
      get serializer =>
          _$gFavMangaQueryDataViewerFavouritesMangaPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData_Viewer_favourites_manga_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_pageInfo.serializer,
        json,
      );
}

abstract class GFavMangaQueryData_Viewer_favourites_manga_nodes
    implements
        Built<GFavMangaQueryData_Viewer_favourites_manga_nodes,
            GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder> {
  GFavMangaQueryData_Viewer_favourites_manga_nodes._();

  factory GFavMangaQueryData_Viewer_favourites_manga_nodes(
      [Function(GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder b)
          updates]) = _$GFavMangaQueryData_Viewer_favourites_manga_nodes;

  static void _initializeBuilder(
          GFavMangaQueryData_Viewer_favourites_manga_nodesBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GFavMangaQueryData_Viewer_favourites_manga_nodes_title? get title;
  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage? get coverImage;
  static Serializer<GFavMangaQueryData_Viewer_favourites_manga_nodes>
      get serializer =>
          _$gFavMangaQueryDataViewerFavouritesMangaNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData_Viewer_favourites_manga_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_nodes.serializer,
        json,
      );
}

abstract class GFavMangaQueryData_Viewer_favourites_manga_nodes_title
    implements
        Built<GFavMangaQueryData_Viewer_favourites_manga_nodes_title,
            GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder> {
  GFavMangaQueryData_Viewer_favourites_manga_nodes_title._();

  factory GFavMangaQueryData_Viewer_favourites_manga_nodes_title(
      [Function(GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder b)
          updates]) = _$GFavMangaQueryData_Viewer_favourites_manga_nodes_title;

  static void _initializeBuilder(
          GFavMangaQueryData_Viewer_favourites_manga_nodes_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<GFavMangaQueryData_Viewer_favourites_manga_nodes_title>
      get serializer =>
          _$gFavMangaQueryDataViewerFavouritesMangaNodesTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_nodes_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData_Viewer_favourites_manga_nodes_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_nodes_title.serializer,
        json,
      );
}

abstract class GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage
    implements
        Built<GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage,
            GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder> {
  GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage._();

  factory GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage(
      [Function(
              GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder
                  b)
          updates]) = _$GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage;

  static void _initializeBuilder(
          GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  String? get large;
  String? get medium;
  static Serializer<GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage>
      get serializer =>
          _$gFavMangaQueryDataViewerFavouritesMangaNodesCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFavMangaQueryData_Viewer_favourites_manga_nodes_coverImage.serializer,
        json,
      );
}
