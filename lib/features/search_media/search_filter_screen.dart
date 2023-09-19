// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:anilist/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/constants/anilist_constant.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:kurumi/core/routes/router.dart';
import 'package:kurumi/provider/provider.dart';

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
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/lotties/giphy.gif'),
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
          width: size.width,
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
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
                                          Text(i.toString()),
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
                DefaultTabController(
                  length: 2,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color:
                            genre.isEmpty ? Colors.transparent : Colors.white70,
                      ),
                    ),
                    tileColor: Colors.white12,
                    title: const TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Text(
                          ' GENRE',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Text(
                          ' TAGS',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                    subtitle: Container(
                      height: size.height * .3,
                      padding: const EdgeInsets.only(top: 10),
                      child: TabBarView(
                        children: [
                          Wrap(
                            children: AnilistConstant.mediaGenres
                                .map((e) => StatefulBuilder(
                                        builder: (context, newState) {
                                      bool flag = genre.contains(e);
                                      return GestureDetector(
                                        onTap: () {
                                          if (flag)
                                            genre.remove(e);
                                          else
                                            genre.add(e);
                                          newState(() {});
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.all(5),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 3),
                                          decoration: BoxDecoration(
                                            color: flag
                                                ? Colors.green.withOpacity(.4)
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
                                    }))
                                .toList(),
                          ),
                          SingleChildScrollView(
                            child: Wrap(
                              children: AnilistConstant.mediaTags
                                  .map((e) => StatefulBuilder(
                                          builder: (context, newState) {
                                        bool flag = tagIn.contains(e);
                                        return GestureDetector(
                                          onTap: () {
                                            if (flag)
                                              tagIn.remove(e);
                                            else
                                              tagIn.add(e);
                                            newState(() {});
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.all(5),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 3),
                                            decoration: BoxDecoration(
                                              color: flag
                                                  ? Colors.green.withOpacity(.4)
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
                                      }))
                                  .toList(),
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
                            context
                                .pop((mediaType, year, season, tagIn, genre));
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
      ),
    );
  }
}

class FilterOptionWidget extends StatelessWidget {
  const FilterOptionWidget({
    super.key,
    required this.backgroundColor,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final Color backgroundColor;
  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        height: 80,
        clipBehavior: Clip.hardEdge,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Center(
            child: ListTile(
              title: Text(title),
              subtitle: Text(
                subtitle,
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: icon,
            ),
          ),
        ),
      ),
    );
  }
}
