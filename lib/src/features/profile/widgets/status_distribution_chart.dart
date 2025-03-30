import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:built_collection/src/list.dart' show BuiltList;
import 'package:syncfusion_flutter_charts/charts.dart';

class StatusDistributionChart extends ConsumerStatefulWidget {
  const StatusDistributionChart({this.totalMedia, super.key, this.data});
  final BuiltList<GProfileData_Viewer_statistics_anime_statuses?>? data;
  final int? totalMedia;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StatusDistributionChartState();
}

class _StatusDistributionChartState
    extends ConsumerState<StatusDistributionChart> {
  Color getStatusColor(GMediaListStatus s) => switch (s) {
        GMediaListStatus.COMPLETED => Colors.purple.shade300,
        GMediaListStatus.CURRENT => Colors.green,
        GMediaListStatus.DROPPED => Colors.pink,
        GMediaListStatus.PAUSED => Colors.yellow,
        GMediaListStatus.PLANNING => Colors.brown,
        _ => Colors.white.withOpacity(0.9),
      };
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
              ' Status Distribution',
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
                  DoughnutSeries<GProfileData_Viewer_statistics_anime_statuses?,
                      String>(
                    dataSource: widget.data?.toList() ?? [],
                    pointColorMapper: (data, _) =>
                        getStatusColor(data!.status!),
                    xValueMapper: (data, _) => data!.status?.name,
                    yValueMapper: (data, _) => data!.count,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                  )
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
                          item?.status?.name ?? '',
                          style: Poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: getStatusColor(item!.status!),
                          ),
                        ),
                        Card(
                          child: Builder(builder: (context) {
                            final total = widget.totalMedia ?? 0;
                            final val = item.count;
                            final percentage =
                                total == 0 ? 0 : (val / total) * 100;
                            return Text(
                              '${percentage.toInt()} %',
                              style: Poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            );
                          }),
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
}
