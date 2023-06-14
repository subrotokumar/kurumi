// ignore_for_file: non_constant_identifier_names

import 'package:anilist/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/features/activity/activity_screen.dart';
import 'package:kurumi/features/discover/widgets/banner.widget.dart';
import 'package:kurumi/features/discover/widgets/popular_media.widget.dart';
import 'package:kurumi/features/discover/widgets/review_section.widget.dart';
import 'package:kurumi/features/discover/widgets/tab_button.widget.dart';
import 'package:kurumi/features/discover/widgets/title.widget.dart';
import 'package:kurumi/features/discover/widgets/top_100_media.widget.dart';
import 'package:kurumi/features/discover/widgets/trending_media.widget.dart';
import 'package:kurumi/features/discover/widgets/upcoming_season_anime.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:line_icons/line_icon.dart';

class DiscoverTab extends StatefulWidget {
  const DiscoverTab({super.key});

  @override
  State<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends State<DiscoverTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Stack(
            children: [
              const BannerWidget(),
              Container(
                width: size.height,
                height: size.height / 3,
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        final type = ref.watch(discoverTabProvider);
                        return IconButton(
                          style: IconButton.styleFrom(
                            fixedSize: const Size(30, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: Colors.black45,
                            side: const BorderSide(
                                color: Colors.white, width: 1.5),
                          ),
                          icon: const Icon(
                            Icons.search,
                            weight: 1.5,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            HapticFeedback.mediumImpact();
                            context.pushNamed(
                              AppRouteConstant.SearchScreen.name,
                              extra: {'mediaType': type},
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TabControllerWidget(),
                    SubTabWidget(size: size),
                    const TrendingNowTitle(),
                    const TrendingMedia(),
                    const PopularThisSeasonTitle(),
                    const PopularMedia(),
                    const ReviewSection(),
                    const UpcomingNextSeasonAnimeTitle(),
                    const NextSeasonAnimme(),
                    const Top100AnimeTitle(),
                    const Top100Media(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubTabWidget extends StatelessWidget {
  const SubTabWidget({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    int itemCount = 3;
    double padding = (itemCount + 1) * 12;
    double height = (size.width - padding) / (itemCount * 2);
    const List<MaterialColor> color = [
      Colors.red,
      Colors.blue,
      Colors.yellow,
      Colors.green
    ];
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 12),
      child: Consumer(
        builder: (context, ref, child) => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 12),
              Box(
                height,
                padding,
                itemCount,
                'Notification',
                color[2],
                () {
                  HapticFeedback.mediumImpact();
                  ref.read(ActivityPage).jumpToPage(0);
                  context.pushNamed(AppRouteConstant.ACTIVITY.name, extra: 0);
                },
                const Icon(Icons.notifications),
              ),
              const SizedBox(width: 12),
              Box(
                height,
                padding,
                itemCount,
                'Schedule',
                color[3],
                () {
                  HapticFeedback.mediumImpact();
                  context.pushNamed(AppRouteConstant.ACTIVITY.name, extra: 1);
                },
                LineIcon.calendar(),
              ),
              const SizedBox(width: 12),
              Consumer(
                builder: (context, ref, child) {
                  final DiscoverTabProvider = ref.watch(discoverTabProvider);
                  return Box(
                    height,
                    padding,
                    itemCount,
                    DiscoverTabProvider == GMediaType.ANIME ? 'Manga' : 'Anime',
                    color[0],
                    () {
                      HapticFeedback.mediumImpact();
                      if (DiscoverTabProvider == GMediaType.ANIME) {
                        ref.watch(discoverTabProvider.notifier).state =
                            GMediaType.MANGA;
                      } else {
                        ref.watch(discoverTabProvider.notifier).state =
                            GMediaType.ANIME;
                      }
                    },
                    const Icon(Icons.ramen_dining),
                  );
                },
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }

  Container Box(double height, double padding, int itemCount, String title,
      Color col, final func, Icon icon) {
    return Container(
      height: 40,
      // width: (size.width - padding) / itemCount,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(20),
        color: col.withOpacity(0.4),
        gradient: LinearGradient(
          colors: [
            col.withOpacity(0.6),
            col.withOpacity(0.3),
            Colors.transparent
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          foregroundColor: col,
          visualDensity: const VisualDensity(vertical: -1),
          fixedSize: const Size.fromHeight(35),
          textStyle: const TextStyle(fontSize: 15),
        ),
        onPressed: func,
        icon: icon,
        label: Text(title),
      ),
    );
  }
}
