import 'package:anilist/media_detail_query.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/features/anime/widget/timer.widget.dart';

class Timer extends StatelessWidget {
  const Timer({
    super.key,
    required this.size,
    required this.data,
  });

  final Size size;
  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    if (data?.nextAiringEpisode?.airingAt == null) return const Card();
    return SizedBox(
      height: 55,
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            // side: BorderSide(color: Colors.grey),
          ),
          color: AppTheme.secondaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: data?.nextAiringEpisode?.episode != null,
                child: Text(
                  '   EP : ${data?.nextAiringEpisode?.episode}  ',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TimerWidget(time: data?.nextAiringEpisode?.airingAt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
