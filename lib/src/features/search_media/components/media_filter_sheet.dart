import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/constants/anilist_constant.dart';

class MediaFilterSheet extends StatefulWidget {
  const MediaFilterSheet({super.key, required this.filterSheet});
  final Widget? filterSheet;

  @override
  State<MediaFilterSheet> createState() => _MediaFilterSheetState();
}

class _MediaFilterSheetState extends State<MediaFilterSheet>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  int? seasonYear;

  @override
  Widget build(BuildContext context) {
    return widget.filterSheet ??
        Container(
          height: 250,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            image: DecorationImage(
              image: Assets.gifs.aurora.provider(),
              fit: BoxFit.cover,
              opacity: 0.2,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      const Text('Media Type'),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
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
                                    value: seasonYear,
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
                                      setState(() => {});
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
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
                                      for (
                                        int i = DateTime.now().year + 1;
                                        i >= 1980;
                                        i--
                                      )
                                        DropdownMenuItem(
                                          value: i,
                                          child: Text('$i  '),
                                        ),
                                    ],
                                    onChanged: (v) {
                                      setState(() => seasonYear = v);
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
                                    setState(() {
                                      seasonYear = null;
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
                      SingleChildScrollView(
                        child: Wrap(
                          children: AnilistConstant.mediaGenres
                              .map(
                                (e) => Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white24,
                                  ),
                                  child: Text(e),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Wrap(
                          children: AnilistConstant.mediaTags
                              .map(
                                (e) => Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white24,
                                  ),
                                  child: Text(e),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                controller: tabController,
                dividerColor: Colors.transparent,
                tabs: const [
                  Text('MEDIA'),
                  Text('SEASONS'),
                  Text('GENRES'),
                  Text('TAGS'),
                ],
              ),
            ],
          ),
        );
  }
}
