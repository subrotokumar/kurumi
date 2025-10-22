// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ThemeModel {
  List<String> openings;
  List<String> endings;
  ThemeModel({required this.openings, required this.endings});

  ThemeModel copyWith({List<String>? openings, List<String>? endings}) {
    return ThemeModel(
      openings: openings ?? this.openings,
      endings: endings ?? this.endings,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'openings': openings, 'endings': endings};
  }

  String toJson() => json.encode(toMap());

  factory ThemeModel.fromJson(Map<String, dynamic> map) {
    final Map<String, dynamic> theme = map['data']['theme'];
    return ThemeModel(
      openings: List.from(theme['openings'] ?? []),
      endings: List.from(theme['endings'] ?? []),
    );
  }

  @override
  String toString() => 'ThemeModel(openings: $openings, endings: $endings)';

  @override
  bool operator ==(covariant ThemeModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.openings, openings) &&
        listEquals(other.endings, endings);
  }

  @override
  int get hashCode => openings.hashCode ^ endings.hashCode;
}
