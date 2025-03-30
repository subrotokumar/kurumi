import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/features/anime/widget/timer.widget.dart';

class Timer extends StatelessWidget {
  const Timer({super.key, required this.data});

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
          ),
          color: AppTheme.secondaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: data?.nextAiringEpisode?.episode != null,
                child: Text(
                  '   EP ${data?.nextAiringEpisode?.episode}  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.8),
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
