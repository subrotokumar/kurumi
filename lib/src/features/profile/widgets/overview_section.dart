import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:kurumi/src/features/profile/widgets/episode_count_chart.dart';
import 'package:kurumi/src/features/profile/widgets/format_distribution_chart.dart';
import 'package:kurumi/src/features/profile/widgets/genre_overview.dart';
import 'package:kurumi/src/features/profile/widgets/score_distribution.dart';
import 'package:kurumi/src/features/profile/widgets/status_distribution_chart.dart';

class OverviewSection extends ConsumerStatefulWidget {
  final GProfileData_Viewer? data;
  final TabController tabController;
  const OverviewSection({super.key, this.data, required this.tabController});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OverviewSectionState();
}

class _OverviewSectionState extends ConsumerState<OverviewSection> {
  Map<DateTime, int> dataset = {};
  Map<DateTime, int> dateToAmount = {};

  @override
  void initState() {
    super.initState();
    if (widget.data?.stats?.activityHistory?.length != null &&
        widget.data!.stats!.activityHistory!.isNotEmpty) {
      final list = widget.data?.stats?.activityHistory?.toList() ?? [];
      for (final item in list) {
        if (item?.date == null || item?.amount == null) continue;
        final date = DateTime.fromMillisecondsSinceEpoch(
          (item?.date ?? 0) * 1000,
          isUtc: true,
        );
        dataset[DateTime(date.year, date.month, date.day)] = (item?.level ?? 0);
        dateToAmount[DateTime(date.year, date.month, date.day)] =
            (item?.amount ?? 0);
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final (_, w) = context.getSize;
    final animeCount = widget.data?.favourites?.anime?.nodes?.length ?? 0;
    final mangaCount = widget.data?.favourites?.manga?.nodes?.length ?? 0;
    final characterCount =
        widget.data?.favourites?.characters?.nodes?.length ?? 0;

    if (widget.data == null) {
      return Container();
    } else {
      return Container(
        padding: const EdgeInsets.all(8).copyWith(top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: animeCount > 0 || mangaCount > 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(
                            "Anime",
                            textAlign: TextAlign.center,
                            style: Poppins(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Text(
                            "Manga",
                            textAlign: TextAlign.center,
                            style: Poppins(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    GridView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                      ),
                      children: [
                        GestureDetector(
                          onTap: () => widget.tabController.animateTo(
                            1,
                            curve: Curves.linear,
                            duration: 500.milliseconds,
                          ),
                          child: Card(
                            color: Colors.white12,
                            child: GridView.builder(
                              padding: const EdgeInsets.all(8),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 1,
                              ),
                              itemCount: animeCount > 4 ? 4 : animeCount,
                              itemBuilder: (context, index) {
                                final imageUrl = widget
                                        .data?.favourites?.anime?.nodes
                                        ?.elementAt(index)
                                        ?.coverImage
                                        ?.medium ??
                                    widget.data?.favourites?.anime?.nodes
                                        ?.elementAt(index)
                                        ?.coverImage
                                        ?.large ??
                                    '';
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: CachedNetworkImage(
                                      imageUrl: imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => widget.tabController.animateTo(
                            2,
                            curve: Curves.linear,
                            duration: 500.milliseconds,
                          ),
                          child: Card(
                            color: Colors.white12,
                            child: GridView.builder(
                              padding: const EdgeInsets.all(8),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 1,
                              ),
                              itemCount: mangaCount > 4 ? 4 : mangaCount,
                              itemBuilder: (context, index) {
                                final imageUrl = widget
                                        .data?.favourites?.manga?.nodes
                                        ?.elementAt(index)
                                        ?.coverImage
                                        ?.medium ??
                                    widget.data?.favourites?.manga?.nodes
                                        ?.elementAt(index)
                                        ?.coverImage
                                        ?.large ??
                                    '';
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: CachedNetworkImage(
                                      imageUrl: imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                  ],
                ),
              ),
              Visibility(
                visible: characterCount > 0,
                child: GestureDetector(
                  onTap: () => widget.tabController.animateTo(
                    3,
                    curve: Curves.linear,
                    duration: 500.milliseconds,
                  ),
                  child: Card(
                    // color: Colors.white12,
                    child: Column(
                      children: [
                        const Gap(3),
                        Text(
                          "Character",
                          textAlign: TextAlign.center,
                          style: Poppins(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          height: 60,
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            shrinkWrap: true,
                            itemCount:
                                characterCount > (w ~/ 68) ? (w ~/ 68) : 0,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) => const Gap(8),
                            itemBuilder: (context, index) {
                              final data = widget
                                  .data?.favourites?.characters?.nodes
                                  ?.elementAt(index);
                              final imageUrl = data?.image?.medium ??
                                  data?.image?.large ??
                                  '';
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: CachedNetworkImage(
                                      imageUrl: imageUrl,
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GenreOverview(widget: widget),
              ActivityHistory(dataset: dataset, dateToAmount: dateToAmount),
              FormatDistributionChart(
                data: widget.data?.statistics?.anime?.formats,
                totalMedia: widget.data?.statistics?.anime?.count,
              ),
              StatusDistributionChart(
                data: widget.data?.statistics?.anime?.statuses,
                totalMedia: widget.data?.statistics?.anime?.count,
              ),
              ScoreDistributionChart(
                data: widget.data?.statistics?.anime?.scores,
              ),
              EpisodeCountDistributionChart(
                data: widget.data?.statistics?.anime,
              ),
              const Gap(50),
            ],
          ),
        ),
      );
    }
  }
}

class ActivityHistory extends StatelessWidget {
  const ActivityHistory({
    super.key,
    required this.dataset,
    required this.dateToAmount,
  });

  final Map<DateTime, int> dataset;
  final Map<DateTime, int> dateToAmount;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: dataset.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(15),
          Text(
            ' Activity History',
            style: Poppins(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Gap(20),
          HeatMap(
            defaultColor: Colors.indigo.shade50,
            startDate: DateTime.now().subtract(30.days * 6),
            endDate: DateTime.now(),
            datasets: dataset,
            showColorTip: true,
            colorMode: ColorMode.color,
            showText: true,
            scrollable: true,
            colorsets: {
              1: Colors.indigo.shade200,
              2: Colors.indigo.shade300,
              3: Colors.indigo.shade400,
              4: Colors.indigo.shade600,
            },
            onClick: (value) {
              final activities = dateToAmount[value];
              if (activities == null) return;
              String message =
                  "${DateFormat.MMMMEEEEd().format(value)} | Activity : $activities";
              showSnackBar(context, message, duration: 2.seconds);
            },
          ),
          const Gap(15),
        ],
      ),
    );
  }
}
