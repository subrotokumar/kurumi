// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NotificationQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNotificationsQueryData> _$gNotificationsQueryDataSerializer =
    new _$GNotificationsQueryDataSerializer();
Serializer<GNotificationsQueryData_Page>
    _$gNotificationsQueryDataPageSerializer =
    new _$GNotificationsQueryData_PageSerializer();
Serializer<GNotificationsQueryData_Page_pageInfo>
    _$gNotificationsQueryDataPagePageInfoSerializer =
    new _$GNotificationsQueryData_Page_pageInfoSerializer();
Serializer<GNotificationsQueryData_Page_notifications__base>
    _$gNotificationsQueryDataPageNotificationsBaseSerializer =
    new _$GNotificationsQueryData_Page_notifications__baseSerializer();
Serializer<GNotificationsQueryData_Page_notifications__asAiringNotification>
    _$gNotificationsQueryDataPageNotificationsAsAiringNotificationSerializer =
    new _$GNotificationsQueryData_Page_notifications__asAiringNotificationSerializer();
Serializer<
        GNotificationsQueryData_Page_notifications__asAiringNotification_media>
    _$gNotificationsQueryDataPageNotificationsAsAiringNotificationMediaSerializer =
    new _$GNotificationsQueryData_Page_notifications__asAiringNotification_mediaSerializer();
Serializer<
        GNotificationsQueryData_Page_notifications__asAiringNotification_media_title>
    _$gNotificationsQueryDataPageNotificationsAsAiringNotificationMediaTitleSerializer =
    new _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleSerializer();
Serializer<
        GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage>
    _$gNotificationsQueryDataPageNotificationsAsAiringNotificationMediaCoverImageSerializer =
    new _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageSerializer();
Serializer<
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification>
    _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationSerializer =
    new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationSerializer();
Serializer<
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media>
    _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationMediaSerializer =
    new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaSerializer();
Serializer<
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title>
    _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationMediaTitleSerializer =
    new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleSerializer();
Serializer<
        GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage>
    _$gNotificationsQueryDataPageNotificationsAsRelatedMediaAdditionNotificationMediaCoverImageSerializer =
    new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageSerializer();
Serializer<GNotificationsQueryData_Viewer>
    _$gNotificationsQueryDataViewerSerializer =
    new _$GNotificationsQueryData_ViewerSerializer();

class _$GNotificationsQueryDataSerializer
    implements StructuredSerializer<GNotificationsQueryData> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData,
    _$GNotificationsQueryData
  ];
  @override
  final String wireName = 'GNotificationsQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationsQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GNotificationsQueryData_Page)));
    }
    value = object.Viewer;
    if (value != null) {
      result
        ..add('Viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GNotificationsQueryData_Viewer)));
    }
    return result;
  }

  @override
  GNotificationsQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationsQueryDataBuilder();

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
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GNotificationsQueryData_Page))!
              as GNotificationsQueryData_Page);
          break;
        case 'Viewer':
          result.Viewer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GNotificationsQueryData_Viewer))!
              as GNotificationsQueryData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData_PageSerializer
    implements StructuredSerializer<GNotificationsQueryData_Page> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page,
    _$GNotificationsQueryData_Page
  ];
  @override
  final String wireName = 'GNotificationsQueryData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationsQueryData_Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GNotificationsQueryData_Page_pageInfo)));
    }
    value = object.notifications;
    if (value != null) {
      result
        ..add('notifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GNotificationsQueryData_Page_notifications)
            ])));
    }
    return result;
  }

  @override
  GNotificationsQueryData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationsQueryData_PageBuilder();

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
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GNotificationsQueryData_Page_pageInfo))!
              as GNotificationsQueryData_Page_pageInfo);
          break;
        case 'notifications':
          result.notifications.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GNotificationsQueryData_Page_notifications)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData_Page_pageInfoSerializer
    implements StructuredSerializer<GNotificationsQueryData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_pageInfo,
    _$GNotificationsQueryData_Page_pageInfo
  ];
  @override
  final String wireName = 'GNotificationsQueryData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationsQueryData_Page_pageInfo object,
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
  GNotificationsQueryData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationsQueryData_Page_pageInfoBuilder();

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

class _$GNotificationsQueryData_Page_notifications__baseSerializer
    implements
        StructuredSerializer<GNotificationsQueryData_Page_notifications__base> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__base,
    _$GNotificationsQueryData_Page_notifications__base
  ];
  @override
  final String wireName = 'GNotificationsQueryData_Page_notifications__base';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GNotificationsQueryData_Page_notifications__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GNotificationsQueryData_Page_notifications__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__baseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData_Page_notifications__asAiringNotificationSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asAiringNotification> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asAiringNotification,
    _$GNotificationsQueryData_Page_notifications__asAiringNotification
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asAiringNotification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GNotificationsQueryData_Page_notifications__asAiringNotification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'animeId',
      serializers.serialize(object.animeId, specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GNotificationType)));
    }
    value = object.contexts;
    if (value != null) {
      result
        ..add('contexts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GNotificationsQueryData_Page_notifications__asAiringNotification_media)));
    }
    return result;
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GNotificationType))
              as _i3.GNotificationType?;
          break;
        case 'animeId':
          result.animeId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'contexts':
          result.contexts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GNotificationsQueryData_Page_notifications__asAiringNotification_media))!
              as GNotificationsQueryData_Page_notifications__asAiringNotification_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData_Page_notifications__asAiringNotification_mediaSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asAiringNotification_media,
    _$GNotificationsQueryData_Page_notifications__asAiringNotification_media
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asAiringNotification_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GNotificationsQueryData_Page_notifications__asAiringNotification_media
          object,
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
                GNotificationsQueryData_Page_notifications__asAiringNotification_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
    }
    return result;
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder();

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
                      GNotificationsQueryData_Page_notifications__asAiringNotification_media_title))!
              as GNotificationsQueryData_Page_notifications__asAiringNotification_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage))!
              as GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_title> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asAiringNotification_media_title,
    _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asAiringNotification_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
          object,
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
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder();

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

class _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage,
    _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
          object,
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
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder();

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

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification,
    _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'mediaId',
      serializers.serialize(object.mediaId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GNotificationType)));
    }
    value = object.context;
    if (value != null) {
      result
        ..add('context')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media)));
    }
    return result;
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GNotificationType))
              as _i3.GNotificationType?;
          break;
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'context':
          result.context = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media))!
              as GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media,
    _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
          object,
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
                GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
    }
    return result;
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder();

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
                      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title))!
              as GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage))!
              as GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title,
    _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
          object,
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
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder();

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

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageSerializer
    implements
        StructuredSerializer<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage,
    _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
  ];
  @override
  final String wireName =
      'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
          object,
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
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder();

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

class _$GNotificationsQueryData_ViewerSerializer
    implements StructuredSerializer<GNotificationsQueryData_Viewer> {
  @override
  final Iterable<Type> types = const [
    GNotificationsQueryData_Viewer,
    _$GNotificationsQueryData_Viewer
  ];
  @override
  final String wireName = 'GNotificationsQueryData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationsQueryData_Viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.unreadNotificationCount;
    if (value != null) {
      result
        ..add('unreadNotificationCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GNotificationsQueryData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationsQueryData_ViewerBuilder();

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
        case 'unreadNotificationCount':
          result.unreadNotificationCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsQueryData extends GNotificationsQueryData {
  @override
  final String G__typename;
  @override
  final GNotificationsQueryData_Page? Page;
  @override
  final GNotificationsQueryData_Viewer? Viewer;

  factory _$GNotificationsQueryData(
          [void Function(GNotificationsQueryDataBuilder)? updates]) =>
      (new GNotificationsQueryDataBuilder()..update(updates))._build();

  _$GNotificationsQueryData._(
      {required this.G__typename, this.Page, this.Viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationsQueryData', 'G__typename');
  }

  @override
  GNotificationsQueryData rebuild(
          void Function(GNotificationsQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryDataBuilder toBuilder() =>
      new GNotificationsQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsQueryData &&
        G__typename == other.G__typename &&
        Page == other.Page &&
        Viewer == other.Viewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jc(_$hash, Viewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationsQueryData')
          ..add('G__typename', G__typename)
          ..add('Page', Page)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GNotificationsQueryDataBuilder
    implements
        Builder<GNotificationsQueryData, GNotificationsQueryDataBuilder> {
  _$GNotificationsQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNotificationsQueryData_PageBuilder? _Page;
  GNotificationsQueryData_PageBuilder get Page =>
      _$this._Page ??= new GNotificationsQueryData_PageBuilder();
  set Page(GNotificationsQueryData_PageBuilder? Page) => _$this._Page = Page;

  GNotificationsQueryData_ViewerBuilder? _Viewer;
  GNotificationsQueryData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GNotificationsQueryData_ViewerBuilder();
  set Viewer(GNotificationsQueryData_ViewerBuilder? Viewer) =>
      _$this._Viewer = Viewer;

  GNotificationsQueryDataBuilder() {
    GNotificationsQueryData._initializeBuilder(this);
  }

  GNotificationsQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationsQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsQueryData;
  }

  @override
  void update(void Function(GNotificationsQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData build() => _build();

  _$GNotificationsQueryData _build() {
    _$GNotificationsQueryData _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNotificationsQueryData', 'G__typename'),
              Page: _Page?.build(),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page extends GNotificationsQueryData_Page {
  @override
  final String G__typename;
  @override
  final GNotificationsQueryData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GNotificationsQueryData_Page_notifications?>? notifications;

  factory _$GNotificationsQueryData_Page(
          [void Function(GNotificationsQueryData_PageBuilder)? updates]) =>
      (new GNotificationsQueryData_PageBuilder()..update(updates))._build();

  _$GNotificationsQueryData_Page._(
      {required this.G__typename, this.pageInfo, this.notifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationsQueryData_Page', 'G__typename');
  }

  @override
  GNotificationsQueryData_Page rebuild(
          void Function(GNotificationsQueryData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_PageBuilder toBuilder() =>
      new GNotificationsQueryData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsQueryData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationsQueryData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('notifications', notifications))
        .toString();
  }
}

class GNotificationsQueryData_PageBuilder
    implements
        Builder<GNotificationsQueryData_Page,
            GNotificationsQueryData_PageBuilder> {
  _$GNotificationsQueryData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNotificationsQueryData_Page_pageInfoBuilder? _pageInfo;
  GNotificationsQueryData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GNotificationsQueryData_Page_pageInfoBuilder();
  set pageInfo(GNotificationsQueryData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GNotificationsQueryData_Page_notifications?>? _notifications;
  ListBuilder<GNotificationsQueryData_Page_notifications?> get notifications =>
      _$this._notifications ??=
          new ListBuilder<GNotificationsQueryData_Page_notifications?>();
  set notifications(
          ListBuilder<GNotificationsQueryData_Page_notifications?>?
              notifications) =>
      _$this._notifications = notifications;

  GNotificationsQueryData_PageBuilder() {
    GNotificationsQueryData_Page._initializeBuilder(this);
  }

  GNotificationsQueryData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _notifications = $v.notifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationsQueryData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsQueryData_Page;
  }

  @override
  void update(void Function(GNotificationsQueryData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page build() => _build();

  _$GNotificationsQueryData_Page _build() {
    _$GNotificationsQueryData_Page _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsQueryData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNotificationsQueryData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              notifications: _notifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'notifications';
        _notifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsQueryData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_pageInfo
    extends GNotificationsQueryData_Page_pageInfo {
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

  factory _$GNotificationsQueryData_Page_pageInfo(
          [void Function(GNotificationsQueryData_Page_pageInfoBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_pageInfoBuilder()..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationsQueryData_Page_pageInfo', 'G__typename');
  }

  @override
  GNotificationsQueryData_Page_pageInfo rebuild(
          void Function(GNotificationsQueryData_Page_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_pageInfoBuilder toBuilder() =>
      new GNotificationsQueryData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsQueryData_Page_pageInfo &&
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
            r'GNotificationsQueryData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GNotificationsQueryData_Page_pageInfoBuilder
    implements
        Builder<GNotificationsQueryData_Page_pageInfo,
            GNotificationsQueryData_Page_pageInfoBuilder> {
  _$GNotificationsQueryData_Page_pageInfo? _$v;

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

  GNotificationsQueryData_Page_pageInfoBuilder() {
    GNotificationsQueryData_Page_pageInfo._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_pageInfoBuilder get _$this {
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
  void replace(GNotificationsQueryData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsQueryData_Page_pageInfo;
  }

  @override
  void update(
      void Function(GNotificationsQueryData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_pageInfo build() => _build();

  _$GNotificationsQueryData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GNotificationsQueryData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GNotificationsQueryData_Page_pageInfo', 'G__typename'),
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__base
    extends GNotificationsQueryData_Page_notifications__base {
  @override
  final String G__typename;

  factory _$GNotificationsQueryData_Page_notifications__base(
          [void Function(
                  GNotificationsQueryData_Page_notifications__baseBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__baseBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__base._(
      {required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GNotificationsQueryData_Page_notifications__base', 'G__typename');
  }

  @override
  GNotificationsQueryData_Page_notifications__base rebuild(
          void Function(GNotificationsQueryData_Page_notifications__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__baseBuilder toBuilder() =>
      new GNotificationsQueryData_Page_notifications__baseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsQueryData_Page_notifications__base &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GNotificationsQueryData_Page_notifications__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__baseBuilder
    implements
        Builder<GNotificationsQueryData_Page_notifications__base,
            GNotificationsQueryData_Page_notifications__baseBuilder> {
  _$GNotificationsQueryData_Page_notifications__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNotificationsQueryData_Page_notifications__baseBuilder() {
    GNotificationsQueryData_Page_notifications__base._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__baseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationsQueryData_Page_notifications__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsQueryData_Page_notifications__base;
  }

  @override
  void update(
      void Function(GNotificationsQueryData_Page_notifications__baseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__base build() => _build();

  _$GNotificationsQueryData_Page_notifications__base _build() {
    final _$result = _$v ??
        new _$GNotificationsQueryData_Page_notifications__base._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GNotificationsQueryData_Page_notifications__base',
                'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asAiringNotification
    extends GNotificationsQueryData_Page_notifications__asAiringNotification {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GNotificationType? type;
  @override
  final int animeId;
  @override
  final int episode;
  @override
  final BuiltList<String?>? contexts;
  @override
  final int? createdAt;
  @override
  final GNotificationsQueryData_Page_notifications__asAiringNotification_media?
      media;

  factory _$GNotificationsQueryData_Page_notifications__asAiringNotification(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification._(
      {required this.G__typename,
      required this.id,
      this.type,
      required this.animeId,
      required this.episode,
      this.contexts,
      this.createdAt,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        animeId,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification',
        'animeId');
    BuiltValueNullFieldError.checkNotNull(
        episode,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification',
        'episode');
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification rebuild(
          void Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asAiringNotification &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        animeId == other.animeId &&
        episode == other.episode &&
        contexts == other.contexts &&
        createdAt == other.createdAt &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, animeId.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jc(_$hash, contexts.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GNotificationsQueryData_Page_notifications__asAiringNotification')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('animeId', animeId)
          ..add('episode', episode)
          ..add('contexts', contexts)
          ..add('createdAt', createdAt)
          ..add('media', media))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asAiringNotification,
            GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder> {
  _$GNotificationsQueryData_Page_notifications__asAiringNotification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GNotificationType? _type;
  _i3.GNotificationType? get type => _$this._type;
  set type(_i3.GNotificationType? type) => _$this._type = type;

  int? _animeId;
  int? get animeId => _$this._animeId;
  set animeId(int? animeId) => _$this._animeId = animeId;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  ListBuilder<String?>? _contexts;
  ListBuilder<String?> get contexts =>
      _$this._contexts ??= new ListBuilder<String?>();
  set contexts(ListBuilder<String?>? contexts) => _$this._contexts = contexts;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder?
      _media;
  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder
      get media => _$this._media ??=
          new GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder();
  set media(
          GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder?
              media) =>
      _$this._media = media;

  GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder() {
    GNotificationsQueryData_Page_notifications__asAiringNotification
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _animeId = $v.animeId;
      _episode = $v.episode;
      _contexts = $v.contexts?.toBuilder();
      _createdAt = $v.createdAt;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GNotificationsQueryData_Page_notifications__asAiringNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asAiringNotification;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asAiringNotificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification build() =>
      _build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification _build() {
    _$GNotificationsQueryData_Page_notifications__asAiringNotification _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsQueryData_Page_notifications__asAiringNotification._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GNotificationsQueryData_Page_notifications__asAiringNotification',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GNotificationsQueryData_Page_notifications__asAiringNotification',
                  'id'),
              type: type,
              animeId: BuiltValueNullFieldError.checkNotNull(
                  animeId,
                  r'GNotificationsQueryData_Page_notifications__asAiringNotification',
                  'animeId'),
              episode: BuiltValueNullFieldError.checkNotNull(
                  episode,
                  r'GNotificationsQueryData_Page_notifications__asAiringNotification',
                  'episode'),
              contexts: _contexts?.build(),
              createdAt: createdAt,
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();

        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsQueryData_Page_notifications__asAiringNotification',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asAiringNotification_media
    extends GNotificationsQueryData_Page_notifications__asAiringNotification_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GNotificationsQueryData_Page_notifications__asAiringNotification_media_title?
      title;
  @override
  final GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage?
      coverImage;
  @override
  final _i3.GMediaType? type;

  factory _$GNotificationsQueryData_Page_notifications__asAiringNotification_media(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification_media',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification_media',
        'id');
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media rebuild(
          void Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asAiringNotification_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GNotificationsQueryData_Page_notifications__asAiringNotification_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('type', type))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media,
            GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder> {
  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder?
      _title;
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder
      get title => _$this._title ??=
          new GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder();
  set title(
          GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder?
              title) =>
      _$this._title = title;

  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder?
      _coverImage;
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder();
  set coverImage(
          GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder() {
    GNotificationsQueryData_Page_notifications__asAiringNotification_media
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GNotificationsQueryData_Page_notifications__asAiringNotification_media
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asAiringNotification_media;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asAiringNotification_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media
      build() => _build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media
      _build() {
    _$GNotificationsQueryData_Page_notifications__asAiringNotification_media
        _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsQueryData_Page_notifications__asAiringNotification_media
                  ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GNotificationsQueryData_Page_notifications__asAiringNotification_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GNotificationsQueryData_Page_notifications__asAiringNotification_media',
                  'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsQueryData_Page_notifications__asAiringNotification_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
    extends GNotificationsQueryData_Page_notifications__asAiringNotification_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification_media_title',
        'G__typename');
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
      rebuild(
              void Function(
                      GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asAiringNotification_media_title &&
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
            r'GNotificationsQueryData_Page_notifications__asAiringNotification_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_title,
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder> {
  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder() {
    GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder
      get _$this {
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
      GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asAiringNotification_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
      build() => _build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
      _build() {
    final _$result = _$v ??
        new _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_title
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GNotificationsQueryData_Page_notifications__asAiringNotification_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
    extends GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage',
        'G__typename');
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
      rebuild(
              void Function(
                      GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage &&
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
            r'GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage,
            GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder> {
  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder() {
    GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder
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
      GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
      build() => _build();

  _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
      _build() {
    final _$result = _$v ??
        new _$GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GNotificationsQueryData_Page_notifications__asAiringNotification_media_coverImage',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
    extends GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GNotificationType? type;
  @override
  final int mediaId;
  @override
  final String? context;
  @override
  final int? createdAt;
  @override
  final GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media?
      media;

  factory _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification._(
      {required this.G__typename,
      required this.id,
      this.type,
      required this.mediaId,
      this.context,
      this.createdAt,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        mediaId,
        r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification',
        'mediaId');
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
      rebuild(
              void Function(
                      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        mediaId == other.mediaId &&
        context == other.context &&
        createdAt == other.createdAt &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('mediaId', mediaId)
          ..add('context', context)
          ..add('createdAt', createdAt)
          ..add('media', media))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder> {
  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GNotificationType? _type;
  _i3.GNotificationType? get type => _$this._type;
  set type(_i3.GNotificationType? type) => _$this._type = type;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder?
      _media;
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
      get media => _$this._media ??=
          new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder();
  set media(
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder?
              media) =>
      _$this._media = media;

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder() {
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _mediaId = $v.mediaId;
      _context = $v.context;
      _createdAt = $v.createdAt;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
      build() => _build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
      _build() {
    _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
        _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification
                  ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification',
                  'id'),
              type: type,
              mediaId: BuiltValueNullFieldError.checkNotNull(
                  mediaId,
                  r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification',
                  'mediaId'),
              context: context,
              createdAt: createdAt,
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
    extends GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title?
      title;
  @override
  final GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage?
      coverImage;
  @override
  final _i3.GMediaType? type;

  factory _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media',
        'id');
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
      rebuild(
              void Function(
                      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('type', type))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder> {
  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder?
      _title;
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
      get title => _$this._title ??=
          new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder();
  set title(
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder?
              title) =>
      _$this._title = title;

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder?
      _coverImage;
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder();
  set coverImage(
          GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder() {
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
      build() => _build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
      _build() {
    _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
        _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media
                  ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media',
                  'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
    extends GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title',
        'G__typename');
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
      rebuild(
              void Function(
                      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title &&
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
            r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder> {
  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder() {
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
      get _$this {
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
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
      build() => _build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
      _build() {
    final _$result = _$v ??
        new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
    extends GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage(
          [void Function(
                  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder)?
              updates]) =>
      (new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage',
        'G__typename');
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
      rebuild(
              void Function(
                      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder
      toBuilder() =>
          new GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage &&
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
            r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder
    implements
        Builder<
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage,
            GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder> {
  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder() {
    GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
        ._initializeBuilder(this);
  }

  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder
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
      GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage;
  }

  @override
  void update(
      void Function(
              GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
      build() => _build();

  _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
      _build() {
    final _$result = _$v ??
        new _$GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationsQueryData_Viewer extends GNotificationsQueryData_Viewer {
  @override
  final String G__typename;
  @override
  final int? unreadNotificationCount;

  factory _$GNotificationsQueryData_Viewer(
          [void Function(GNotificationsQueryData_ViewerBuilder)? updates]) =>
      (new GNotificationsQueryData_ViewerBuilder()..update(updates))._build();

  _$GNotificationsQueryData_Viewer._(
      {required this.G__typename, this.unreadNotificationCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationsQueryData_Viewer', 'G__typename');
  }

  @override
  GNotificationsQueryData_Viewer rebuild(
          void Function(GNotificationsQueryData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsQueryData_ViewerBuilder toBuilder() =>
      new GNotificationsQueryData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsQueryData_Viewer &&
        G__typename == other.G__typename &&
        unreadNotificationCount == other.unreadNotificationCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, unreadNotificationCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationsQueryData_Viewer')
          ..add('G__typename', G__typename)
          ..add('unreadNotificationCount', unreadNotificationCount))
        .toString();
  }
}

class GNotificationsQueryData_ViewerBuilder
    implements
        Builder<GNotificationsQueryData_Viewer,
            GNotificationsQueryData_ViewerBuilder> {
  _$GNotificationsQueryData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _unreadNotificationCount;
  int? get unreadNotificationCount => _$this._unreadNotificationCount;
  set unreadNotificationCount(int? unreadNotificationCount) =>
      _$this._unreadNotificationCount = unreadNotificationCount;

  GNotificationsQueryData_ViewerBuilder() {
    GNotificationsQueryData_Viewer._initializeBuilder(this);
  }

  GNotificationsQueryData_ViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unreadNotificationCount = $v.unreadNotificationCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationsQueryData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsQueryData_Viewer;
  }

  @override
  void update(void Function(GNotificationsQueryData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsQueryData_Viewer build() => _build();

  _$GNotificationsQueryData_Viewer _build() {
    final _$result = _$v ??
        new _$GNotificationsQueryData_Viewer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GNotificationsQueryData_Viewer', 'G__typename'),
            unreadNotificationCount: unreadNotificationCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
