import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsWidget extends StatelessWidget {
  final GMediaDetailQueryData_Media? data;
  const StatsWidget({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final rankData = data?.rankings?.toList() ?? [];
    if (rankData.isEmpty) {
      return const SizedBox();
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RankingStats(
              title: 'Average Score',
              value: '${data?.averageScore ?? 0}%',
              timeline: 'Current',
            ),
            for (int i = 0; i < rankData.length && i < 2; i++)
              Builder(
                builder: (context) {
                  final rank = rankData.elementAt(i);
                  final title = switch (rank?.type) {
                    GMediaRankType.RATED => 'HIGHEST RATED',
                    GMediaRankType.POPULAR => 'MOST POPULAR',
                    _ => '',
                  };
                  final timeline = rank?.allTime == true
                      ? 'All Time'
                      : '${rank?.season == null ? '' : rank?.season?.name} ${rank?.year ?? ''}';
                  return RankingStats(
                    title: title,
                    value: '#${rank?.rank ?? 0}',
                    timeline: timeline,
                  );
                },
              ),
          ],
        ),
      );
    }
  }
}

class RankingStats extends StatelessWidget {
  final String title;
  final String value;
  final String? timeline;
  const RankingStats({
    super.key,
    required this.title,
    required this.value,
    required this.timeline,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.urbanist(
            height: 1,
            fontSize: 13,
            color: Colors.grey.withValues(alpha: 0.9),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.white70,
            fontWeight: FontWeight.w600,
          ),
        ),
        Visibility(
          visible: timeline != null,
          child: Text(
            '$timeline',
            style: GoogleFonts.poppins(
              height: 1,
              fontSize: 11,
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
