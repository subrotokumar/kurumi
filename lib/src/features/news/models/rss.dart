import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'channel.dart';

@immutable
class Rss {
  final Channel? channel;
  final String? xmlnsAtom;
  final String? xmlnsSnf;
  final String? xmlnsContent;
  final String? xmlnsMedia;
  final String? version;

  const Rss({
    this.channel,
    this.xmlnsAtom,
    this.xmlnsSnf,
    this.xmlnsContent,
    this.xmlnsMedia,
    this.version,
  });

  factory Rss.fromMap(Map<String, dynamic> data) => Rss(
        channel: data['channel'] == null
            ? null
            : Channel.fromMap(data['channel'] as Map<String, dynamic>),
        xmlnsAtom: data['_xmlns:atom'] as String?,
        xmlnsSnf: data['_xmlns:snf'] as String?,
        xmlnsContent: data['_xmlns:content'] as String?,
        xmlnsMedia: data['_xmlns:media'] as String?,
        version: data['_version'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'channel': channel?.toMap(),
        '_xmlns:atom': xmlnsAtom,
        '_xmlns:snf': xmlnsSnf,
        '_xmlns:content': xmlnsContent,
        '_xmlns:media': xmlnsMedia,
        '_version': version,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Rss].
  factory Rss.fromJson(String data) {
    return Rss.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Rss] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Rss) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      channel.hashCode ^
      xmlnsAtom.hashCode ^
      xmlnsSnf.hashCode ^
      xmlnsContent.hashCode ^
      xmlnsMedia.hashCode ^
      version.hashCode;
}
