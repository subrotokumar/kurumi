import 'package:anilist/discover_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/provider/provider.dart';

class NextSeasonAnimme extends StatelessWidget {
  const NextSeasonAnimme({super.key});

  GMediaSeason nextSeason({int? month}) {
    month ??= DateTime.now().month;
    if (month <= 3) {
      return GMediaSeason.SPRING;
    } else if (month <= 6) {
      return GMediaSeason.SUMMER;
    } else if (month <= 9) {
      return GMediaSeason.FALL;
    } else {
      return GMediaSeason.WINTER;
    }
  }

  GMediaSeason currentSeason({int? month}) {
    month ??= DateTime.monthsPerYear;
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

  int nextYear({int? year}) {
    year ??= DateTime.now().year;
    final season = currentSeason();
    if (season == GMediaSeason.WINTER) {
      year++;
    }
    return year;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Consumer(
        builder: (context, ref, child) {
          final client = ref.read(clientProvider);
          final type = ref.watch(discoverTabProvider);
          final reqAnime = GDiscoverMediaReq((b) => b
            ..vars.page = 1
            ..vars.perPage = 20
            ..vars.type = type
            ..vars.sort = GMediaSort.POPULARITY_DESC
            ..vars.season = nextSeason()
            ..vars.seasonYear = nextYear());
          final reqManga = GDiscoverMediaReq(
            (b) => b
              ..vars.page = 1
              ..vars.perPage = 20
              ..vars.type = type
              ..vars.sort = GMediaSort.POPULARITY_DESC
              ..vars.country.value = 'KR',
          );
          return Operation(
            client: client!,
            operationRequest: type == GMediaType.ANIME ? reqAnime : reqManga,
            builder: (context, response, error) {
              if (response?.loading ?? true) {
                return SizedBox(
                  height: 160,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) => Shimmer.fromColors(
                      baseColor: Colors.white12,
                      highlightColor: Colors.black12,
                      child: const Card(
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
                return SizedBox(
                  height: 180,
                  child: ListView.builder(
                    // reverse: true,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: response?.data?.Page?.media?.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 105,
                      child: GestureDetector(
                        onTap: () => context.pushNamed(
                          AppRouteConstant.MediaScreen.name,
                          pathParameters: {
                            'id': (data?.elementAt(index)?.id ?? 0).toString(),
                            'title':
                                data?.elementAt(index)?.title?.userPreferred ??
                                    '',
                          },
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                height: 130,
                                width: 100,
                                imageUrl:
                                    data?.elementAt(index)?.coverImage?.large ??
                                        '',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  data
                                          ?.elementAt(index)
                                          ?.title
                                          ?.userPreferred ??
                                      data
                                          ?.elementAt(index)
                                          ?.title
                                          ?.userPreferred ??
                                      '',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
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
