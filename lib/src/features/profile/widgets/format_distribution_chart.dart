import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:built_collection/src/list.dart' show BuiltList;

class FormatDistributionChart extends ConsumerStatefulWidget {
  const FormatDistributionChart({super.key, this.data, this.totalMedia});
  final BuiltList<GProfileData_Viewer_statistics_anime_formats?>? data;
  final int? totalMedia;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FormatDistributionChartState();
}

class _FormatDistributionChartState
    extends ConsumerState<FormatDistributionChart> {
  @override
  Widget build(BuildContext context) {
    final (_, w) = context.getSize;
    return Visibility(
      visible: widget.data != null && (widget.data?.length ?? 0) > 0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Format Distribution',
              style: Poppins(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Gap(20),
            SizedBox(
              width: w - 20,
              child: SfCircularChart(
                enableMultiSelection: true,
                legend: const Legend(
                  isVisible: true,
                  overflowMode: LegendItemOverflowMode.wrap,
                ),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CircularSeries>[
                  DoughnutSeries<
                    GProfileData_Viewer_statistics_anime_formats?,
                    String
                  >(
                    dataSource: widget.data?.toList() ?? [],
                    pointColorMapper: (data, _) => getColor(data!.format!),
                    xValueMapper: (data, _) => data!.format?.name,
                    yValueMapper: (data, _) => data!.count,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                  ),
                ],
              ),
            ),
            Card(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final item = widget.data?.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item?.format?.name ?? '',
                          style: Poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: getColor(item!.format!),
                          ),
                        ),
                        Card(
                          child: Builder(
                            builder: (context) {
                              final total = widget.totalMedia ?? 0;
                              final val = item.count;
                              final percentage = total == 0
                                  ? 0
                                  : (val / total) * 100;
                              return Text(
                                '${percentage.toInt()} %',
                                style: Poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getColor(GMediaFormat s) => switch (s) {
    GMediaFormat.OVA => Colors.greenAccent,
    GMediaFormat.TV => Colors.blue.shade400,
    GMediaFormat.MOVIE => Colors.brown,
    GMediaFormat.TV_SHORT => Colors.orange,
    GMediaFormat.SPECIAL => Colors.yellow,
    GMediaFormat.ONE_SHOT => Colors.red,
    GMediaFormat.MUSIC => Colors.green,
    GMediaFormat.ONA => Colors.purple,
    _ => Colors.white.withValues(alpha: 0.9),
  };
}
