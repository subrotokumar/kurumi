import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:anilist/anilist.dart';
// ignore: depend_on_referenced_packages
import 'package:built_collection/src/list.dart' show BuiltList;
import 'package:syncfusion_flutter_charts/charts.dart';

class ScoreDistributionChart extends ConsumerStatefulWidget {
  final BuiltList<GProfileData_Viewer_statistics_anime_scores?>? data;
  const ScoreDistributionChart({super.key, this.data});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScoreDistributionChartState();
}

class _ScoreDistributionChartState
    extends ConsumerState<ScoreDistributionChart> {
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
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.data != null && (widget.data?.length ?? 0) > 0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Score',
              style: Poppins(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Gap(20),
            Builder(
              builder: (context) {
                var data = widget.data?.toList()
                  ?..sort((a, b) {
                    double aa = a?.meanScore ?? 0.0;
                    double bb = b?.meanScore ?? 0.0;
                    return aa.compareTo(bb);
                  });
                return SfCartesianChart(
                  primaryYAxis: const CategoryAxis(isVisible: true),
                  primaryXAxis: const CategoryAxis(),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: [
                    ColumnSeries<GProfileData_Viewer_statistics_anime_scores?,
                        String>(
                      dataSource: data,
                      pointColorMapper: (datum, index) =>
                          colorList.elementAt(index),
                      xValueMapper: (data, _) => data?.score.toString(),
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
