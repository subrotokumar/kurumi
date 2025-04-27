import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/profile/widgets/high_light_widget.dart';
import 'package:kurumi/src/features/profile/widgets/overview_section.dart';

class GenreOverview extends StatelessWidget {
  const GenreOverview({
    super.key,
    required this.widget,
  });

  final OverviewSection widget;

  @override
  Widget build(BuildContext context) {
    final (_, w) = context.getSize;
    final animeGenrePreviewCount =
        widget.data?.statistics?.anime?.genrePreview?.length ?? 0;
    final mangaGenrePreviewCount =
        widget.data?.statistics?.manga?.genrePreview?.length ?? 0;
    final animeColor = [
      Colors.red,
      Colors.grey,
      Colors.orange,
      Colors.green,
      Colors.blue,
      Colors.purple,
    ];
    final mangaColor = animeColor.reversed.toList();

    return Visibility(
      visible: animeGenrePreviewCount > 0 || mangaGenrePreviewCount > 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(15),
          Text(
            ' Genre Overview',
            style: Poppins(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Gap(5),
          Visibility(
            visible: animeGenrePreviewCount > 0,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 75,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: animeGenrePreviewCount == 0
                    ? animeGenrePreviewCount
                    : animeGenrePreviewCount + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Card(
                        child: Center(
                          child: Transform.rotate(
                            angle: pi / -2,
                            child: Text(
                              'Anime',
                              style: Poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  final item = widget.data?.statistics?.anime?.genrePreview
                      ?.elementAt(index - 1);
                  return SizedBox(
                    width: w * 0.35,
                    child: HighLightWidget(
                      title: '${item?.genre}',
                      value: '${item?.count ?? 0}',
                      color: animeColor[index % 6],
                      subfix: 'Entries',
                    ),
                  );
                },
              ),
            ),
          ),
          Visibility(
            visible: mangaGenrePreviewCount > 0,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 75,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: mangaGenrePreviewCount == 0
                    ? mangaGenrePreviewCount
                    : mangaGenrePreviewCount + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Card(
                        child: Center(
                          child: Transform.rotate(
                            angle: pi / -2,
                            child: Text(
                              'Manga',
                              style: Poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  final item = widget.data?.statistics?.manga?.genrePreview
                      ?.elementAt(index - 1);
                  return SizedBox(
                    width: w * 0.35,
                    child: HighLightWidget(
                      title: '${item?.genre}',
                      value: '${item?.count ?? 0}',
                      color: mangaColor[index % 6],
                      subfix: 'Entries',
                    ),
                  );
                },
              ),
            ),
          ),
          Gap(15),
        ],
      ),
    );
  }
}
