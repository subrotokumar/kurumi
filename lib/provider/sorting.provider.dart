// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:anilist/medialist_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Sort { ASC, DESC }

const Map<String, GMediaListSort> sortingSettingOption = {
  'Title': GMediaListSort.MEDIA_TITLE_ENGLISH,
  'Score': GMediaListSort.SCORE,
  'Progress': GMediaListSort.PROGRESS,
  'Updated Time': GMediaListSort.UPDATED_TIME,
  'Added Added': GMediaListSort.ADDED_TIME,
  'Started on': GMediaListSort.STARTED_ON,
  'Finished On': GMediaListSort.FINISHED_ON,
  'Popularity': GMediaListSort.MEDIA_POPULARITY,
  'Priority': GMediaListSort.PRIORITY,
};

final animeSorting = StateNotifierProvider<SortingSetting, SortSettingModel>(
    (ref) => SortingSetting(ref, 'kurumiAnimeSorting'));

final mangaSorting = StateNotifierProvider<SortingSetting, SortSettingModel>(
    (ref) => SortingSetting(ref, 'kurumiMangaSorting'));

class SortingSetting extends StateNotifier<SortSettingModel> {
  final Ref ref;
  final String key;
  SharedPreferences? pref;
  SortingSetting(this.ref, this.key, {this.pref})
      : super(SortSettingModel(
            filter: GMediaListSort.MEDIA_TITLE_ENGLISH, sort: Sort.ASC)) {
    Future init() async {
      pref = await SharedPreferences.getInstance();
      final setting = pref!.getStringList(key);
      final filter = setting?.first ?? GMediaListSort.MEDIA_TITLE_ENGLISH.name;
      final sort = setting?.last ?? 'ASC';
      if (setting != null) {
        state = state.copyWith(
          filter: GMediaListSort.valueOf(filter),
          sort: Sort.values[sort == 'ASC' ? 0 : 1],
        );
      }
    }

    init();
  }

  Future<bool> changeSorting({
    required GMediaListSort? filter,
    required Sort sort,
  }) async {
    if (filter == null) {
      await pref!.remove(key);
      state = state.copyWith(
          filter: GMediaListSort.MEDIA_TITLE_ENGLISH, sort: Sort.ASC);
      return true;
    }
    if (await pref!.setStringList(key, [filter.name, sort.name])) {
      state = state.copyWith(filter: filter, sort: sort);
      return true;
    }
    return false;
  }
}

class SortSettingModel {
  final GMediaListSort filter;
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
      filter: filter ?? this.filter,
      sort: sort ?? this.sort,
    );
  }

  @override
  String toString() => 'SortSettingModel(filter: $filter, sort: $sort)';
}

// ignore_for_file: public_member_api_docs, sort_constructors_first


// import 'package:anilist/medialist_collection.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// enum Sort { ASC, DESC }

// const Map<String, List<GMediaListSort>> sortingSettingOption = {
//   'Title': [GMediaListSort.MEDIA_TITLE_ENGLISH,GMediaListSort.MEDIA_TITLE_ENGLISH_DESC],
//   'Score': [GMediaListSort.SCORE,GMediaListSort.SCORE_DESC],
//   'Progress': [GMediaListSort.PROGRESS,
//   'Updated Time': GMediaListSort.UPDATED_TIME,
//   'Added Added': GMediaListSort.ADDED_TIME,
//   'Started on': GMediaListSort.STARTED_ON,
//   'Finished On': GMediaListSort.FINISHED_ON,
//   'Popularity': GMediaListSort.MEDIA_POPULARITY,
//   'Priority': GMediaListSort.PRIORITY,
// };

// final animeSorting = StateNotifierProvider<SortingSetting, SortSettingModel>(
//     (ref) => SortingSetting(ref, 'kurumiAnimeSorting'));

// final mangaSorting = StateNotifierProvider<SortingSetting, SortSettingModel>(
//     (ref) => SortingSetting(ref, 'kurumiMangaSorting'));

// class SortingSetting extends StateNotifier<SortSettingModel> {
//   final Ref ref;
//   final String key;
//   SharedPreferences? pref;
//   SortingSetting(this.ref, this.key, {this.pref})
//       : super(SortSettingModel(
//             filter: GMediaListSort.MEDIA_TITLE_ENGLISH, sort: Sort.ASC)) {
//     Future init() async {
//       pref = await SharedPreferences.getInstance();
//       final setting = pref!.getStringList(key);
//       final filter = setting?.first ?? GMediaListSort.MEDIA_TITLE_ENGLISH.name;
//       final sort = setting?.last ?? 'ASC';
//       if (setting != null) {
//         state = state.copyWith(
//           filter: GMediaListSort.valueOf(filter),
//           sort: Sort.values[sort == 'ASC' ? 0 : 1],
//         );
//       }
//     }

//     init();
//   }

//   Future<bool> changeSorting({
//     required GMediaListSort? filter,
//     required Sort sort,
//   }) async {
//     if (filter == null) {
//       await pref!.remove(key);
//       state = state.copyWith(
//           filter: GMediaListSort.MEDIA_TITLE_ENGLISH, sort: Sort.ASC);
//       return true;
//     }
//     if (await pref!.setStringList(key, [filter.name, sort.name])) {
//       state = state.copyWith(filter: filter, sort: sort);
//       return true;
//     }
//     return false;
//   }
// }

// class SortSettingModel {
//   final GMediaListSort filter;
//   final Sort sort;
//   SortSettingModel({
//     required this.filter,
//     required this.sort,
//   });

//   SortSettingModel copyWith({
//     GMediaListSort? filter,
//     Sort? sort,
//   }) {
//     return SortSettingModel(
//       filter: filter ?? this.filter,
//       sort: sort ?? this.sort,
//     );
//   }

//   @override
//   String toString() => 'SortSettingModel(filter: $filter, sort: $sort)';
// }
// // 