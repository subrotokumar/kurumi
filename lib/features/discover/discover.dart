// ignore_for_file: non_constant_identifier_names

import 'package:anilist/profile.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
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

class DiscoverTab extends ConsumerStatefulWidget {
  const DiscoverTab({super.key});

  @override
  ConsumerState<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends ConsumerState<DiscoverTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: CustomRefreshIndicator(
        builder: MaterialIndicatorDelegate(
          builder: (context, controller) {
            return const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.search,
                color: Colors.blue,
                size: 30,
              ),
            );
          },
        ),
        onRefresh: () async {
          context.pushNamed(
            AppRouteConstant.SearchScreen.name,
            extra: {'mediaType': ref.read(discoverTabProvider)},
          );
        },
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Stack(
              children: [
                const BannerWidget(),
                Visibility(
                  visible: false,
                  child: Container(
                    width: size.height,
                    height: size.height / 3,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          style: IconButton.styleFrom(
                            fixedSize: const Size(30, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.black26,
                            side: const BorderSide(
                              color: Colors.white70,
                              width: 1.0,
                            ),
                          ),
                          icon: Icon(
                            Icons.search,
                            weight: 1.5,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          onPressed: () {
                            HapticFeedback.mediumImpact();
                            context.pushNamed(
                              AppRouteConstant.SearchScreen.name,
                              extra: {
                                'mediaType': ref.read(discoverTabProvider)
                              },
                            );
                          },
                        ),
                      ],
                    ),
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
    double padding = 0;
    const List<MaterialColor> color = [
      Colors.red,
      Colors.blue,
      Colors.yellow,
      Colors.green
    ];
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 12),
          Box(
            padding,
            itemCount,
            'Notification',
            color[2],
            () {
              HapticFeedback.mediumImpact();
              // ref.read(ActivityPage).jumpToPage(0);
              context.pushNamed(AppRouteConstant.ACTIVITY.name, extra: 0);
            },
            const Icon(Icons.notifications),
          ),
          const SizedBox(width: 12),
          Box(
            padding,
            itemCount,
            'Schedule',
            color[3],
            () {
              HapticFeedback.mediumImpact();
              context.pushNamed(AppRouteConstant.ACTIVITY.name, extra: 1);
            },
            const LineIcon.calendar(),
          ),
          const SizedBox(width: 12),
          Consumer(builder: (context, ref, child) {
            return Box(
              padding,
              itemCount,
              'Search',
              color[1],
              () {
                HapticFeedback.mediumImpact();
                context.pushNamed(
                  AppRouteConstant.SearchScreen.name,
                  extra: {'mediaType': ref.read(discoverTabProvider)},
                );
              },
              const LineIcon.searchPlus(),
            );
          }),
          const SizedBox(width: 12),
          Consumer(
            builder: (context, ref, child) {
              final DiscoverTabProvider = ref.watch(discoverTabProvider);
              return Box(
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
    );
  }

  Widget Box(double padding, int itemCount, String title, Color col,
      final onTap, Icon icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: col.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon.icon,
          color: Colors.white.withOpacity(0.8),
        ),
      ),
    );
    // ignore: dead_code
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
        onPressed: onTap,
        icon: icon,
        label: Text(title),
      ),
    );
  }
}
