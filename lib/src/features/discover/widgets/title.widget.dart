import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/provider/provider.dart';

class TrendingNowTitle extends StatelessWidget {
  const TrendingNowTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
      child: RichText(
        text: TextSpan(
          text: 'TRENDING ',
          style: Anton(
            fontWeight: FontWeight.w500,
            color: const Color(0xff39FF14).withValues(alpha: 0.7),
            letterSpacing: 2,
            fontSize: 20,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'NOW ',
              style: Anton(color: Colors.white.withValues(alpha: 0.8)),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularThisSeasonTitle extends StatelessWidget {
  const PopularThisSeasonTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final type = ref.watch(discoverTabProvider);
              if (type == GMediaType.ANIME) {
                return RichText(
                  text: TextSpan(
                    text: 'POPULAR THIS ',
                    style: Anton(
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withValues(alpha: 0.8),
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'SEASON',
                        style: Anton(
                          color: const Color(
                            0xffFFFF33,
                          ).withValues(alpha: 0.65),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return RichText(
                  text: TextSpan(
                    text: 'ALL TIME ',
                    style: Anton(
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withValues(alpha: 0.8),
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'POPULAR',
                        style: Anton(
                          color: const Color(0xffFFFF33),
                          letterSpacing: 2,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class UpcomingNextSeasonAnimeTitle extends ConsumerWidget {
  const UpcomingNextSeasonAnimeTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(discoverTabProvider);
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          type == GMediaType.ANIME
              ? RichText(
                  text: TextSpan(
                    text: 'UPCOMING ',
                    style: Anton(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1589FF).withValues(alpha: 0.7),
                      letterSpacing: 2,
                      fontSize: 20,
                      shadows: [
                        const Shadow(color: Colors.black, blurRadius: 20),
                      ],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'NEXT',
                        style: Anton(
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                )
              : RichText(
                  text: TextSpan(
                    text: 'POPULAR ',
                    style: Anton(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(
                        255,
                        52,
                        153,
                        253,
                      ).withValues(alpha: 0.8),
                      letterSpacing: 2,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'MANHWA',
                        style: Anton(
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class Top100AnimeTitle extends ConsumerWidget {
  const Top100AnimeTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(discoverTabProvider);
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'TOP 100 ',
              style: Anton(
                color: Colors.white.withValues(alpha: 0.8),
                fontWeight: FontWeight.w500,
                letterSpacing: 2,
                fontSize: 20,
                shadows: [const Shadow(color: Colors.black, blurRadius: 20)],
              ),
              children: <TextSpan>[
                TextSpan(
                  text: type.name,
                  style: Anton(
                    color: const Color(0xffFF6600).withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
