import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:kurumi/src/features/new_media_description/widgets/moving_media_banner.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BannerAppBar extends ConsumerWidget {
  const BannerAppBar({
    super.key,
    required this.data,
    required this.loading,
  });

  final GMediaDetailQueryData_Media? data;

  final StateProvider<bool> loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final bannerAnimation =
        ref.watch(sharedfPrefProvider.notifier).bannerAnimation;
    return Column(
      children: [
        Stack(
          children: [
            Visibility(
              visible: data?.bannerImage != null && bannerAnimation,
              replacement: CachedNetworkImage(
                imageUrl: data?.bannerImage ??
                    data?.coverImage?.extraLarge ??
                    data?.coverImage?.large ??
                    data?.coverImage?.medium ??
                    '',
                width: size.width,
                height: size.height * .30,
                fit: data?.bannerImage != null
                    ? BoxFit.fitHeight
                    : BoxFit.fitWidth,
              ),
              child: MovingMediaBanner(data: data),
            ),
            Container(
              width: size.width,
              height: size.height * .30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    AppTheme.background.withOpacity(.1),
                    AppTheme.background.withOpacity(.4),
                    AppTheme.background.withOpacity(0.7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(5, 30, 10, 10),
              child: Row(
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Theme.of(context).iconTheme.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      fixedSize: const Size.square(25),
                      side: const BorderSide(color: Colors.white12, width: 0.5),
                    ),
                    onPressed: () {
                      if (context.canPop()) {
                        context.pop();
                      }
                    },
                    icon: Icon(
                      PhosphorIcons.arrowUpLeft(PhosphorIconsStyle.regular),
                      size: 25.0,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: Icon(
                      PhosphorIcons.sidebar(PhosphorIconsStyle.regular),
                      color: Colors.white,
                    ),
                  ),
                  StatDistributionIcon(data: data),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class StatDistributionIcon extends StatelessWidget {
  const StatDistributionIcon({
    super.key,
    required this.data,
    this.size,
  });
  final double? size;
  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        foregroundColor: Theme.of(context).iconTheme.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        fixedSize: const Size.square(25),
        side: const BorderSide(color: Colors.white12, width: 0.5),
      ),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return MediaStateWidget(
              data: data,
            );
          },
        );
      },
      icon: Icon(
        PhosphorIcons.chartPieSlice(PhosphorIconsStyle.regular),
        size: size ?? 25.0,
      ),
    );
  }
}

List<Color> colorList = const [
  Color(0xFF8B4513), // Brown
  Color(0xFFA0522D),
  Color(0xFFCD853F),
  Color(0xFFDEB887),
  Color(0xFFD2B48C),
  Color(0xFFC0C000),
  Color(0xFF8FBC8F),
  Color(0xFF3CB371),
  Color(0xFF2E8B57),
  Color(0xFF008000), // Green
];

class MediaStateWidget extends StatefulWidget {
  const MediaStateWidget({
    super.key,
    this.data,
  });
  final GMediaDetailQueryData_Media? data;

  @override
  State<MediaStateWidget> createState() => _MediaStateWidgetState();
}

class _MediaStateWidgetState extends State<MediaStateWidget> {
  Color getColor(GMediaListStatus s) => switch (s) {
        GMediaListStatus.CURRENT => Colors.greenAccent,
        GMediaListStatus.COMPLETED => Colors.blue,
        GMediaListStatus.PLANNING => Colors.pink,
        GMediaListStatus.PAUSED => Colors.yellow,
        GMediaListStatus.DROPPED => Colors.red,
        _ => Colors.white.withOpacity(0.9),
      };
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(20),
      child: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Distribution',
              style: Poppins(
                color: Colors.white.withOpacity(0.95),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            TabBar(
              tabs: [
                Text(
                  'STATUS',
                  style: Poppins(
                    color: Colors.white.withOpacity(0.95),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'SCORE',
                  style: Poppins(
                    color: Colors.white.withOpacity(0.95),
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            Container(
              height: size.height * .5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white30),
              ),
              child: TabBarView(
                children: [
                  SfCircularChart(
                    enableMultiSelection: true,
                    legend: const Legend(
                      isVisible: true,
                      overflowMode: LegendItemOverflowMode.wrap,
                    ),
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <CircularSeries>[
                      // Render pie chart
                      DoughnutSeries<
                          GMediaDetailQueryData_Media_stats_statusDistribution?,
                          String>(
                        dataSource:
                            widget.data?.stats?.statusDistribution?.toList() ??
                                [],
                        pointColorMapper: (data, _) => getColor(data!.status!),
                        xValueMapper: (data, _) => data!.status!.name,
                        yValueMapper: (data, _) => data!.amount,
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                  Builder(
                    builder: (context) {
                      final data =
                          (widget.data?.stats?.scoreDistribution?.asList() ??
                              []);
                      return SfCartesianChart(
                        primaryYAxis: const CategoryAxis(isVisible: true),
                        primaryXAxis: const CategoryAxis(),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: [
                          ColumnSeries<
                              GMediaDetailQueryData_Media_stats_scoreDistribution?,
                              String>(
                            dataSource: data,
                            pointColorMapper: (datum, index) =>
                                colorList.elementAt(index),
                            xValueMapper: (data, _) => data?.score.toString(),
                            yValueMapper: (data, _) => data?.amount?.toDouble(),
                            name: 'Users',
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
