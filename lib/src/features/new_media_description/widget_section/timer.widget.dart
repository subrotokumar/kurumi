import 'package:flutter/material.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';

class Timer extends StatelessWidget {
  const Timer({super.key, required this.data, this.margin});

  // final GMediaDetailQueryData_Media? data;
  final dynamic data;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    if (data?.nextAiringEpisode?.airingAt == null) return const Card();
    String prefix = data?.nextAiringEpisode?.episode == null
        ? 'Next episode'
        : 'Episide ${data?.nextAiringEpisode?.episode}';

    final airingAt = DateTime.fromMillisecondsSinceEpoch(
      data!.nextAiringEpisode!.airingAt * 1000,
    );

    final diff = airingAt.difference(DateTime.now());
    final diffDays = diff.inDays;
    final diffHour = diff.inHours;

    final count = diffHour > 24 ? diffDays : diffHour;
    String suffix = diffHour > 24 ? 'day' : 'hour';
    if (count > 1) {
      suffix += 's';
    }
    return Container(
      height: 20,
      margin: EdgeInsets.symmetric(vertical: margin ?? 14),
      alignment: Alignment.center,
      color: diffHour < 24
          ? Colors.green.withValues(alpha: 0.7)
          : Colors.white12,
      child: Text(
        '$prefix airs in $count $suffix',
        style: Poppins(fontSize: 12),
      ),
    );
  }
}
