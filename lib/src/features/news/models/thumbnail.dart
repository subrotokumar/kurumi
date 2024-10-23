import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

@immutable
class Thumbnail {
  final String? prefix;
  final String? text;

  const Thumbnail({this.prefix, this.text});

  factory Thumbnail.fromMap(Map<String, dynamic> data) => Thumbnail(
        prefix: data['__prefix'] as String?,
        text: data['__text'] as String?,
      );

  Map<String, dynamic> toMap() => {
        '__prefix': prefix,
        '__text': text,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Thumbnail].
  factory Thumbnail.fromJson(String data) {
    return Thumbnail.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Thumbnail] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Thumbnail) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => prefix.hashCode ^ text.hashCode;
}
