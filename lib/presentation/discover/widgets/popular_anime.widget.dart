import 'package:anilist/discover_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/main.dart';

class PopularAnime extends StatelessWidget {
  const PopularAnime({super.key});

  GMediaSeason season({int? month}) {
    if (month == null) month = DateTime.now().month;
    if (month <= 3) {
      return GMediaSeason.WINTER;
    } else if (month <= 6) {
      return GMediaSeason.SPRING;
    } else if (month <= 9) {
      return GMediaSeason.SUMMER;
    } else {
      return GMediaSeason.FALL;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Consumer(
        builder: (context, ref, child) {
          final client = ref.read(clientProvider);
          int year = DateTime.now().year;
          return Operation(
            client: client!,
            operationRequest: GDiscoverMediaReq(
              (b) => b
                ..vars.page = 1
                ..vars.perPage = 20
                ..vars.status = GMediaStatus.RELEASING
                ..vars.type = GMediaType.ANIME
                ..vars.sort = GMediaSort.POPULARITY_DESC
                ..vars.season = season()
                ..vars.seasonYear = year,
            ),
            builder: (context, response, error) {
              if (response?.loading ?? true) {
                return SizedBox(
                  height: 160,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) => Shimmer.fromColors(
                      baseColor: Colors.white12,
                      highlightColor: Colors.black12,
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: SizedBox(
                          height: 120,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                final data = response?.data?.Page?.media;
                return Container(
                  height: 160,
                  // color: Colors.red.withOpacity(0.2),
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 100,
                      child: InkWell(
                        onTap: () => context.pushNamed(
                          AppRouteConstant.MediaScreen.name,
                          params: {
                            'id': (data?.elementAt(index)?.id ?? 0).toString(),
                            'title':
                                data?.elementAt(index)?.title?.english ?? '',
                          },
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Hero(
                                tag: '${data?.elementAt(index)?.id ?? ''}',
                                child: CachedNetworkImage(
                                  height: 120,
                                  width: 100,
                                  imageUrl: data
                                          ?.elementAt(index)
                                          ?.coverImage
                                          ?.large ??
                                      '',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Flexible(
                              child: Text(
                                data?.elementAt(index)?.title?.userPreferred ??
                                    data?.elementAt(index)?.title?.english ??
                                    '',
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 11,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
