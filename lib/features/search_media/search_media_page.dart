// ignore_for_file: constant_identifier_names, depend_on_referenced_packages, implementation_imports, curly_braces_in_flow_control_structures

import 'package:anilist/medialist_collection.dart';
import 'package:anilist/search_anime_query.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:kurumi/core/routes/router.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/features/search_media/components/media_grid_view.dart';
import 'package:kurumi/features/search_media/components/media_list_view.dart';
import 'package:kurumi/provider/provider.dart';

class SearchMedia extends ConsumerStatefulWidget {
  const SearchMedia({
    super.key,
    this.mediaType,
    this.tag,
    this.genre,
    this.hide,
  });
  final GMediaType? mediaType;
  final String? tag;
  final String? genre;
  final bool? hide;

  @override
  ConsumerState<SearchMedia> createState() => _SearchMediaState();
}

class _SearchMediaState extends ConsumerState<SearchMedia> {
  TextEditingController textEditingController = TextEditingController();
  GMediaType mediaType = GMediaType.ANIME;
  GMediaSeason? season;
  Set<String> genres = {};
  Set<String> tags = {};
  int? seasonYear;

  int get filterCount {
    int count = 0;
    if (season != null) count++;
    if (seasonYear != null) count++;
    if (genres.isNotEmpty) count++;
    if (tags.isNotEmpty) count++;
    return count;
  }

  @override
  void initState() {
    mediaType = widget.mediaType ?? mediaType;
    if (widget.genre != null) {
      genres = {widget.genre!};
    }
    if (widget.tag != null) {
      tags = {widget.tag!};
    }
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  Future<void> applyFilter() async {
    final (GMediaType, int?, GMediaSeason?, Set<String>, Set<String>)? data =
        await context.pushNamed(
      AppRouteConstant.SearchFilterScreen.name,
      extra: (mediaType, seasonYear, season, tags, genres),
    );
    if (data != null) {
      mediaType = data.$1;
      seasonYear = data.$2;
      season = data.$3;
      tags = data.$4;
      genres = data.$5;

      setState(() {});
    }
  }

  Widget get searchAppBar => SafeArea(
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: AppTheme.background,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                padding: const EdgeInsets.all(0),
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => context.pop(),
                color: Colors.grey,
              ),
              Flexible(
                child: TextField(
                  controller: textEditingController,
                  onSubmitted: (v) => setState(() {}),
                  decoration: InputDecoration(
                    hintText: 'What are you looking for?',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    isDense: false,
                    suffixIcon: IconButton(
                      onPressed: () {
                        textEditingController.value = TextEditingValue(
                          text: '',
                          selection: TextSelection.fromPosition(
                            const TextPosition(offset: 0),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.backspace_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -2),
                onPressed: applyFilter,
                icon: Consumer(builder: (context, ref, child) {
                  final view =
                      ref.watch(sharedfPrefProvider.notifier).defaultSearchView;
                  return Icon(
                    switch (filterCount) {
                      1 => Icons.filter_1_rounded,
                      2 => Icons.filter_2_rounded,
                      3 => Icons.filter_3_rounded,
                      4 => Icons.filter_4_rounded,
                      _ => view == SearchView.LIST
                          ? Icons.view_list
                          : Icons.grid_view_rounded,
                    },
                    size: 25,
                    color: mediaType == GMediaType.ANIME
                        ? Colors.blue
                        : Colors.green,
                  );
                }),
              ),
              const SizedBox(width: 6),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bottomSearchBarSetting =
        ref.watch(sharedfPrefProvider.notifier).bottomSearchBar;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppTheme.background,
        appBar: bottomSearchBarSetting || widget.hide == true
            ? null
            : PreferredSize(
                preferredSize: const Size.fromHeight(55),
                child: searchAppBar,
              ),
        bottomNavigationBar: !bottomSearchBarSetting || widget.hide == true
            ? null
            : searchAppBar,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SizedBox(
            width: size.width,
            child: Consumer(
              builder: (context, ref, error) {
                final view =
                    ref.watch(sharedfPrefProvider.notifier).defaultSearchView;
                final client = ref.watch(clientProvider);
                return Operation(
                  client: client!,
                  operationRequest: GSearchAnimeQueryReq((b) {
                    b
                      ..vars.search = textEditingController.text.isNotEmpty
                          ? textEditingController.text
                          : null
                      ..vars.type = mediaType
                      ..vars.season =
                          mediaType == GMediaType.ANIME ? season : null
                      ..vars.seasonYear =
                          mediaType == GMediaType.ANIME ? seasonYear : null
                      ..vars.formatIn = null
                      ..vars.genreNotIn = null
                      ..vars.tagNotIn = null;
                    if (tags.isNotEmpty) {
                      b.vars.tagIn.addAll(tags);
                    }
                    if (genres.isNotEmpty) {
                      b.vars.genreIn.addAll(genres);
                    }
                    return b;
                  }),
                  builder: (context, response, error) {
                    if (response == null || response.loading) {
                      return LoadingWidget;
                    } else {
                      final res = response.data?.Page?.media;
                      if (view == SearchView.GRID) {
                        return SearchedMediaGridView(response: res);
                      } else {
                        return SearchedMediaListView(response: res);
                      }
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
