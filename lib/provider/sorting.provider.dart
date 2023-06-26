// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names
import 'package:anilist/medialist_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Sort { ASC, DESC }

const List<(String, GMediaListSort?)> sortingSettingOption = [
  ('Default', null),
  ('Score', GMediaListSort.SCORE),
  ('Progress', GMediaListSort.PROGRESS),
  ('Updated Time', GMediaListSort.UPDATED_TIME),
  ('Added Added', GMediaListSort.ADDED_TIME),
  ('Started on', GMediaListSort.STARTED_ON),
  ('Finished On', GMediaListSort.FINISHED_ON),
  ('Popularity', GMediaListSort.MEDIA_POPULARITY),
  ('Priority', GMediaListSort.PRIORITY),
  ('English Title', GMediaListSort.MEDIA_TITLE_ENGLISH),
  ('Romaji Title', GMediaListSort.MEDIA_TITLE_ROMAJI),
  ('Native Title', GMediaListSort.MEDIA_TITLE_ROMAJI),
];

final animeSorting = StateNotifierProvider<SortingSetting, SortFilter>(
    (ref) => SortingSetting(ref, 'kurumiAnimeSortingIndex'));

final mangaSorting = StateNotifierProvider<SortingSetting, SortFilter>(
    (ref) => SortingSetting(ref, 'kurumiMangaSortingIndex'));

typedef SortFilter = (int, Sort);

class SortingSetting extends StateNotifier<SortFilter> {
  final Ref ref;
  final String key;
  SharedPreferences? pref;
  SortingSetting(this.ref, this.key, {this.pref}) : super((0, Sort.ASC)) {
    Future init() async {
      pref = await SharedPreferences.getInstance();
      final setting = pref!.getStringList(key);
      final sort = setting?.last ?? 'ASC';
      if (setting == null) {
        state = (
          0,
          Sort.values[sort == 'ASC' ? 0 : 1],
        );
      } else {
        state = (
          int.parse(setting?.first ?? '1'),
          Sort.values[sort == 'ASC' ? 0 : 1],
        );
      }
    }

    init();
  }

  Future<bool> changeSorting({
    required int index,
    required Sort sort,
  }) async {
    if (index == 0) {
      await pref!.remove(key);
      state = (0, Sort.ASC);
      return true;
    }
    if (await pref!.setStringList(key, [index.toString(), sort.name])) {
      state = (index, sort);
      return true;
    }
    return false;
  }
}

class SortSettingModel {
  final GMediaListSort? filter;
  final Sort sort;
  SortSettingModel({
    required this.filter,
    required this.sort,
  });

  SortSettingModel copyWith({
    GMediaListSort? filter,
    Sort? sort,
  }) {
    return SortSettingModel(
      filter: filter,
      sort: sort ?? this.sort,
    );
  }

  @override
  String toString() => 'SortSettingModel(filter: $filter, sort: $sort)';
}
