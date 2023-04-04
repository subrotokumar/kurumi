// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ReviewQuery.data.gql.g.dart';

abstract class GReviewQueryData
    implements Built<GReviewQueryData, GReviewQueryDataBuilder> {
  GReviewQueryData._();

  factory GReviewQueryData([Function(GReviewQueryDataBuilder b) updates]) =
      _$GReviewQueryData;

  static void _initializeBuilder(GReviewQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReviewQueryData_Page? get Page;
  static Serializer<GReviewQueryData> get serializer =>
      _$gReviewQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewQueryData.serializer,
        json,
      );
}

abstract class GReviewQueryData_Page
    implements Built<GReviewQueryData_Page, GReviewQueryData_PageBuilder> {
  GReviewQueryData_Page._();

  factory GReviewQueryData_Page(
          [Function(GReviewQueryData_PageBuilder b) updates]) =
      _$GReviewQueryData_Page;

  static void _initializeBuilder(GReviewQueryData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GReviewQueryData_Page_reviews?>? get reviews;
  static Serializer<GReviewQueryData_Page> get serializer =>
      _$gReviewQueryDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewQueryData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewQueryData_Page.serializer,
        json,
      );
}

abstract class GReviewQueryData_Page_reviews
    implements
        Built<GReviewQueryData_Page_reviews,
            GReviewQueryData_Page_reviewsBuilder> {
  GReviewQueryData_Page_reviews._();

  factory GReviewQueryData_Page_reviews(
          [Function(GReviewQueryData_Page_reviewsBuilder b) updates]) =
      _$GReviewQueryData_Page_reviews;

  static void _initializeBuilder(GReviewQueryData_Page_reviewsBuilder b) =>
      b..G__typename = 'Review';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get userId;
  GReviewQueryData_Page_reviews_user? get user;
  int? get score;
  String? get summary;
  int? get ratingAmount;
  int? get rating;
  String? get body;
  GReviewQueryData_Page_reviews_media? get media;
  static Serializer<GReviewQueryData_Page_reviews> get serializer =>
      _$gReviewQueryDataPageReviewsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewQueryData_Page_reviews.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryData_Page_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewQueryData_Page_reviews.serializer,
        json,
      );
}

abstract class GReviewQueryData_Page_reviews_user
    implements
        Built<GReviewQueryData_Page_reviews_user,
            GReviewQueryData_Page_reviews_userBuilder> {
  GReviewQueryData_Page_reviews_user._();

  factory GReviewQueryData_Page_reviews_user(
          [Function(GReviewQueryData_Page_reviews_userBuilder b) updates]) =
      _$GReviewQueryData_Page_reviews_user;

  static void _initializeBuilder(GReviewQueryData_Page_reviews_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GReviewQueryData_Page_reviews_user> get serializer =>
      _$gReviewQueryDataPageReviewsUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewQueryData_Page_reviews_user.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryData_Page_reviews_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewQueryData_Page_reviews_user.serializer,
        json,
      );
}

abstract class GReviewQueryData_Page_reviews_media
    implements
        Built<GReviewQueryData_Page_reviews_media,
            GReviewQueryData_Page_reviews_mediaBuilder> {
  GReviewQueryData_Page_reviews_media._();

  factory GReviewQueryData_Page_reviews_media(
          [Function(GReviewQueryData_Page_reviews_mediaBuilder b) updates]) =
      _$GReviewQueryData_Page_reviews_media;

  static void _initializeBuilder(
          GReviewQueryData_Page_reviews_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GReviewQueryData_Page_reviews_media_title? get title;
  String? get bannerImage;
  GReviewQueryData_Page_reviews_media_coverImage? get coverImage;
  static Serializer<GReviewQueryData_Page_reviews_media> get serializer =>
      _$gReviewQueryDataPageReviewsMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewQueryData_Page_reviews_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryData_Page_reviews_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewQueryData_Page_reviews_media.serializer,
        json,
      );
}

abstract class GReviewQueryData_Page_reviews_media_title
    implements
        Built<GReviewQueryData_Page_reviews_media_title,
            GReviewQueryData_Page_reviews_media_titleBuilder> {
  GReviewQueryData_Page_reviews_media_title._();

  factory GReviewQueryData_Page_reviews_media_title(
      [Function(GReviewQueryData_Page_reviews_media_titleBuilder b)
          updates]) = _$GReviewQueryData_Page_reviews_media_title;

  static void _initializeBuilder(
          GReviewQueryData_Page_reviews_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<GReviewQueryData_Page_reviews_media_title> get serializer =>
      _$gReviewQueryDataPageReviewsMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewQueryData_Page_reviews_media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryData_Page_reviews_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewQueryData_Page_reviews_media_title.serializer,
        json,
      );
}

abstract class GReviewQueryData_Page_reviews_media_coverImage
    implements
        Built<GReviewQueryData_Page_reviews_media_coverImage,
            GReviewQueryData_Page_reviews_media_coverImageBuilder> {
  GReviewQueryData_Page_reviews_media_coverImage._();

  factory GReviewQueryData_Page_reviews_media_coverImage(
      [Function(GReviewQueryData_Page_reviews_media_coverImageBuilder b)
          updates]) = _$GReviewQueryData_Page_reviews_media_coverImage;

  static void _initializeBuilder(
          GReviewQueryData_Page_reviews_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  String? get large;
  String? get color;
  static Serializer<GReviewQueryData_Page_reviews_media_coverImage>
      get serializer => _$gReviewQueryDataPageReviewsMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewQueryData_Page_reviews_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReviewQueryData_Page_reviews_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewQueryData_Page_reviews_media_coverImage.serializer,
        json,
      );
}
