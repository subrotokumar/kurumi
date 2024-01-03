// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/constants/anilist_constant.dart';
import 'package:kurumi/src/core/enum/enum.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/features/search_media/widget/filter_option_widget.dart';
import 'package:kurumi/src/provider/provider.dart';

final _refreshProvider = StateProvider((ref) => true);
typedef FilterOption = (
  GMediaType, // media type
  int?, // year
  GMediaSeason?, // season
  Set<String>, // tag
  Set<String> // genre
);

class SearchFilterScreen extends StatefulWidget {
  const SearchFilterScreen({super.key, required this.filterOption});
  final FilterOption filterOption;

  @override
  State<SearchFilterScreen> createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen> {
  GMediaType mediaType = GMediaType.ANIME;
  int? year;
  GMediaSeason? season;
  Set<String> tagIn = {};
  Set<String> genre = {};

  @override
  void initState() {
    super.initState();
    final (type, yy, ss, tag, gen) = widget.filterOption;
    mediaType = type;
    year = yy;
    tagIn = tag;
    genre = gen;
    season = ss;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.gifs.aurora.provider(),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Apply Filter'),
          backgroundColor: Colors.black12,
        ),
        body: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  FilterOptionWidget(
                    backgroundColor: mediaType == GMediaType.ANIME
                        ? const Color.fromARGB(255, 254, 91, 91)
                            .withOpacity(0.4)
                        : Colors.yellow.shade100.withOpacity(.2),
                    icon: Icon(
                      mediaType == GMediaType.ANIME
                          ? Icons.live_tv_sharp
                          : Icons.book,
                      color: Colors.white60,
                      size: 30,
                    ),
                    onTap: () => setState(() {
                      mediaType = switch (mediaType.name) {
                        'ANIME' => GMediaType.MANGA,
                        'MANGA' => GMediaType.ANIME,
                        _ => mediaType
                      };
                    }),
                    subtitle: 'Media Type',
                    title: mediaType.name,
                  ),
                  const SizedBox(width: 12),
                  Consumer(
                    builder: (context, ref, child) {
                      final pref = ref.watch(sharedfPrefProvider.notifier);
                      final view = pref.defaultSearchView;
                      return FilterOptionWidget(
                        backgroundColor: view == SearchView.LIST
                            ? Colors.lightBlueAccent.withOpacity(.2)
                            : Colors.lightGreenAccent.withOpacity(.2),
                        icon: Icon(
                          view == SearchView.LIST
                              ? Icons.view_list
                              : Icons.grid_view,
                          color: Colors.white60,
                          size: 30,
                        ),
                        onTap: () async {
                          await pref.toggleDefaultSearchView();
                          setState(() {});
                        },
                        subtitle: 'Search View',
                        title: view.name,
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  FilterOptionWidget(
                    backgroundColor:
                        year == null ? Colors.white10 : Colors.white30,
                    icon: const Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.white60,
                      size: 30,
                    ),
                    onTap: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          int? newYear = year;
                          final currentYear = DateTime.now().year;
                          return AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Year',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 200,
                                  child: CupertinoPicker(
                                    magnification: 1.1,
                                    useMagnifier: true,
                                    itemExtent: 30,
                                    onSelectedItemChanged: (v) {
                                      newYear = v == 0
                                          ? null
                                          : DateTime.now().year - v + 2;
                                    },
                                    children: [
                                      const Text('ALL'),
                                      for (int i = DateTime.now().year + 1;
                                          i >= 1980;
                                          i--)
                                        Text(
                                          i.toString(),
                                          style: TextStyle(
                                              color: currentYear == i
                                                  ? Colors.amber
                                                  : null),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => context.pop(),
                                child: const Text('CANCEL'),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() => year = newYear);
                                  context.pop();
                                },
                                child: const Text('APPLY'),
                              ),
                            ],
                          );
                        },
                      );
                      setState(() {});
                    },
                    subtitle: 'Year',
                    title: year == null ? 'All' : year!.toString(),
                  ),
                  const SizedBox(width: 12),
                  FilterOptionWidget(
                    backgroundColor:
                        season == null ? Colors.white10 : Colors.white30,
                    icon: const Icon(
                      Icons.sunny_snowing,
                      color: Colors.white60,
                      size: 30,
                    ),
                    onTap: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          GMediaSeason? newSeason = season;
                          return AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Year',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 200,
                                  child: CupertinoPicker(
                                    magnification: 1.1,
                                    useMagnifier: true,
                                    itemExtent: 30,
                                    onSelectedItemChanged: (v) {
                                      newSeason = switch (v) {
                                        1 => GMediaSeason.WINTER,
                                        2 => GMediaSeason.SPRING,
                                        3 => GMediaSeason.SUMMER,
                                        4 => GMediaSeason.FALL,
                                        _ => null,
                                      };
                                    },
                                    children: [
                                      const Text('ALL'),
                                      Text(GMediaSeason.WINTER.name),
                                      Text(GMediaSeason.SPRING.name),
                                      Text(GMediaSeason.SUMMER.name),
                                      Text(GMediaSeason.FALL.name),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => context.pop(),
                                child: const Text('CANCEL'),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() => season = newSeason);
                                  context.pop();
                                },
                                child: const Text('APPLY'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    subtitle: 'Season',
                    title: season == null ? 'All' : season!.name,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Card(
                    color: Colors.white12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color:
                            genre.isEmpty ? Colors.transparent : Colors.white30,
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Column(
                      children: [
                        TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Text(
                              ' GENRE ${genre.isNotEmpty ? '(${genre.length})' : ''}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            Text(
                              ' TAGS ${tagIn.isNotEmpty ? '(${tagIn.length})' : ''}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: TabBarView(
                              children: [
                                GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 5 / 3,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                  itemCount: AnilistConstant.mediaGenres.length,
                                  itemBuilder: (context, index) {
                                    final e = AnilistConstant.mediaGenres
                                        .elementAt(index);
                                    return StatefulBuilder(
                                        builder: (context, newState) {
                                      bool flag = genre.contains(e);
                                      return Consumer(
                                          builder: (context, ref, child) {
                                        return GestureDetector(
                                          onTap: () {
                                            flag
                                                ? genre.remove(e)
                                                : genre.add(e);
                                            ref
                                                .read(_refreshProvider.notifier)
                                                .update((s) => !s);
                                            newState(() {});
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.all(5),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 3),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: flag
                                                    ? Colors.white
                                                    : Colors.transparent,
                                                width: 1,
                                              ),
                                              image: DecorationImage(
                                                image:
                                                    CachedNetworkImageProvider(
                                                  AnilistConstant.genreImg[e]!,
                                                ),
                                                fit: BoxFit.cover,
                                                opacity: flag ? .5 : .3,
                                              ),
                                            ),
                                            child: Text(
                                              e,
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.85),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                    });
                                  },
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 7 / 1,
                                    mainAxisSpacing: 5,
                                    crossAxisSpacing: 5,
                                  ),
                                  itemCount: AnilistConstant.mediaTags.length,
                                  itemBuilder: (context, index) {
                                    final e = AnilistConstant.mediaTags
                                        .elementAt(index);
                                    return StatefulBuilder(
                                      builder: (context, newState) {
                                        bool flag = tagIn.contains(e);
                                        return Consumer(
                                          builder: (context, ref, child) {
                                            return GestureDetector(
                                              onTap: () {
                                                flag
                                                    ? tagIn.remove(e)
                                                    : tagIn.add(e);
                                                ref
                                                    .read(_refreshProvider
                                                        .notifier)
                                                    .update((s) => !s);
                                                newState(() {});
                                              },
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 3,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: flag
                                                      ? Colors.green
                                                          .withOpacity(.4)
                                                      : Colors.black38,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  e,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                                // SingleChildScrollView(
                                //   child: Wrap(
                                //     children: AnilistConstant.mediaTags
                                //         .map((e) => StatefulBuilder(
                                //                 builder: (context, newState) {
                                //               bool flag = tagIn.contains(e);
                                //               return Consumer(builder:
                                //                   (context, ref, child) {
                                //                 return GestureDetector(
                                //                   onTap: () {
                                //                     flag
                                //                         ? tagIn.remove(e)
                                //                         : tagIn.add(e);
                                //                     ref
                                //                         .read(_refreshProvider
                                //                             .notifier)
                                //                         .update((s) => !s);
                                //                     newState(() {});
                                //                   },
                                //                   child: Container(
                                //                     margin:
                                //                         const EdgeInsets.all(5),
                                //                     padding: const EdgeInsets
                                //                         .symmetric(
                                //                         horizontal: 8,
                                //                         vertical: 3),
                                //                     decoration: BoxDecoration(
                                //                       color: flag
                                //                           ? Colors.green
                                //                               .withOpacity(.4)
                                //                           : Colors.black38,
                                //                       borderRadius:
                                //                           BorderRadius.circular(
                                //                               10),
                                //                     ),
                                //                     child: Text(
                                //                       e,
                                //                       style: const TextStyle(
                                //                         color: Colors.white,
                                //                         fontWeight:
                                //                             FontWeight.w400,
                                //                         fontSize: 15,
                                //                       ),
                                //                     ),
                                //                   ),
                                //                 );
                                //               });
                                //             }))
                                //         .toList(),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: OutlinedButton(
                        onPressed: () => {
                          setState(() {
                            year = null;
                            season = null;
                            tagIn = {};
                            genre = {};
                          })
                        },
                        child: const Text('CLEAR'),
                      ),
                    ),
                    Flexible(
                      child: OutlinedButton(
                        onPressed: () {
                          Set<String> a = {}, b = {};
                          context.pop((mediaType, null, null, a, b));
                        },
                        child: const Text('RESET'),
                      ),
                    ),
                    Flexible(
                      child: OutlinedButton(
                        onPressed: () {
                          context.pop((mediaType, year, season, tagIn, genre));
                        },
                        child: const Text('APPLY'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
