import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/profile/widgets/overview_section.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class EpisodeCountDistributionChart extends StatelessWidget {
  const EpisodeCountDistributionChart({super.key, required this.widget});

  final OverviewSection widget;

  @override
  Widget build(BuildContext context) {
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
    return Visibility(
      visible: widget.data?.statistics?.anime?.lengths != null &&
          (widget.data?.statistics?.anime?.lengths?.length ?? 0) > 0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Episode Count',
              style: Poppins(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Gap(20),
            Builder(
              builder: (context) {
                var data = widget.data?.statistics?.anime?.lengths?.toList();
                return SfCartesianChart(
                  primaryYAxis: const CategoryAxis(isVisible: true),
                  primaryXAxis: const CategoryAxis(),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: [
                    ColumnSeries<GProfileData_Viewer_statistics_anime_lengths?,
                        String>(
                      dataSource: data,
                      pointColorMapper: (datum, index) =>
                          colorList.elementAt(index),
                      xValueMapper: (data, _) => data?.length,
                      yValueMapper: (data, _) => data?.count.toDouble(),
                      name: 'Users',
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
