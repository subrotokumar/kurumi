import 'package:anilist/profile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/features/profile/widgets/fav_anime_gridview.dart';
import 'package:kurumi/features/profile/widgets/fav_character_gridview.widget.dart';
import 'package:kurumi/features/profile/widgets/fav_manga_gridview.dart';
import 'package:kurumi/provider/provider.dart';

final statsProvider = StateProvider<bool>((ref) => true);

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Consumer(builder: (context, ref, child) {
        final client = ref.read(clientProvider);
        return Container(
          width: size.width,
          height: size.height,
          child: Operation<GProfileData, GProfileVars>(
            client: client!,
            operationRequest: GProfileReq(),
            builder: (context, response, error) {
              if (response!.loading) {
                return LoadingWidget;
              }
              return DefaultTabController(
                length: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
                      child: Stack(
                        children: [
                          CachedNetworkImage(
                            width: size.width,
                            height: 250,
                            imageUrl: response.data?.Viewer?.bannerImage ?? '',
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/lotties/giphy.gif',
                              width: size.width,
                              height: 250,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  AppTheme.background,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 30,
                            child: IconButton(
                              style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor: Colors.black45,
                                side: BorderSide(color: Colors.white),
                              ),
                              icon: Icon(
                                Icons.settings,
                              ),
                              onPressed: () {
                                HapticFeedback.mediumImpact();
                                context.pushNamed(
                                    AppRouteConstant.SettingScreen.name);
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border:
                                              Border.all(color: Colors.white38),
                                          color: Colors.white12,
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: response.data?.Viewer
                                                  ?.avatar?.medium ??
                                              '',
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        response.data?.Viewer?.statistics?.anime
                                                ?.count
                                                .toString() ??
                                            '0',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text('Anime'),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        response.data?.Viewer?.statistics?.manga
                                                ?.count
                                                .toString() ??
                                            '0',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text('Manga'),
                                    ],
                                  ),
                                  Consumer(
                                    builder: (context, ref, child) {
                                      final val = ref.watch(statsProvider);
                                      return IconButton(
                                        style: IconButton.styleFrom(
                                          backgroundColor: val
                                              ? Colors.green.withOpacity(0.2)
                                              : Colors.white10,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          padding: EdgeInsets.all(12),
                                        ),
                                        onPressed: () {
                                          ref
                                              .read(statsProvider.notifier)
                                              .update((state) => !val);
                                        },
                                        icon: Icon(CupertinoIcons.chart_pie),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: size.width,
                              height: 5,
                              color: AppTheme.background,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            response.data?.Viewer?.name ?? '',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(response.data?.Viewer?.about ?? ''),
                        ],
                      ),
                    ),
                    Consumer(builder: (context, ref, child) {
                      final stat = ref.watch(statsProvider);
                      return AnimatedSlide(
                        offset: stat ? Offset(0, 0) : Offset(1, 0),
                        duration: Duration(seconds: 1),
                        curve: Curves.linearToEaseOut,
                        child: Visibility(
                          visible: stat,
                          child: SizedBox(
                            height: 135,
                            width: size.width,
                            child: ListView(
                              padding: EdgeInsets.all(20),
                              scrollDirection: Axis.horizontal,
                              children: [
                                highlightWidget(
                                  title: 'Episode\nWatched',
                                  value: response.data?.Viewer?.statistics
                                      ?.anime?.episodesWatched
                                      .toString(),
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 20),
                                highlightWidget(
                                  title: 'Days\nwatched',
                                  value: ((response.data?.Viewer?.statistics
                                                  ?.anime?.minutesWatched ??
                                              0) /
                                          (60.0 * 24))
                                      .floor()
                                      .toString(),
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 20),
                                highlightWidget(
                                  title: 'Volume\nRead',
                                  value: response.data?.Viewer?.statistics
                                      ?.manga?.volumesRead
                                      .toString(),
                                  color: Colors.green,
                                ),
                                SizedBox(width: 20),
                                highlightWidget(
                                  title: 'Chapter\nRead',
                                  value: response.data?.Viewer?.statistics
                                      ?.manga?.chaptersRead
                                      .toString(),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                    TabBar(
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.tv),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.book),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.heart_circle_fill),
                        ),
                      ],
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TabBarView(
                          children: [
                            FavAnimeGridView(size: size, response: response),
                            FavMangaGridView(size: size, response: response),
                            FavCharacterGridView(
                                size: size, response: response),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }

  Container highlightWidget(
      {String? title, String? value, required Color color}) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.3),
            Colors.transparent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value ?? '0',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            title ?? '',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
