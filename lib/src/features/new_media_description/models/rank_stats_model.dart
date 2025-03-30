// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RankStatData {
  final bool exist;
  final String title;
  final String? rank1;
  final String? rank2;
  final int? year;
  final bool? allTime;
  RankStatData({
    this.exist = false,
    required this.title,
    this.rank1,
    this.rank2,
    this.year,
    this.allTime,
  });

  RankStatData copyWith({
    bool? exist,
    String? title,
    String? rank1,
    String? rank2,
    int? year,
    bool? allTime,
  }) {
    return RankStatData(
      exist: exist ?? this.exist,
      title: title ?? this.title,
      rank1: rank1 ?? this.rank1,
      rank2: rank2 ?? this.rank2,
      year: year ?? this.year,
      allTime: allTime ?? this.allTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exist': exist,
      'title': title,
      'rank1': rank1,
      'rank2': rank2,
      'year': year,
      'allTime': allTime,
    };
  }

  factory RankStatData.fromMap(Map<String, dynamic> map) {
    return RankStatData(
      exist: map['exist'] as bool,
      title: map['title'] as String,
      rank1: map['rank1'] != null ? map['rank1'] as String : null,
      rank2: map['rank2'] != null ? map['rank2'] as String : null,
      year: map['year'] != null ? map['year'] as int : null,
      allTime: map['allTime'] != null ? map['allTime'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RankStatData.fromJson(String source) =>
      RankStatData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RankStatData(exist: $exist, title: $title, rank1: $rank1, rank2: $rank2, year: $year, allTime: $allTime)';
  }

  @override
  bool operator ==(covariant RankStatData other) {
    if (identical(this, other)) return true;

    return other.exist == exist &&
        other.title == title &&
        other.rank1 == rank1 &&
        other.rank2 == rank2 &&
        other.year == year &&
        other.allTime == allTime;
  }

  @override
  int get hashCode {
    return exist.hashCode ^
        title.hashCode ^
        rank1.hashCode ^
        rank2.hashCode ^
        year.hashCode ^
        allTime.hashCode;
  }
}
