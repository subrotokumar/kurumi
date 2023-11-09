import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/src/core/constants/anilist_constant.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/provider/provider.dart';

class Top100Media extends StatelessWidget {
  const Top100Media({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Consumer(
        builder: (context, ref, child) {
          final type = ref.watch(discoverTabProvider);
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Top50Media(type: type, page: 1),
                Top50Media(type: type, page: 2),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Top50Media extends ConsumerWidget {
  const Top50Media({
    super.key,
    required this.type,
    required this.page,
  });

  final GMediaType type;
  final int page;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.read(clientProvider);
    return Operation(
      client: client!,
      operationRequest: GDiscoverMediaReq(
        (b) => b
          ..vars.page = page
          ..vars.perPage = 50
          ..vars.type = type
          ..vars.sort = GMediaSort.SCORE_DESC,
      ),
      builder: (context, response, error) {
        if (response?.loading ?? true) {
          return SizedBox(
            height: 160,
            child: ListView.builder(
              shrinkWrap: true,
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
            height: 170,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                )
              ],
            ),
            child: ListView.builder(
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
                        context.pushNamed(
                          AppRouteConstant.MediaScreen.name,
                          pathParameters: {
                            'id': (data?.elementAt(index)?.id ?? 0).toString(),
                            'title':
                                data?.elementAt(index)?.title?.userPreferred ??
                                    '',
                          },
                        );
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(discoverPageImageRadius),
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
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
                        '${(page - 1) * 50 + index + 1}',
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
  }
}

class MediaTitle extends StatelessWidget {
  const MediaTitle({
    super.key,
    required this.data,
    required this.imageProvider,
  });

  final GDiscoverMediaData_Page_media? data;
  final ImageProvider<Object> imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomRight,
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(3),
        child: Text(
          data?.title?.userPreferred ?? data?.title?.english ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade50,
            shadows: const [
              Shadow(color: Colors.black, blurRadius: 1, offset: Offset(1, 0)),
              Shadow(color: Colors.black, blurRadius: 1, offset: Offset(-1, 0)),
              Shadow(color: Colors.black, blurRadius: 1, offset: Offset(0, 1)),
              Shadow(color: Colors.black, blurRadius: 1, offset: Offset(0, -1)),
            ],
          ),
        ),
      ),
    );
  }
}
