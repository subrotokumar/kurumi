import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'item.dart';

@immutable
class Channel {
  final String? title;
  final String? description;
  final String? link;
  final List<Item>? item;

  const Channel({this.title, this.description, this.link, this.item});

  factory Channel.fromMap(Map<String, dynamic> data) => Channel(
        title: data['title'] as String?,
        description: data['description'] as String?,
        link: data['link'] as String?,
        item: (data['item'] as List<dynamic>?)
            ?.map((e) => Item.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'description': description,
        'link': link,
        'item': item?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Channel].
  factory Channel.fromJson(String data) {
    return Channel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Channel] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Channel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      title.hashCode ^ description.hashCode ^ link.hashCode ^ item.hashCode;
}
