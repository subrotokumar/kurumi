import 'package:anilist/anilist.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/constants/anilist_constant.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/features/discover/widgets/top_100_media.widget.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class PopularMedia extends StatelessWidget {
  const PopularMedia({super.key});

  GMediaSeason season({int? month}) {
    month ??= DateTime.now().month;
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
          final type = ref.watch(discoverTabProvider);
          return Operation(
            client: client!,
            operationRequest: GDiscoverMediaReq(
              (b) => b
                ..vars.page = 1
                ..vars.perPage = 25
                ..vars.status = type == GMediaType.MANGA ? null : null
                ..vars.type = type
                ..vars.sort = GMediaSort.POPULARITY_DESC
                ..vars.season = type == GMediaType.MANGA ? null : season()
                ..vars.seasonYear = type == GMediaType.MANGA ? null : year,
            ),
            builder: (context, response, error) {
              if (response?.loading ?? true) {
                return SizedBox(
                  height: 160,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
                  height: 135,
                  // color: Colors.red.withOpacity(0.2),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: data?.length ?? 0,
                    shrinkWrap: true,
                    // reverse: true,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 105,
                      child: InkWell(
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
                              borderRadius: BorderRadius.circular(
                                  discoverPageImageRadius),
                              child: CachedNetworkImage(
                                height: 130,
                                width: 100,
                                imageUrl:
                                    data?.elementAt(index)?.coverImage?.large ??
                                        '',
                                fit: BoxFit.cover,
                                imageBuilder: (context, imageProvider) {
                                  return MediaTitle(
                                    data: data?.elementAt(index),
                                    imageProvider: imageProvider,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 3),
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
