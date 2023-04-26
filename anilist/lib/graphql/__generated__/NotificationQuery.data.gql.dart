// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:anilist/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i2;

part 'NotificationQuery.data.gql.g.dart';

abstract class GNotificationsQueryData
    implements Built<GNotificationsQueryData, GNotificationsQueryDataBuilder> {
  GNotificationsQueryData._();

  factory GNotificationsQueryData(
          [Function(GNotificationsQueryDataBuilder b) updates]) =
      _$GNotificationsQueryData;

  static void _initializeBuilder(GNotificationsQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNotificationsQueryData_Page? get Page;
  GNotificationsQueryData_Viewer? get Viewer;
  static Serializer<GNotificationsQueryData> get serializer =>
      _$gNotificationsQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsQueryData.serializer,
        json,
      );
}

abstract class GNotificationsQueryData_Page
    implements
        Built<GNotificationsQueryData_Page,
            GNotificationsQueryData_PageBuilder> {
  GNotificationsQueryData_Page._();

  factory GNotificationsQueryData_Page(
          [Function(GNotificationsQueryData_PageBuilder b) updates]) =
      _$GNotificationsQueryData_Page;

  static void _initializeBuilder(GNotificationsQueryData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNotificationsQueryData_Page_pageInfo? get pageInfo;
  BuiltList<GNotificationsQueryData_Page_notifications?>? get notifications;
  static Serializer<GNotificationsQueryData_Page> get serializer =>
      _$gNotificationsQueryDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsQueryData_Page.serializer,
        json,
      );
}

abstract class GNotificationsQueryData_Page_pageInfo
    implements
        Built<GNotificationsQueryData_Page_pageInfo,
            GNotificationsQueryData_Page_pageInfoBuilder> {
  GNotificationsQueryData_Page_pageInfo._();

  factory GNotificationsQueryData_Page_pageInfo(
          [Function(GNotificationsQueryData_Page_pageInfoBuilder b) updates]) =
      _$GNotificationsQueryData_Page_pageInfo;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GNotificationsQueryData_Page_pageInfo> get serializer =>
      _$gNotificationsQueryDataPagePageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsQueryData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GNotificationsQueryData_Page_notifications {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GNotificationsQueryData_Page_notifications>
      get serializer => _i2.InlineFragmentSerializer<
              GNotificationsQueryData_Page_notifications>(
            'GNotificationsQueryData_Page_notifications',
            GNotificationsQueryData_Page_notifications__base,
            {
              'AiringNotification':
                  GNotificationsQueryData_Page_notifications__asAiringNotification,
              'RelatedMediaAdditionNotification':
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification,
            },
          );
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsQueryData_Page_notifications.serializer,
        json,
      );
}

abstract class GNotificationsQueryData_Page_notifications__base
    implements
        Built<GNotificationsQueryData_Page_notifications__base,
            GNotificationsQueryData_Page_notifications__baseBuilder>,
        GNotificationsQueryData_Page_notifications {
  GNotificationsQueryData_Page_notifications__base._();

  factory GNotificationsQueryData_Page_notifications__base(
      [Function(GNotificationsQueryData_Page_notifications__baseBuilder b)
          updates]) = _$GNotificationsQueryData_Page_notifications__base;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__baseBuilder b) =>
      b..G__typename = 'NotificationUnion';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GNotificationsQueryData_Page_notifications__base>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsBaseSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__base.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__base? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsQueryData_Page_notifications__base.serializer,
        json,
      );
}

abstract class GNotificationsQueryData_Page_notifications__asAiringNotification
    implements
        Built<GNotificationsQueryData_Page_notifications__asAiringNotification,
            GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder>,
        GNotificationsQueryData_Page_notifications {
  GNotificationsQueryData_Page_notifications__asAiringNotification._();

  factory GNotificationsQueryData_Page_notifications__asAiringNotification(
          [Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asAiringNotification;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder
              b) =>
      b..G__typename = 'AiringNotification';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i3.GNotificationType? get type;
  int get animeId;
  int get episode;
  BuiltList<String?>? get contexts;
  int? get createdAt;
  GNotificationsQueryData_Page_notifications__asAiringNotification_media?
      get media;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asAiringNotification>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsAiringNotificationSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asAiringNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asAiringNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asAiringNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Page_notifications__asAiringNotification_media
    implements
        Built<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media,
            GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder> {
  GNotificationsQueryData_Page_notifications__asAiringNotification_media._();

  factory GNotificationsQueryData_Page_notifications__asAiringNotification_media(
          [Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asAiringNotification_media;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder
              b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_title?
      get title;
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage?
      get coverImage;
  _i3.GMediaType? get type;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asAiringNotification_media>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsAiringNotificationMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asAiringNotification_media
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asAiringNotification_media?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asAiringNotification_media
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
    implements
        Built<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_title,
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder> {
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_title._();

  factory GNotificationsQueryData_Page_notifications__asAiringNotification_media_title(
          [Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asAiringNotification_media_title>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsAiringNotificationMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asAiringNotification_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
    implements
        Built<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage,
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder> {
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage._();

  factory GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage(
          [Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsAiringNotificationMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
    implements
        Built<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder>,
        GNotificationsQueryData_Page_notifications {
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification._();

  factory GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification(
          [Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder
              b) =>
      b..G__typename = 'RelatedMediaAdditionNotification';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i3.GNotificationType? get type;
  int get mediaId;
  String? get context;
  int? get createdAt;
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media?
      get media;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
    implements
        Built<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder> {
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media._();

  factory GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media(
          [Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
              b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title?
      get title;
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage?
      get coverImage;
  _i3.GMediaType? get type;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
    implements
        Built<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder> {
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title._();

  factory GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title(
          [Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
    implements
        Built<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder> {
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage._();

  factory GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage(
          [Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder
                      b)
              updates]) =
      _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage;

  static void _initializeBuilder(
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage>
      get serializer =>
          _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
                .serializer,
            json,
          );
}

abstract class GNotificationsQueryData_Viewer
    implements
        Built<GNotificationsQueryData_Viewer,
            GNotificationsQueryData_ViewerBuilder> {
  GNotificationsQueryData_Viewer._();

  factory GNotificationsQueryData_Viewer(
          [Function(GNotificationsQueryData_ViewerBuilder b) updates]) =
      _$GNotificationsQueryData_Viewer;

  static void _initializeBuilder(GNotificationsQueryData_ViewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get unreadNotificationCount;
  static Serializer<GNotificationsQueryData_Viewer> get serializer =>
      _$gNotificationsQueryDataViewerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsQueryData_Viewer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationsQueryData_Viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsQueryData_Viewer.serializer,
        json,
      );
}
