import 'package:anilist/medialist_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/main.dart';

class MediaListBuilderWidget extends StatelessWidget {
  final GMediaListStatus status;
  final GMediaType type;
  MediaListBuilderWidget({required this.status, required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final client = ref.watch(clientProvider);
        final anilistUserId = ref.watch(userId);
        return Operation(
          client: client!,
          operationRequest: GMediaListCollectionReq(
            (b) => b
              ..vars.status = status
              ..vars.type = type
              ..vars.userId = anilistUserId,
          ),
          builder: (context, response, error) {
            if (response!.loading) {
              return ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Shimmer.fromColors(
                    baseColor: Colors.white24,
                    highlightColor: Colors.black12,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 120,
                      color: Colors.white24,
                    ),
                  );
                },
              );
            }
            if (response.data?.MediaListCollection?.lists?.isEmpty ?? true) {
              return Center(
                child: LottieBuilder.asset(
                  'assets/lotties/gibli-tribute.json',
                ),
              );
            } else {
              final data = response.data?.MediaListCollection?.lists
                  ?.elementAt(0)
                  ?.entries;
              return ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: data?.length ?? 0,
                itemBuilder: (context, index) {
                  final mediaData = data?.elementAt(index);
                  String col =
                      mediaData?.media?.coverImage?.color?.toString() ??
                          '#ffffff';
                  Color color = Color(
                      int.parse(col.substring(1, 7), radix: 16) + 0xFF000000);
                  return GestureDetector(
                    onTap: () {
                      context.pushNamed(
                        AppRouteConstant.MediaScreen.name,
                        params: {
                          'id': (response.data?.MediaListCollection?.lists
                                      ?.first?.entries
                                      ?.elementAt(index)
                                      ?.media
                                      ?.id ??
                                  0)
                              .toString(),
                          'title': mediaData?.media?.title?.english ?? '',
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 120,
                      decoration: BoxDecoration(
                        color: true
                            ? Colors.white10
                            : Color(int.parse(col.substring(1, 7), radix: 16) +
                                    0xFF000000)
                                .withOpacity(0.2),
                        border: Border.all(color: color, width: 1),
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 3,
                            child: CachedNetworkImage(
                              height: 120,
                              fit: BoxFit.cover,
                              width: 100,
                              imageUrl: mediaData?.media?.coverImage?.large ??
                                  mediaData?.media?.coverImage?.medium ??
                                  '',
                            ),
                          ),
                          Flexible(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      mediaData?.media?.title?.userPreferred ??
                                          '',
                                      maxLines: 3,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    mediaData?.media?.format?.name.trim() ?? '',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: Color(int.parse(
                                                col.substring(1, 7),
                                                radix: 16) +
                                            0xFF000000)),
                                  ),
                                  Spacer(),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (type == GMediaType.ANIME)
                                        Text(
                                          '${mediaData?.progress ?? '0'} / ${type == GMediaType.ANIME ? (mediaData?.media?.episodes) : (mediaData?.media?.chapters) ?? '-'}',
                                        )
                                      else
                                        Text(
                                          '${mediaData?.progress ?? '0'} / ${type == GMediaType.ANIME ? (mediaData?.media?.episodes) : (mediaData?.media?.chapters) ?? '-'}',
                                        ),
                                      Spacer(),
                                      Visibility(
                                        visible:
                                            status == GMediaListStatus.CURRENT,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          color: Colors.white12,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            splashColor: Color(int.parse(
                                                    col.substring(1, 7),
                                                    radix: 16) +
                                                0xFF000000),
                                            onTap: () {
                                              HapticFeedback.lightImpact();
                                            },
                                            child: Row(
                                              children: [
                                                SizedBox(width: 5),
                                                Icon(Icons.add, size: 20),
                                                Text(type == GMediaType.ANIME
                                                    ? '1 EP'
                                                    : '1 CH'),
                                                SizedBox(width: 5),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        );
      },
    );
  }
}
