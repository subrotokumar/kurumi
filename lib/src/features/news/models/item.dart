import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

@immutable
class Item {
  final String? guid;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? pubDate;
  final String? link;

  const Item({
    this.guid,
    this.title,
    this.description,
    this.thumbnail,
    this.pubDate,
    this.link,
  });

  factory Item.fromMap(Map<String, dynamic> data) => Item(
        guid: data['guid'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        thumbnail:
            // data['thumbnail'] == null
            // ? null
            // : Thumbnail.fromMap(data['thumbnail'] as Map<String, dynamic>),
            data['media:thumbnail'] as String?,
        pubDate: data['pubDate'] as String?,
        link: data['link'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'guid': guid,
        'title': title,
        'description': description,
        // 'thumbnail': thumbnail?.toMap(),
        'thumbnail': thumbnail,
        'pubDate': pubDate,
        'link': link,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory Item.fromJson(String data) {
    return Item.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Item) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      guid.hashCode ^
      title.hashCode ^
      description.hashCode ^
      thumbnail.hashCode ^
      pubDate.hashCode ^
      link.hashCode;
}
