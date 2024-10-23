// ignore_for_file: non_constant_identifier_names
import 'package:anilist/anilist.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/features/discover/widgets/banner.widget.dart';
import 'package:kurumi/src/features/discover/widgets/popular_media.widget.dart';
import 'package:kurumi/src/features/discover/widgets/review_section.widget.dart';
import 'package:kurumi/src/features/discover/widgets/title.widget.dart';
import 'package:kurumi/src/features/discover/widgets/top_100_media.widget.dart';
import 'package:kurumi/src/features/discover/widgets/trending_media.widget.dart';
import 'package:kurumi/src/features/discover/widgets/upcoming_season_anime.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
      body: CustomMaterialIndicator(
        onRefresh: () async {
          context.pushNamed(
            AppRouteConstant.SearchScreen.name,
            extra: {'mediaType': ref.read(discoverTabProvider)},
          );
        },
        leadingScrollIndicatorVisible: true,
        indicatorBuilder: (context, controller) {
          return const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
              color: Colors.blue,
              size: 30,
            ),
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
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ANIME / MANGA tab
                      // TabControllerWidget(),
                      // 4 Icon Button
                      SubTabWidget(),
                      TrendingNowTitle(),
                      TrendingMedia(),
                      PopularThisSeasonTitle(),
                      PopularMedia(),
                      ReviewSection(),
                      UpcomingNextSeasonAnimeTitle(),
                      NextSeasonAnimme(),
                      Top100AnimeTitle(),
                      Top100Media(),
                      SizedBox(height: 10),
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
  const SubTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const List<MaterialColor> color = [
      Colors.red,
      Colors.blue,
      Colors.yellow,
      Colors.green,
      Colors.orange,
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(top: 30, bottom: 20),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Container(
            width: 180,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 34,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white38),
            ),
            child: Consumer(builder: (context, ref, child) {
              final type = ref.watch(discoverTabProvider);
              final isAnime = type == GMediaType.ANIME;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => ref.watch(discoverTabProvider.notifier).state =
                        GMediaType.ANIME,
                    child: Text(
                      'ANIME',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: isAnime ? Colors.white : Colors.white38,
                      ),
                    ),
                  ),
                  const Text('  |  '),
                  GestureDetector(
                    onTap: () => ref.read(discoverTabProvider.notifier).state =
                        GMediaType.MANGA,
                    child: Text(
                      'MANGA',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: !isAnime ? Colors.white : Colors.white38,
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: color[3], width: 0.5),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      context.pushNamed(AppRouteConstant.ACTIVITY.name,
                          extra: 0);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            PhosphorIcons.notification(PhosphorIconsStyle.bold),
                            size: 16,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Alert',
                            style: inter.copyWith(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: color[2], width: 0.5),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      context.pushNamed(AppRouteConstant.ACTIVITY.name,
                          extra: 1);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            PhosphorIcons.calendar(PhosphorIconsStyle.bold),
                            size: 15,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Planner',
                            style: inter.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: color[1], width: 0.5),
                  ),
                  child: Consumer(builder: (context, ref, child) {
                    final discoverTab = ref.watch(discoverTabProvider);
                    return InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        context.pushNamed(
                          AppRouteConstant.SearchScreen.name,
                          extra: {'mediaType': discoverTab},
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              PhosphorIcons.listMagnifyingGlass(
                                  PhosphorIconsStyle.bold),
                              size: 16,
                              color: Colors.white.withOpacity(0.9),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Search',
                              style: inter.copyWith(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Flexible(flex: 2, child: SizedBox()),
              Flexible(
                flex: 3,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: color[0], width: 0.5),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () => OtherSearchRoute().push(context),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.ramen_dining,
                            size: 16,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Others',
                            style: inter.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: color[4], width: 0.5),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () => context
                        .pushNamed(AppRouteConstant.NewsScreenScreen.name),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.ramen_dining,
                            size: 16,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'News',
                            style: inter.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Flexible(flex: 2, child: SizedBox()),
            ],
          )
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
