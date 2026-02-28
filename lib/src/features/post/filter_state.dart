import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class PostFilterState {
  final String view;
  final String activity;
  PostFilterState({required this.view, required this.activity});

  PostFilterState copyWith({String? view, String? activity}) {
    return PostFilterState(
      view: view ?? this.view,
      activity: activity ?? this.activity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'view': view, 'activity': activity};
  }

  factory PostFilterState.fromMap(Map<String, dynamic> map) {
    return PostFilterState(
      view: map['view'] as String,
      activity: map['activity'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostFilterState.fromJson(String source) =>
      PostFilterState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PostFilterState(view: $view, activity: $activity)';

  @override
  bool operator ==(covariant PostFilterState other) {
    if (identical(this, other)) return true;

    return other.view == view && other.activity == activity;
  }

  @override
  int get hashCode => view.hashCode ^ activity.hashCode;
}
