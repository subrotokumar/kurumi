import 'package:anilist/discover_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/main.dart';

class Top100Anime extends StatelessWidget {
  const Top100Anime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Consumer(
        builder: (context, ref, child) {
          final client = ref.read(clientProvider);
          return Operation(
            client: client!,
            operationRequest: GDiscoverMediaReq((b) => b
              ..vars.page = 1
              ..vars.perPage = 20
              ..vars.type = GMediaType.ANIME
              ..vars.sort = GMediaSort.SCORE_DESC),
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
                  height: 180,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: response?.data?.Page?.media?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 105,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () => context.pushNamed(
                              AppRouteConstant.MediaScreen.name,
                              params: {
                                'id': (data?.elementAt(index)?.id ?? 0)
                                    .toString(),
                                'title':
                                    data?.elementAt(index)?.title?.english ??
                                        '',
                              },
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
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
                                SizedBox(height: 3),
                                Flexible(
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
                                      fontSize: 11,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Builder(builder: (context) {
                            String col = data
                                    ?.elementAt(index)
                                    ?.coverImage
                                    ?.color
                                    ?.toString() ??
                                '#ffffff';

                            return Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(int.parse(col.substring(1, 7),
                                            radix: 16) +
                                        0xFF000000),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 12,
                                      )
                                    ]),
                                child: Text(
                                  '#${index + 1}',
                                  style: TextStyle(shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      blurRadius: 12,
                                    )
                                  ]),
                                ));
                          }),
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
