import 'package:anilist/medialist_collection.dart';
import 'package:anilist/search_anime_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:lottie/lottie.dart';

import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SearchView { LIST, GRID }

class SearchMedia extends ConsumerStatefulWidget {
  const SearchMedia({super.key});

  @override
  ConsumerState<SearchMedia> createState() => _SearchMediaState();
}

class _SearchMediaState extends ConsumerState<SearchMedia> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  TextEditingController textEditingController = TextEditingController();
  List<GMediaType> a = [GMediaType.ANIME, GMediaType.MANGA];
  Set<GMediaType> seg = {GMediaType.ANIME};
  Set<SearchView> view = {SearchView.LIST};
  GMediaSeason? season;
  int? seasonYear;
  bool clear = false;

  @override
  void initState() {
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: _key,
        backgroundColor: AppTheme.background,
        endDrawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
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
                    SizedBox(height: 20),
                    SegmentedButton(
                      style: ButtonStyle(
                          visualDensity: VisualDensity(
                        vertical: -2,
                      )),
                      segments: [
                        ButtonSegment(
                            value: GMediaType.ANIME, label: Text('Anime')),
                        ButtonSegment(
                            value: GMediaType.MANGA, label: Text('Manga')),
                      ],
                      selected: seg,
                      multiSelectionEnabled: false,
                      showSelectedIcon: true,
                      emptySelectionAllowed: false,
                      onSelectionChanged: (p) {
                        seg = p;
                        newState(() {});
                      },
                    ),
                    SizedBox(height: 20),
                    SegmentedButton(
                      style: ButtonStyle(
                          visualDensity: VisualDensity(
                        vertical: -2,
                      )),
                      segments: [
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
                    SizedBox(height: 14),
                    Visibility(
                      visible: seg.first == GMediaType.ANIME,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white),
                        ),
                        elevation: 0,
                        color: Colors.transparent,
                        margin: EdgeInsets.all(8),
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
                                  Text(
                                    'SEASON',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  DropdownButton(
                                    value: season,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text('NONE'),
                                        value: null,
                                      ),
                                      DropdownMenuItem(
                                        child: Text('WINTER'),
                                        value: GMediaSeason.WINTER,
                                      ),
                                      DropdownMenuItem(
                                        child: Text('SPRING'),
                                        value: GMediaSeason.SPRING,
                                      ),
                                      DropdownMenuItem(
                                        child: Text('SUMMER'),
                                        value: GMediaSeason.SUMMER,
                                      ),
                                      DropdownMenuItem(
                                        child: Text('FALL'),
                                        value: GMediaSeason.FALL,
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
                                  Text(
                                    'YEAR',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  DropdownButton(
                                    value: seasonYear,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text('NONE'),
                                        value: null,
                                      ),
                                      for (int i = 1970; i <= 2023; i++)
                                        DropdownMenuItem(
                                          child: Text('$i'),
                                          value: i,
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
                                  icon: Icon(Icons.clear),
                                  onPressed: () {
                                    newState(() {
                                      season = null;
                                      seasonYear = null;
                                    });
                                  },
                                  label: Text('Clear Filter'),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {});
                        context.pop();
                      },
                      child: Text('APPLY'),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.secondaryColor,
          scrolledUnderElevation: 0,
          leading: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => context.pop(),
          ),
          actions: [
            IconButton(
              visualDensity: VisualDensity(horizontal: -4, vertical: -2),
              onPressed: () async {
                _key.currentState!.openEndDrawer();
              },
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.green,
                side: BorderSide(color: Colors.green),
              ),
              icon: Icon(
                view.first == SearchView.LIST
                    ? Icons.menu
                    : Icons.grid_4x4_rounded,
                size: 20,
              ),
            ),
            SizedBox(width: 16),
          ],
          title: TextField(
            controller: textEditingController,
            onSubmitted: (v) => setState(() {}),
            decoration: InputDecoration(
              hintText: 'What are you looking for?',
              border: InputBorder.none,
              isDense: false,
              suffixIcon: IconButton(
                  onPressed: () {
                    textEditingController.value = TextEditingValue(
                      text: '',
                      selection: TextSelection.fromPosition(
                        TextPosition(offset: 0),
                      ),
                    );
                  },
                  icon: Icon(Icons.clear)),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: size.width,
            child: Consumer(
              builder: (context, ref, error) {
                final client = ref.watch(clientProvider);
                return Operation(
                  client: client!,
                  operationRequest: GSearchAnimeQueryReq(
                    (b) => b
                      ..vars.search = textEditingController.text.isNotEmpty
                          ? textEditingController.text
                          : null
                      ..vars.type = seg.first
                      ..vars.season =
                          seg.first == GMediaType.ANIME ? season : null
                      ..vars.seasonYear =
                          seg.first == GMediaType.ANIME ? seasonYear : null,
                  ),
                  builder: (context, response, error) {
                    if (response == null || response.loading) {
                      return Center(
                        child: LottieBuilder.asset(
                          'assets/lotties/loading-gif-animation.json',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      );
                    } else {
                      final res = response.data?.Page?.media;
                      if (view.first == SearchView.GRID) {
                        return GridView.builder(
                          padding: EdgeInsets.all(10),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 2 / 4,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 0,
                          ),
                          itemCount: res?.length ?? 0,
                          itemBuilder: (context, index) {
                            final data = res?.elementAt(index);
                            return GestureDetector(
                              onTap: () {
                                HapticFeedback.lightImpact();
                                context.pushNamed(
                                  AppRouteConstant.MediaScreen.name,
                                  params: {
                                    'id': (data?.id ?? 0).toString(),
                                    'title': data?.title?.userPreferred ?? '',
                                  },
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: CachedNetworkImage(
                                      height: 170,
                                      fit: BoxFit.fitWidth,
                                      imageUrl: data?.coverImage?.large ?? '',
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    data?.title?.userPreferred ?? '',
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
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
                                //print((data?.id ?? 0).toString());
                                HapticFeedback.lightImpact();
                                context.pushNamed(
                                  AppRouteConstant.MediaScreen.name,
                                  params: {
                                    'id': (data?.id ?? 0).toString(),
                                    'title': data?.title?.userPreferred ?? '',
                                  },
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  width: size.width,
                                  margin: EdgeInsets.only(
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
                                          margin: EdgeInsets.only(left: 10),
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
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                data?.title?.userPreferred ??
                                                    '',
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                '${data?.startDate?.year} • ${data?.format?.name}',
                                                style: TextStyle(
                                                  color: Colors.blue.shade200,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                ),
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
