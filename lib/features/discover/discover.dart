import 'package:flutter/material.dart';

import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/features/discover/widgets/banner.widget.dart';
import 'package:kurumi/features/discover/widgets/popular_media.widget.dart';
import 'package:kurumi/features/discover/widgets/review_section.widget.dart';
import 'package:kurumi/features/discover/widgets/tab_button.widget.dart';
import 'package:kurumi/features/discover/widgets/title.widget.dart';
import 'package:kurumi/features/discover/widgets/top_100_media.widget.dart';
import 'package:kurumi/features/discover/widgets/trending_media.widget.dart';
import 'package:kurumi/features/discover/widgets/upcoming_season_anime.dart';

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
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        fixedSize: Size(30, 50),
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
              Builder(builder: (context) {
                double height = 30;
                int itemCount = 4;
                double padding = (itemCount + 1) * 12;
                return Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TabControllerWidget(),
                      if (false)
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 12),
                              Container(
                                height: height,
                                width: (size.width - padding) / itemCount,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red.withOpacity(0.2),
                                ),
                                child: Center(child: Text('Manga')),
                              ),
                              SizedBox(width: 12),
                              Container(
                                height: height,
                                width: (size.width - padding) / itemCount,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.blue.withOpacity(0.2),
                                ),
                                child: Center(child: Text('Random')),
                              ),
                              SizedBox(width: 12),
                              Container(
                                height: height,
                                width: (size.width - padding) / itemCount,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.yellow.withOpacity(0.2),
                                ),
                                child: Center(child: Text('Schedule')),
                              ),
                              SizedBox(width: 12),
                              Container(
                                height: height,
                                width: (size.width - padding) / itemCount,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green.withOpacity(0.2),
                                ),
                                child: Center(child: Text('Search')),
                              ),
                              SizedBox(width: 12),
                            ],
                          ),
                        ),
                      TrendingNowTitle(),
                      TrendingMedia(),
                      PopularThisSeasonTitle(),
                      PopularMedia(),
                      ReviewSection(),
                      UpcomingNextSeasonAnimeTitle(),
                      NextSeasonAnimme(),
                      Top100AnimeTitle(),
                      Top100Media(),
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
