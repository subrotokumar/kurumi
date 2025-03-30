import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'rss.dart';

@immutable
class News {
  final Rss? rss;

  const News({this.rss});

  factory News.fromMap(Map<String, dynamic> data) => News(
        rss: data['rss'] == null
            ? null
            : Rss.fromMap(data['rss'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'rss': rss?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [News].
  factory News.fromJson(String data) {
    return News.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [News] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! News) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => rss.hashCode;
}
