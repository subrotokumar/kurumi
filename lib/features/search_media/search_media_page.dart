// ignore_for_file: constant_identifier_names

import 'package:anilist/medialist_collection.dart';
import 'package:anilist/search_anime_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/features/search_media/components/media_filter_sheet.dart';
import 'package:kurumi/features/search_media/components/status_widget.dart';
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
  int? seasonYear;
  bool clear = false;

  @override
  void initState() {
    mediaType = widget.mediaType == null ? mediaType : {widget.mediaType!};
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
        endDrawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/lotties/giphy.gif'),
                fit: BoxFit.fitHeight,
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
                        ButtonSegment(
                            value: GMediaType.ANIME, label: Text('Anime')),
                        ButtonSegment(
                            value: GMediaType.MANGA, label: Text('Manga')),
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
                        ButtonSegment(
                            value: SearchView.LIST, label: Text('LIST')),
                        ButtonSegment(
                            value: SearchView.GRID, label: Text('GRID')),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'SEASON',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  DropdownButton(
                                    isDense: true,
                                    underline: Container(),
                                    value: season,
                                    items: [
                                      const DropdownMenuItem(
                                        value: null,
                                        child: Text(
                                          'All',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: GMediaSeason.WINTER,
                                        child: Text(GMediaSeason.WINTER.name),
                                      ),
                                      DropdownMenuItem(
                                        value: GMediaSeason.SPRING,
                                        child: Text(GMediaSeason.SPRING.name),
                                      ),
                                      DropdownMenuItem(
                                        value: GMediaSeason.SUMMER,
                                        child: Text(GMediaSeason.SUMMER.name),
                                      ),
                                      DropdownMenuItem(
                                        value: GMediaSeason.FALL,
                                        child: Text(GMediaSeason.FALL.name),
                                      ),
                                    ],
                                    onChanged: (v) {
                                      newState(() => season = v);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'YEAR',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  DropdownButton(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton.icon(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    newState(() {
                                      season = null;
                                      seasonYear = null;
                                    });
                                  },
                                  label: const Text('Clear Filter'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {});
                        context.pop();
                      },
                      child: const Text('APPLY'),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
        appBar: bottomSearchBarSetting || widget.hide == true
            ? null
            : PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: SearchAppBar(
                  keyOfDrawer: _key,
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
                child: const MediaFilterSheet(),
              ),
        bottomNavigationBar: !bottomSearchBarSetting || widget.hide == true
            ? null
            : BottomSearchBar(
                keyOfDrawer: _key,
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
                    if (widget.tag != null && widget.tag!.isNotEmpty) {
                      b.vars.tagIn.add(widget.tag);
                    }
                    if (widget.genre != null && widget.genre!.isNotEmpty) {
                      b.vars.genreIn.add(widget.genre);
                    }
                    return b;
                  }),
                  builder: (context, response, error) {
                    if (response == null || response.loading) {
                      return LoadingWidget;
                    } else {
                      final res = response.data?.Page?.media;
                      if (view.first == SearchView.GRID) {
                        return GridView.builder(
                          padding: const EdgeInsets.all(16),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: size.width > 500 ? 4 : 3,
                            childAspectRatio: 2 / 3,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                          itemCount: res?.length ?? 0,
                          itemBuilder: (context, index) {
                            final data = res?.elementAt(index);
                            return GestureDetector(
                              onTap: () {
                                HapticFeedback.lightImpact();
                                context.pushNamed(
                                  AppRouteConstant.MediaScreen.name,
                                  pathParameters: {
                                    'id': (data?.id ?? 0).toString(),
                                    'title': data?.title?.userPreferred ?? '',
                                  },
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: CachedNetworkImage(
                                        // height: 170,
                                        fit: BoxFit.cover,
                                        imageUrl: data?.coverImage?.large ?? '',
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: StatusWidget(
                                          data: data,
                                          background: Colors.black45,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        width: double.maxFinite,
                                        color: Colors.black45,
                                        padding: const EdgeInsets.all(2),
                                        child: Text(
                                          data?.title?.userPreferred ?? '',
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize:
                                                size.width > 500 ? 16 : 12,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: res?.length ?? 0,
                          itemBuilder: (context, index) {
                            final data = res?.elementAt(index);
                            return GestureDetector(
                              onTap: () {
                                HapticFeedback.lightImpact();
                                context.pushNamed(
                                  AppRouteConstant.MediaScreen.name,
                                  pathParameters: {
                                    'id': (data?.id ?? 0).toString(),
                                    'title': data?.title?.userPreferred ?? '',
                                  },
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  width: size.width,
                                  margin: const EdgeInsets.only(
                                      left: 12, right: 12, top: 20),
                                  height: 120,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              data?.coverImage?.large ?? '',
                                          height: 120,
                                          width: 90,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8,
                                            horizontal: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            border: Border.all(
                                              color: Colors.white24,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    data?.title
                                                            ?.userPreferred ??
                                                        '',
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  RichText(
                                                    text: TextSpan(
                                                      text:
                                                          '${(data?.startDate?.year) ?? ''}',
                                                      style: TextStyle(
                                                        color: Colors
                                                            .blue.shade200,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: data?.format
                                                                      ?.name !=
                                                                  null
                                                              ? ' • ${data?.format?.name[0]}${data?.format?.name.substring(1).toLowerCase()}'
                                                              : '',
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .orange),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: StatusWidget(data: data),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
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
