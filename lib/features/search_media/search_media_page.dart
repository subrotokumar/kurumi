// ignore_for_file: constant_identifier_names, depend_on_referenced_packages, implementation_imports

import 'package:anilist/medialist_collection.dart';
import 'package:anilist/search_anime_query.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/constants/anilist_constant.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/features/search_media/components/media_filter_sheet.dart';
import 'package:kurumi/features/search_media/components/media_grid_view.dart';
import 'package:kurumi/features/search_media/components/media_list_view.dart';
import 'package:kurumi/features/search_media/widget.dart/appbar.dart';
import 'package:kurumi/features/search_media/widget.dart/bottom_search_bar.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  TextEditingController textEditingController = TextEditingController();
  Set<GMediaType> mediaType = {GMediaType.ANIME};
  Set<SearchView> view = {SearchView.LIST};
  GMediaSeason? season;
  String? genre;
  String? tag;
  int? seasonYear;
  bool clear = false;

  int get filterCount {
    int count = 0;
    if (season != null) count++;
    if (seasonYear != null) count++;
    if (genre != null) count++;
    if (tag != null) count++;
    return count;
  }

  @override
  void initState() {
    mediaType = widget.mediaType == null ? mediaType : {widget.mediaType!};
    genre = widget.genre;
    tag = widget.tag;
    super.initState();
    initialize();
  }

  Future<void> initialize() async {
    final pref = await SharedPreferences.getInstance();
    var v = pref.getString('DefaultSearchView') ?? 'LIST';
    var type = v == 'LIST' ? SearchView.LIST : SearchView.GRID;
    view = {type};
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  bool displayMediaFilterSheet = false;

  Widget? filterSheet(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/lotties/giphy.gif'),
          fit: BoxFit.cover,
          opacity: 0.2,
        ),
      ),
      child: SafeArea(
        child: StatefulBuilder(builder: (context, newState) {
          clear = false;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              SegmentedButton(
                style: const ButtonStyle(
                    visualDensity: VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                )),
                segments: const [
                  ButtonSegment(value: GMediaType.ANIME, label: Text('Anime')),
                  ButtonSegment(value: GMediaType.MANGA, label: Text('Manga')),
                ],
                selected: mediaType,
                multiSelectionEnabled: false,
                showSelectedIcon: true,
                emptySelectionAllowed: false,
                onSelectionChanged: (p) {
                  mediaType = p;
                  newState(() {});
                },
              ),
              const SizedBox(height: 20),
              SegmentedButton(
                style: const ButtonStyle(
                  visualDensity: VisualDensity(
                    vertical: -4,
                    horizontal: -4,
                  ),
                ),
                segments: const [
                  ButtonSegment(value: SearchView.LIST, label: Text('LIST')),
                  ButtonSegment(value: SearchView.GRID, label: Text('GRID')),
                ],
                selected: view,
                multiSelectionEnabled: false,
                showSelectedIcon: true,
                emptySelectionAllowed: false,
                onSelectionChanged: (p) {
                  view = p;
                  newState(() {});
                },
              ),
              const SizedBox(height: 14),
              const Divider(),
              Visibility(
                visible: mediaType.first == GMediaType.ANIME,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  color: Colors.transparent,
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //* SEASONS
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'SEASON',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            DropdownButton(
                              borderRadius: BorderRadius.circular(20),
                              menuMaxHeight: 400,
                              alignment: Alignment.centerRight,
                              isDense: true,
                              underline: Container(),
                              value: season,
                              items: [
                                const DropdownMenuItem(
                                  value: null,
                                  child: Text(
                                    'All  ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                ...[
                                  GMediaSeason.WINTER,
                                  GMediaSeason.SPRING,
                                  GMediaSeason.SUMMER,
                                  GMediaSeason.FALL,
                                ].map((item) => DropdownMenuItem(
                                      value: item,
                                      child: Text(item.name),
                                    )),
                              ],
                              onChanged: (v) {
                                newState(() => season = v);
                              },
                            ),
                          ],
                        ),
                      ),
                      //* YEAR
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'YEAR',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            DropdownButton(
                              borderRadius: BorderRadius.circular(20),
                              menuMaxHeight: 400,
                              alignment: Alignment.centerRight,
                              isDense: true,
                              underline: Container(),
                              value: seasonYear,
                              items: [
                                const DropdownMenuItem(
                                  value: null,
                                  child: Text(
                                    'All  ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                for (int i = DateTime.now().year + 1;
                                    i >= 1980;
                                    i--)
                                  DropdownMenuItem(
                                    value: i,
                                    child: Text('$i  '),
                                  ),
                              ],
                              onChanged: (v) {
                                newState(() => seasonYear = v);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                color: Colors.transparent,
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //* GENRE
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'GENRE',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          DropdownButton(
                            borderRadius: BorderRadius.circular(20),
                            menuMaxHeight: 400,
                            alignment: Alignment.centerRight,
                            isDense: true,
                            underline: Container(),
                            value: genre,
                            items: [
                              const DropdownMenuItem(
                                value: null,
                                child: Text(
                                  'All  ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ...AnilistConstant.mediaGenres
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text('$e  '),
                                    ),
                                  )
                                  .toList(),
                            ],
                            onChanged: (v) {
                              newState(() => genre = v);
                            },
                          ),
                        ],
                      ),
                    ),
                    //* TAG
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'TAG',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          DropdownButton(
                            borderRadius: BorderRadius.circular(20),
                            menuMaxHeight: 400,
                            alignment: Alignment.centerRight,
                            isDense: true,
                            underline: Container(),
                            value: tag,
                            items: [
                              const DropdownMenuItem(
                                value: null,
                                child: Text(
                                  'All  ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              ...AnilistConstant.mediaTags
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text('$e  '),
                                    ),
                                  )
                                  .toList(),
                            ],
                            onChanged: (v) {
                              newState(() => tag = v);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        displayMediaFilterSheet = false;
                      });
                    },
                    child: const Text('CLOSE'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        season = null;
                        seasonYear = null;
                        genre = null;
                        tag = null;
                        displayMediaFilterSheet = false;
                      });
                    },
                    child: const Text('RESET'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        displayMediaFilterSheet = false;
                      });
                    },
                    child: const Text('APPLY'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bottomSearchBarSetting =
        ref.watch(sharedfPrefProvider.notifier).bottomSearchBar;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: _key,
        backgroundColor: AppTheme.background,
        appBar: bottomSearchBarSetting || widget.hide == true
            ? null
            : PreferredSize(
                preferredSize: const Size.fromHeight(55),
                child: SearchAppBar(
                  filterCount: filterCount,
                  textEditingController: textEditingController,
                  mediaType: mediaType,
                  view: view,
                  setState: setState,
                  toggleBottmSheet: () => setState(
                      () => displayMediaFilterSheet = !displayMediaFilterSheet),
                ),
              ),
        bottomSheet: !displayMediaFilterSheet || widget.hide == true
            ? null
            : AnimatedSlide(
                duration: const Duration(milliseconds: 300),
                offset:
                    displayMediaFilterSheet ? Offset.zero : const Offset(0, 2),
                child: MediaFilterSheet(filterSheet: filterSheet(context)),
              ),
        bottomNavigationBar: !bottomSearchBarSetting || widget.hide == true
            ? null
            : BottomSearchBar(
                filterCount: filterCount,
                textEditingController: textEditingController,
                mediaType: mediaType,
                view: view,
                setState: setState,
                toggleBottmSheet: () => setState(
                    () => displayMediaFilterSheet = !displayMediaFilterSheet),
              ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SizedBox(
            width: size.width,
            child: Consumer(
              builder: (context, ref, error) {
                final client = ref.watch(clientProvider);
                return Operation(
                  client: client!,
                  operationRequest: GSearchAnimeQueryReq((b) {
                    b
                      ..vars.search = textEditingController.text.isNotEmpty
                          ? textEditingController.text
                          : null
                      ..vars.type = mediaType.first
                      ..vars.season =
                          mediaType.first == GMediaType.ANIME ? season : null
                      ..vars.seasonYear = mediaType.first == GMediaType.ANIME
                          ? seasonYear
                          : null
                      ..vars.formatIn = null
                      ..vars.genreNotIn = null
                      ..vars.tagNotIn = null;
                    if (tag != null && tag!.isNotEmpty) {
                      b.vars.tagIn.add(tag);
                    }
                    if (genre != null && genre!.isNotEmpty) {
                      b.vars.genreIn.add(genre);
                    }
                    return b;
                  }),
                  builder: (context, response, error) {
                    if (response == null || response.loading) {
                      return LoadingWidget;
                    } else {
                      final res = response.data?.Page?.media;
                      if (view.first == SearchView.GRID) {
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
