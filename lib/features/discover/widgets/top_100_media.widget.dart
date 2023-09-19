import 'package:anilist/discover_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/constants/anilist_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/provider/provider.dart';

class Top100Media extends StatelessWidget {
  const Top100Media({super.key});

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
            operationRequest: GDiscoverMediaReq((b) => b
              ..vars.page = 1
              ..vars.perPage = 20
              ..vars.type = type
              ..vars.sort = GMediaSort.SCORE_DESC),
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
                return Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: ListView.builder(
                    // reverse: true,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: response?.data?.Page?.media?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 105,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // print((data?.elementAt(index)?.id ?? 0).toString());
                              context.pushNamed(
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
                              );
                            },
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      discoverPageImageRadius),
                                  child: Hero(
                                    tag: '${data?.elementAt(index)?.id ?? ''}',
                                    child: CachedNetworkImage(
                                      height: 130,
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
                                const SizedBox(height: 3),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Text(
                                      data
                                              ?.elementAt(index)
                                              ?.title
                                              ?.userPreferred ??
                                          data
                                              ?.elementAt(index)
                                              ?.title
                                              ?.english ??
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
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    discoverPageImageRadius,
                                  ),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 12,
                                  )
                                ]),
                            child: Text(
                              '${index + 1}',
                              style: inter.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
