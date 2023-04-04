// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReviewQuery.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewQueryData> _$gReviewQueryDataSerializer =
    new _$GReviewQueryDataSerializer();
Serializer<GReviewQueryData_Page> _$gReviewQueryDataPageSerializer =
    new _$GReviewQueryData_PageSerializer();
Serializer<GReviewQueryData_Page_reviews>
    _$gReviewQueryDataPageReviewsSerializer =
    new _$GReviewQueryData_Page_reviewsSerializer();
Serializer<GReviewQueryData_Page_reviews_user>
    _$gReviewQueryDataPageReviewsUserSerializer =
    new _$GReviewQueryData_Page_reviews_userSerializer();
Serializer<GReviewQueryData_Page_reviews_media>
    _$gReviewQueryDataPageReviewsMediaSerializer =
    new _$GReviewQueryData_Page_reviews_mediaSerializer();
Serializer<GReviewQueryData_Page_reviews_media_title>
    _$gReviewQueryDataPageReviewsMediaTitleSerializer =
    new _$GReviewQueryData_Page_reviews_media_titleSerializer();
Serializer<GReviewQueryData_Page_reviews_media_coverImage>
    _$gReviewQueryDataPageReviewsMediaCoverImageSerializer =
    new _$GReviewQueryData_Page_reviews_media_coverImageSerializer();

class _$GReviewQueryDataSerializer
    implements StructuredSerializer<GReviewQueryData> {
  @override
  final Iterable<Type> types = const [GReviewQueryData, _$GReviewQueryData];
  @override
  final String wireName = 'GReviewQueryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewQueryData object,
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
            specifiedType: const FullType(GReviewQueryData_Page)));
    }
    return result;
  }

  @override
  GReviewQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryDataBuilder();

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
                  specifiedType: const FullType(GReviewQueryData_Page))!
              as GReviewQueryData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewQueryData_PageSerializer
    implements StructuredSerializer<GReviewQueryData_Page> {
  @override
  final Iterable<Type> types = const [
    GReviewQueryData_Page,
    _$GReviewQueryData_Page
  ];
  @override
  final String wireName = 'GReviewQueryData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewQueryData_Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GReviewQueryData_Page_reviews)
            ])));
    }
    return result;
  }

  @override
  GReviewQueryData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryData_PageBuilder();

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
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GReviewQueryData_Page_reviews)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewQueryData_Page_reviewsSerializer
    implements StructuredSerializer<GReviewQueryData_Page_reviews> {
  @override
  final Iterable<Type> types = const [
    GReviewQueryData_Page_reviews,
    _$GReviewQueryData_Page_reviews
  ];
  @override
  final String wireName = 'GReviewQueryData_Page_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewQueryData_Page_reviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewQueryData_Page_reviews_user)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ratingAmount;
    if (value != null) {
      result
        ..add('ratingAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReviewQueryData_Page_reviews_media)));
    }
    return result;
  }

  @override
  GReviewQueryData_Page_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryData_Page_reviewsBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReviewQueryData_Page_reviews_user))!
              as GReviewQueryData_Page_reviews_user);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ratingAmount':
          result.ratingAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReviewQueryData_Page_reviews_media))!
              as GReviewQueryData_Page_reviews_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewQueryData_Page_reviews_userSerializer
    implements StructuredSerializer<GReviewQueryData_Page_reviews_user> {
  @override
  final Iterable<Type> types = const [
    GReviewQueryData_Page_reviews_user,
    _$GReviewQueryData_Page_reviews_user
  ];
  @override
  final String wireName = 'GReviewQueryData_Page_reviews_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewQueryData_Page_reviews_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GReviewQueryData_Page_reviews_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryData_Page_reviews_userBuilder();

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
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewQueryData_Page_reviews_mediaSerializer
    implements StructuredSerializer<GReviewQueryData_Page_reviews_media> {
  @override
  final Iterable<Type> types = const [
    GReviewQueryData_Page_reviews_media,
    _$GReviewQueryData_Page_reviews_media
  ];
  @override
  final String wireName = 'GReviewQueryData_Page_reviews_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewQueryData_Page_reviews_media object,
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
            specifiedType:
                const FullType(GReviewQueryData_Page_reviews_media_title)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GReviewQueryData_Page_reviews_media_coverImage)));
    }
    return result;
  }

  @override
  GReviewQueryData_Page_reviews_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryData_Page_reviews_mediaBuilder();

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
                      GReviewQueryData_Page_reviews_media_title))!
              as GReviewQueryData_Page_reviews_media_title);
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GReviewQueryData_Page_reviews_media_coverImage))!
              as GReviewQueryData_Page_reviews_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewQueryData_Page_reviews_media_titleSerializer
    implements StructuredSerializer<GReviewQueryData_Page_reviews_media_title> {
  @override
  final Iterable<Type> types = const [
    GReviewQueryData_Page_reviews_media_title,
    _$GReviewQueryData_Page_reviews_media_title
  ];
  @override
  final String wireName = 'GReviewQueryData_Page_reviews_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewQueryData_Page_reviews_media_title object,
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
  GReviewQueryData_Page_reviews_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryData_Page_reviews_media_titleBuilder();

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

class _$GReviewQueryData_Page_reviews_media_coverImageSerializer
    implements
        StructuredSerializer<GReviewQueryData_Page_reviews_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GReviewQueryData_Page_reviews_media_coverImage,
    _$GReviewQueryData_Page_reviews_media_coverImage
  ];
  @override
  final String wireName = 'GReviewQueryData_Page_reviews_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReviewQueryData_Page_reviews_media_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
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
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReviewQueryData_Page_reviews_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewQueryData_Page_reviews_media_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewQueryData extends GReviewQueryData {
  @override
  final String G__typename;
  @override
  final GReviewQueryData_Page? Page;

  factory _$GReviewQueryData(
          [void Function(GReviewQueryDataBuilder)? updates]) =>
      (new GReviewQueryDataBuilder()..update(updates))._build();

  _$GReviewQueryData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewQueryData', 'G__typename');
  }

  @override
  GReviewQueryData rebuild(void Function(GReviewQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryDataBuilder toBuilder() =>
      new GReviewQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewQueryData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GReviewQueryDataBuilder
    implements Builder<GReviewQueryData, GReviewQueryDataBuilder> {
  _$GReviewQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReviewQueryData_PageBuilder? _Page;
  GReviewQueryData_PageBuilder get Page =>
      _$this._Page ??= new GReviewQueryData_PageBuilder();
  set Page(GReviewQueryData_PageBuilder? Page) => _$this._Page = Page;

  GReviewQueryDataBuilder() {
    GReviewQueryData._initializeBuilder(this);
  }

  GReviewQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryData;
  }

  @override
  void update(void Function(GReviewQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryData build() => _build();

  _$GReviewQueryData _build() {
    _$GReviewQueryData _$result;
    try {
      _$result = _$v ??
          new _$GReviewQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewQueryData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewQueryData_Page extends GReviewQueryData_Page {
  @override
  final String G__typename;
  @override
  final BuiltList<GReviewQueryData_Page_reviews?>? reviews;

  factory _$GReviewQueryData_Page(
          [void Function(GReviewQueryData_PageBuilder)? updates]) =>
      (new GReviewQueryData_PageBuilder()..update(updates))._build();

  _$GReviewQueryData_Page._({required this.G__typename, this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewQueryData_Page', 'G__typename');
  }

  @override
  GReviewQueryData_Page rebuild(
          void Function(GReviewQueryData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryData_PageBuilder toBuilder() =>
      new GReviewQueryData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryData_Page &&
        G__typename == other.G__typename &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewQueryData_Page')
          ..add('G__typename', G__typename)
          ..add('reviews', reviews))
        .toString();
  }
}

class GReviewQueryData_PageBuilder
    implements Builder<GReviewQueryData_Page, GReviewQueryData_PageBuilder> {
  _$GReviewQueryData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GReviewQueryData_Page_reviews?>? _reviews;
  ListBuilder<GReviewQueryData_Page_reviews?> get reviews =>
      _$this._reviews ??= new ListBuilder<GReviewQueryData_Page_reviews?>();
  set reviews(ListBuilder<GReviewQueryData_Page_reviews?>? reviews) =>
      _$this._reviews = reviews;

  GReviewQueryData_PageBuilder() {
    GReviewQueryData_Page._initializeBuilder(this);
  }

  GReviewQueryData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _reviews = $v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryData_Page;
  }

  @override
  void update(void Function(GReviewQueryData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryData_Page build() => _build();

  _$GReviewQueryData_Page _build() {
    _$GReviewQueryData_Page _$result;
    try {
      _$result = _$v ??
          new _$GReviewQueryData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewQueryData_Page', 'G__typename'),
              reviews: _reviews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewQueryData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewQueryData_Page_reviews extends GReviewQueryData_Page_reviews {
  @override
  final String G__typename;
  @override
  final int userId;
  @override
  final GReviewQueryData_Page_reviews_user? user;
  @override
  final int? score;
  @override
  final String? summary;
  @override
  final int? ratingAmount;
  @override
  final int? rating;
  @override
  final String? body;
  @override
  final GReviewQueryData_Page_reviews_media? media;

  factory _$GReviewQueryData_Page_reviews(
          [void Function(GReviewQueryData_Page_reviewsBuilder)? updates]) =>
      (new GReviewQueryData_Page_reviewsBuilder()..update(updates))._build();

  _$GReviewQueryData_Page_reviews._(
      {required this.G__typename,
      required this.userId,
      this.user,
      this.score,
      this.summary,
      this.ratingAmount,
      this.rating,
      this.body,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewQueryData_Page_reviews', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GReviewQueryData_Page_reviews', 'userId');
  }

  @override
  GReviewQueryData_Page_reviews rebuild(
          void Function(GReviewQueryData_Page_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryData_Page_reviewsBuilder toBuilder() =>
      new GReviewQueryData_Page_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryData_Page_reviews &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        user == other.user &&
        score == other.score &&
        summary == other.summary &&
        ratingAmount == other.ratingAmount &&
        rating == other.rating &&
        body == other.body &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, ratingAmount.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewQueryData_Page_reviews')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('user', user)
          ..add('score', score)
          ..add('summary', summary)
          ..add('ratingAmount', ratingAmount)
          ..add('rating', rating)
          ..add('body', body)
          ..add('media', media))
        .toString();
  }
}

class GReviewQueryData_Page_reviewsBuilder
    implements
        Builder<GReviewQueryData_Page_reviews,
            GReviewQueryData_Page_reviewsBuilder> {
  _$GReviewQueryData_Page_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  GReviewQueryData_Page_reviews_userBuilder? _user;
  GReviewQueryData_Page_reviews_userBuilder get user =>
      _$this._user ??= new GReviewQueryData_Page_reviews_userBuilder();
  set user(GReviewQueryData_Page_reviews_userBuilder? user) =>
      _$this._user = user;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  int? _ratingAmount;
  int? get ratingAmount => _$this._ratingAmount;
  set ratingAmount(int? ratingAmount) => _$this._ratingAmount = ratingAmount;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  GReviewQueryData_Page_reviews_mediaBuilder? _media;
  GReviewQueryData_Page_reviews_mediaBuilder get media =>
      _$this._media ??= new GReviewQueryData_Page_reviews_mediaBuilder();
  set media(GReviewQueryData_Page_reviews_mediaBuilder? media) =>
      _$this._media = media;

  GReviewQueryData_Page_reviewsBuilder() {
    GReviewQueryData_Page_reviews._initializeBuilder(this);
  }

  GReviewQueryData_Page_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _user = $v.user?.toBuilder();
      _score = $v.score;
      _summary = $v.summary;
      _ratingAmount = $v.ratingAmount;
      _rating = $v.rating;
      _body = $v.body;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryData_Page_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryData_Page_reviews;
  }

  @override
  void update(void Function(GReviewQueryData_Page_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryData_Page_reviews build() => _build();

  _$GReviewQueryData_Page_reviews _build() {
    _$GReviewQueryData_Page_reviews _$result;
    try {
      _$result = _$v ??
          new _$GReviewQueryData_Page_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewQueryData_Page_reviews', 'G__typename'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GReviewQueryData_Page_reviews', 'userId'),
              user: _user?.build(),
              score: score,
              summary: summary,
              ratingAmount: ratingAmount,
              rating: rating,
              body: body,
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewQueryData_Page_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewQueryData_Page_reviews_user
    extends GReviewQueryData_Page_reviews_user {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GReviewQueryData_Page_reviews_user(
          [void Function(GReviewQueryData_Page_reviews_userBuilder)?
              updates]) =>
      (new GReviewQueryData_Page_reviews_userBuilder()..update(updates))
          ._build();

  _$GReviewQueryData_Page_reviews_user._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewQueryData_Page_reviews_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GReviewQueryData_Page_reviews_user', 'name');
  }

  @override
  GReviewQueryData_Page_reviews_user rebuild(
          void Function(GReviewQueryData_Page_reviews_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryData_Page_reviews_userBuilder toBuilder() =>
      new GReviewQueryData_Page_reviews_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryData_Page_reviews_user &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewQueryData_Page_reviews_user')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GReviewQueryData_Page_reviews_userBuilder
    implements
        Builder<GReviewQueryData_Page_reviews_user,
            GReviewQueryData_Page_reviews_userBuilder> {
  _$GReviewQueryData_Page_reviews_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GReviewQueryData_Page_reviews_userBuilder() {
    GReviewQueryData_Page_reviews_user._initializeBuilder(this);
  }

  GReviewQueryData_Page_reviews_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryData_Page_reviews_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryData_Page_reviews_user;
  }

  @override
  void update(
      void Function(GReviewQueryData_Page_reviews_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryData_Page_reviews_user build() => _build();

  _$GReviewQueryData_Page_reviews_user _build() {
    final _$result = _$v ??
        new _$GReviewQueryData_Page_reviews_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReviewQueryData_Page_reviews_user', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GReviewQueryData_Page_reviews_user', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GReviewQueryData_Page_reviews_media
    extends GReviewQueryData_Page_reviews_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GReviewQueryData_Page_reviews_media_title? title;
  @override
  final String? bannerImage;
  @override
  final GReviewQueryData_Page_reviews_media_coverImage? coverImage;

  factory _$GReviewQueryData_Page_reviews_media(
          [void Function(GReviewQueryData_Page_reviews_mediaBuilder)?
              updates]) =>
      (new GReviewQueryData_Page_reviews_mediaBuilder()..update(updates))
          ._build();

  _$GReviewQueryData_Page_reviews_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.bannerImage,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewQueryData_Page_reviews_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewQueryData_Page_reviews_media', 'id');
  }

  @override
  GReviewQueryData_Page_reviews_media rebuild(
          void Function(GReviewQueryData_Page_reviews_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryData_Page_reviews_mediaBuilder toBuilder() =>
      new GReviewQueryData_Page_reviews_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryData_Page_reviews_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        bannerImage == other.bannerImage &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewQueryData_Page_reviews_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('bannerImage', bannerImage)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GReviewQueryData_Page_reviews_mediaBuilder
    implements
        Builder<GReviewQueryData_Page_reviews_media,
            GReviewQueryData_Page_reviews_mediaBuilder> {
  _$GReviewQueryData_Page_reviews_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GReviewQueryData_Page_reviews_media_titleBuilder? _title;
  GReviewQueryData_Page_reviews_media_titleBuilder get title =>
      _$this._title ??= new GReviewQueryData_Page_reviews_media_titleBuilder();
  set title(GReviewQueryData_Page_reviews_media_titleBuilder? title) =>
      _$this._title = title;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GReviewQueryData_Page_reviews_media_coverImageBuilder? _coverImage;
  GReviewQueryData_Page_reviews_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GReviewQueryData_Page_reviews_media_coverImageBuilder();
  set coverImage(
          GReviewQueryData_Page_reviews_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GReviewQueryData_Page_reviews_mediaBuilder() {
    GReviewQueryData_Page_reviews_media._initializeBuilder(this);
  }

  GReviewQueryData_Page_reviews_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _bannerImage = $v.bannerImage;
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryData_Page_reviews_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryData_Page_reviews_media;
  }

  @override
  void update(
      void Function(GReviewQueryData_Page_reviews_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryData_Page_reviews_media build() => _build();

  _$GReviewQueryData_Page_reviews_media _build() {
    _$GReviewQueryData_Page_reviews_media _$result;
    try {
      _$result = _$v ??
          new _$GReviewQueryData_Page_reviews_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GReviewQueryData_Page_reviews_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewQueryData_Page_reviews_media', 'id'),
              title: _title?.build(),
              bannerImage: bannerImage,
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();

        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewQueryData_Page_reviews_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewQueryData_Page_reviews_media_title
    extends GReviewQueryData_Page_reviews_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GReviewQueryData_Page_reviews_media_title(
          [void Function(GReviewQueryData_Page_reviews_media_titleBuilder)?
              updates]) =>
      (new GReviewQueryData_Page_reviews_media_titleBuilder()..update(updates))
          ._build();

  _$GReviewQueryData_Page_reviews_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReviewQueryData_Page_reviews_media_title', 'G__typename');
  }

  @override
  GReviewQueryData_Page_reviews_media_title rebuild(
          void Function(GReviewQueryData_Page_reviews_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryData_Page_reviews_media_titleBuilder toBuilder() =>
      new GReviewQueryData_Page_reviews_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryData_Page_reviews_media_title &&
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
            r'GReviewQueryData_Page_reviews_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GReviewQueryData_Page_reviews_media_titleBuilder
    implements
        Builder<GReviewQueryData_Page_reviews_media_title,
            GReviewQueryData_Page_reviews_media_titleBuilder> {
  _$GReviewQueryData_Page_reviews_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GReviewQueryData_Page_reviews_media_titleBuilder() {
    GReviewQueryData_Page_reviews_media_title._initializeBuilder(this);
  }

  GReviewQueryData_Page_reviews_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryData_Page_reviews_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryData_Page_reviews_media_title;
  }

  @override
  void update(
      void Function(GReviewQueryData_Page_reviews_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryData_Page_reviews_media_title build() => _build();

  _$GReviewQueryData_Page_reviews_media_title _build() {
    final _$result = _$v ??
        new _$GReviewQueryData_Page_reviews_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReviewQueryData_Page_reviews_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GReviewQueryData_Page_reviews_media_coverImage
    extends GReviewQueryData_Page_reviews_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;
  @override
  final String? large;
  @override
  final String? color;

  factory _$GReviewQueryData_Page_reviews_media_coverImage(
          [void Function(GReviewQueryData_Page_reviews_media_coverImageBuilder)?
              updates]) =>
      (new GReviewQueryData_Page_reviews_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GReviewQueryData_Page_reviews_media_coverImage._(
      {required this.G__typename, this.extraLarge, this.large, this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReviewQueryData_Page_reviews_media_coverImage', 'G__typename');
  }

  @override
  GReviewQueryData_Page_reviews_media_coverImage rebuild(
          void Function(GReviewQueryData_Page_reviews_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewQueryData_Page_reviews_media_coverImageBuilder toBuilder() =>
      new GReviewQueryData_Page_reviews_media_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewQueryData_Page_reviews_media_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge &&
        large == other.large &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReviewQueryData_Page_reviews_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge)
          ..add('large', large)
          ..add('color', color))
        .toString();
  }
}

class GReviewQueryData_Page_reviews_media_coverImageBuilder
    implements
        Builder<GReviewQueryData_Page_reviews_media_coverImage,
            GReviewQueryData_Page_reviews_media_coverImageBuilder> {
  _$GReviewQueryData_Page_reviews_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GReviewQueryData_Page_reviews_media_coverImageBuilder() {
    GReviewQueryData_Page_reviews_media_coverImage._initializeBuilder(this);
  }

  GReviewQueryData_Page_reviews_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _large = $v.large;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewQueryData_Page_reviews_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewQueryData_Page_reviews_media_coverImage;
  }

  @override
  void update(
      void Function(GReviewQueryData_Page_reviews_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewQueryData_Page_reviews_media_coverImage build() => _build();

  _$GReviewQueryData_Page_reviews_media_coverImage _build() {
    final _$result = _$v ??
        new _$GReviewQueryData_Page_reviews_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GReviewQueryData_Page_reviews_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge,
            large: large,
            color: color);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
