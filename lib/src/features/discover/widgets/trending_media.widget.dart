import 'package:anilist/anilist.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/constants/anilist_constant.dart';
import 'package:kurumi/src/features/discover/widgets/top_100_media.widget.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/provider/provider.dart';

class TrendingMedia extends StatelessWidget {
  const TrendingMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Consumer(
        builder: (context, ref, child) {
          final client = ref.read(clientProvider);
          final type = ref.watch(discoverTabProvider);
          return Operation(
            client: client!,
            operationRequest: GDiscoverMediaReq(
              (b) => b
                ..vars.page = 1
                ..vars.perPage = 25
                ..vars.status = GMediaStatus.RELEASING
                ..vars.type = type
                ..vars.sort = GMediaSort.TRENDING_DESC,
            ),
            builder: (context, response, error) {
              if (response?.loading ?? true) {
                return SizedBox(
                  height: 160,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    scrollDirection: Axis.horizontal,
                    itemCount: response?.data?.Page?.media?.length,
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
                return Container(
                  height: 160,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20,
                    )
                  ]),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: response?.data?.Page?.media?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 105,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () => context.pushNamed(
                              AppRouteConstant.MediaScreen.name,
                              pathParameters: {
                                'id': (data?.elementAt(index)?.id ?? 0)
                                    .toString(),
                                'title': data
                                        ?.elementAt(index)
                                        ?.title
                                        ?.userPreferred ??
                                    '',
                              },
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  discoverPageImageRadius),
                              child: InkWell(
                                child: CachedNetworkImage(
                                  height: 130,
                                  width: 100,
                                  imageUrl: data
                                          ?.elementAt(index)
                                          ?.coverImage
                                          ?.large ??
                                      data
                                          ?.elementAt(index)
                                          ?.coverImage
                                          ?.medium ??
                                      '',
                                  imageBuilder: (context, imageProvider) {
                                    return MediaTitle(
                                      data: data?.elementAt(index),
                                      imageProvider: imageProvider,
                                    );
                                  },
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 3),
                        ],
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
