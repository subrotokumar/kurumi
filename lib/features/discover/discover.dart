import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/features/discover/widgets/banner.widget.dart';
import 'package:kurumi/features/discover/widgets/review_section.widget.dart';
import 'package:kurumi/features/discover/widgets/upcoming_season_anime.dart';
import 'package:kurumi/features/discover/widgets/popular_anime.widget.dart';
import 'package:kurumi/features/discover/widgets/title.widget.dart';
import 'package:kurumi/features/discover/widgets/top_100_anime.widget.dart';
import 'package:kurumi/features/discover/widgets/trending_anime.widget.dart';

class DiscoverTab extends StatefulWidget {
  DiscoverTab({super.key});

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
              BannerWidget(),
              Container(
                width: size.height,
                height: size.height / 3,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.black45,
                        side: BorderSide(color: Colors.white, width: 1.5),
                      ),
                      icon: Icon(
                        Icons.search,
                        weight: 1.5,
                        color: Colors.white,
                      ),
                      onPressed: () =>
                          context.pushNamed(AppRouteConstant.SearchScreen.name),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: true ? (size.height * 0.4) : (size.height / 3)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TrendingNowTitle(),
                    TrendingAnime(),
                    PopularThisSeasonTitle(),
                    PopularAnime(),
                    ReviewSection(),
                    UpcomingNextSeasonAnimeTitle(),
                    NextSeasonAnimme(),
                    Top100AnimeTitle(),
                    Top100Anime(),
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
