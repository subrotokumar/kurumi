import 'package:flutter/material.dart';

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
            // shadows: [
            //   Shadow(
            //     color: Colors.black,
            //     blurRadius: 20,
            //   )
            // ],
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
          RichText(
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
          ),
        ],
      ),
    );
  }
}

class UpcomingNextSeasonAnimeTitle extends StatelessWidget {
  const UpcomingNextSeasonAnimeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
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
          ),
        ],
      ),
    );
  }
}

class Top100AnimeTitle extends StatelessWidget {
  const Top100AnimeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                // color: Colors.redAccent,
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
                  text: 'ANIME',
                  style: TextStyle(
                    // color: Colors.white,
                    color: Color(0xffFF6600),
                    shadows: [
                      // Shadow(
                      //   color: Colors.white,
                      //   blurRadius: 20,
                      // )
                    ],
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
