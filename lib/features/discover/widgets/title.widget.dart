import 'package:anilist/discover_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/provider/provider.dart';

class TrendingNowTitle extends StatelessWidget {
  const TrendingNowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
      child: RichText(
        text: TextSpan(
          text: 'TRENDING  ',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: true ? Color(0xff39FF14) : Colors.green,
            letterSpacing: 2,
            fontSize: 18,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'NOW ',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class PopularThisSeasonTitle extends StatelessWidget {
  const PopularThisSeasonTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Consumer(builder: (context, ref, child) {
            final type = ref.watch(discoverTabProvider);
            if (type == GMediaType.ANIME) {
              return RichText(
                text: TextSpan(
                  text: 'POPULAR  THIS  ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    // color: Colors.amber,
                    letterSpacing: 2,
                    fontSize: 18,
                    // shadows: [
                    //   Shadow(
                    //     color: Colors.black,
                    //     blurRadius: 20,
                    //   )
                    // ],
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'SEASON',
                      style: TextStyle(color: Color(0xffFFFF33)),
                    )
                  ],
                ),
              );
            } else {
              return RichText(
                text: TextSpan(
                  text: 'ALL TIME  ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    // color: Colors.amber,
                    letterSpacing: 2,
                    fontSize: 18,
                    // shadows: [
                    //   Shadow(
                    //     color: Colors.black,
                    //     blurRadius: 20,
                    //   )
                    // ],
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'POPULAR',
                      style: TextStyle(color: Color(0xffFFFF33)),
                    )
                  ],
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}

class UpcomingNextSeasonAnimeTitle extends ConsumerWidget {
  const UpcomingNextSeasonAnimeTitle({
    super.key,
  });

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
                    text: 'UPCOMING  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1589FF),
                      letterSpacing: 2,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 20,
                        )
                      ],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'NEXT',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              : RichText(
                  text: TextSpan(
                    text: 'POPULAR  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1589FF),
                      letterSpacing: 2,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 20,
                        )
                      ],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'MANHWA',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class Top100AnimeTitle extends ConsumerWidget {
  const Top100AnimeTitle({
    super.key,
  });

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
              text: 'TOP  100  ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
                fontSize: 18,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 20,
                  )
                ],
              ),
              children: <TextSpan>[
                TextSpan(
                  text: type.name,
                  style: TextStyle(
                    color: Color(0xffFF6600),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
