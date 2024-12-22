import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/assets/assets.dart';

import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/features/profile/widgets/fav_anime_gridview.dart';
import 'package:kurumi/src/features/profile/widgets/fav_character_gridview.widget.dart';
import 'package:kurumi/src/features/profile/widgets/fav_manga_gridview.dart';
import 'package:kurumi/src/features/profile/widgets/high_light_widget.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
        return SizedBox(
          width: size.width,
          height: size.height,
          child: Operation<GProfileData, GProfileVars>(
            client: client!,
            operationRequest: GProfileReq(),
            builder: (context, response, error) {
              if (response!.loading) {
                return LoadingWidget;
              }
              final data = response.data?.Viewer;
              return DefaultTabController(
                length: 3,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 255,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 250,
                              child: Stack(
                                children: [
                                  CachedNetworkImage(
                                    width: size.width,
                                    height: 250,
                                    imageUrl: data?.bannerImage ?? '',
                                    fit: BoxFit.cover,
                                    errorWidget: (context, url, error) =>
                                        Assets.gifs.aurora.image(
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
                                    right: 60,
                                    top: 30,
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        backgroundColor: Colors.black38,
                                      ),
                                      icon: const Icon(
                                          PhosphorIconsBold.dotsNine),
                                      onPressed: () {
                                        HapticFeedback.mediumImpact();
                                        ThreeXThreeRoute().push(context);
                                      },
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 30,
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        backgroundColor: Colors.black38,
                                      ),
                                      icon: Icon(
                                        PhosphorIcons.gear(),
                                      ),
                                      onPressed: () {
                                        HapticFeedback.mediumImpact();
                                        context.pushNamed(
                                          AppRouteConstant.SettingScreen.name,
                                        );
                                      },
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      data?.avatar?.medium ??
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
                                                data?.statistics?.anime?.count
                                                        .toString() ??
                                                    '0',
                                                style: Poppins(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text('Anime', style: Poppins()),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                data?.statistics?.manga?.count
                                                        .toString() ??
                                                    '0',
                                                style: Poppins(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text('Manga', style: Poppins()),
                                            ],
                                          ),
                                          Consumer(
                                            builder: (context, ref, child) {
                                              final val =
                                                  ref.watch(statsProvider);
                                              return IconButton(
                                                style: IconButton.styleFrom(
                                                  backgroundColor: val
                                                      ? Colors.green
                                                          .withOpacity(0.2)
                                                      : Colors.white10,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.all(12),
                                                ),
                                                onPressed: () => ref
                                                    .read(
                                                        statsProvider.notifier)
                                                    .update((state) => !val),
                                                icon: Icon(
                                                  PhosphorIcons.chartPieSlice(),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 10,
                                color: AppTheme.background,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23)
                            .copyWith(top: 8),
                        child: Row(
                          children: [
                            Text(
                              data?.name ?? '',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          children: [
                            Text(
                              data?.about ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Consumer(builder: (context, ref, child) {
                        final stat = ref.watch(statsProvider);
                        return AnimatedSlide(
                          offset:
                              stat ? const Offset(0, 0) : const Offset(1, 0),
                          duration: const Duration(seconds: 1),
                          curve: Curves.linearToEaseOut,
                          child: Visibility(
                            visible: stat,
                            child: SizedBox(
                              height: 135,
                              width: size.width,
                              child: ListView(
                                padding: const EdgeInsets.all(20),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  HighLightWidget(
                                    title: 'Episode\nWatched',
                                    value: data
                                        ?.statistics?.anime?.episodesWatched
                                        .toString(),
                                    color: Colors.blue,
                                  ),
                                  const SizedBox(width: 20),
                                  HighLightWidget(
                                    title: 'Days\nwatched',
                                    value: ((data?.statistics?.anime
                                                    ?.minutesWatched ??
                                                0) /
                                            (60.0 * 24))
                                        .floor()
                                        .toString(),
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(width: 20),
                                  HighLightWidget(
                                    title: 'Volume\nRead',
                                    value: data?.statistics?.manga?.volumesRead
                                        .toString(),
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 20),
                                  HighLightWidget(
                                    title: 'Chapter\nRead',
                                    value: data?.statistics?.manga?.chaptersRead
                                        .toString(),
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const TabBar(
                        tabs: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(PhosphorIconsRegular.monitorPlay),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(PhosphorIconsRegular.books),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(PhosphorIconsRegular.finnTheHuman),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(
                            maxHeight: size.height -
                                55 -
                                MediaQuery.of(context).padding.top),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TabBarView(
                            physics: const ClampingScrollPhysics(),
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
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
