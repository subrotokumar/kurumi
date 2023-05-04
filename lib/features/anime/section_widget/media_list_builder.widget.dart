import 'package:anilist/medialist_collection.dart';
import 'package:anilist/medialist_entry_mutation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/features/home/homepage.dart';
import 'package:kurumi/provider/provider.dart';

class MediaListBuilderWidget extends StatefulWidget {
  final GMediaListStatus status;
  final GMediaType type;
  MediaListBuilderWidget({required this.status, required this.type, super.key});

  @override
  State<MediaListBuilderWidget> createState() => _MediaListBuilderWidgetState();
}

class _MediaListBuilderWidgetState extends State<MediaListBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final anilistUserId = ref.watch(userId);
        final client = ref.watch(mediaListClientProvider);
        final request = GMediaListCollectionReq(
          (b) => b
            ..vars.status = widget.status
            ..vars.type = widget.type
            ..vars.userId = anilistUserId,
        );
        return RefreshIndicator(
          onRefresh: () async {
            await client.request(request).first;
          },
          child: Operation(
            client: client!,
            operationRequest: request,
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
                        height: index == 0 ? 45 : 120,
                        color: Colors.white24,
                      ),
                    );
                  },
                );
              }
              if (response.data?.MediaListCollection?.lists?.isEmpty ?? true) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Consumer(builder: (context, ref, child) {
                            int pageIndex = widget.type == GMediaType.ANIME
                                ? ref.watch(animeTabProvider)
                                : ref.watch(mangaTabProvider);
                            return Text(
                              '${[
                                'Ongoing',
                                'Planning',
                                'Completed',
                                'On Hold',
                                'Dropped'
                              ][pageIndex]}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: [
                                  Colors.green,
                                  Colors.orange,
                                  Colors.blue,
                                  Colors.pinkAccent,
                                  Colors.yellow,
                                ][pageIndex],
                              ),
                            );
                          }),
                          Text(
                            ' ${widget.type == GMediaType.ANIME ? 'Anime ' : 'Manga '}',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    Spacer(),
                    LottieBuilder.asset(
                      'assets/lotties/ufo.json',
                      fit: BoxFit.contain,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Nothing Found',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                );
              } else {
                final data = response.data?.MediaListCollection?.lists
                    ?.elementAt(0)
                    ?.entries;
                return ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: (data?.length ?? 0) + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Consumer(builder: (context, ref, child) {
                              int pageIndex = widget.type == GMediaType.ANIME
                                  ? ref.watch(animeTabProvider)
                                  : ref.watch(mangaTabProvider);
                              return Text(
                                '${[
                                  'Ongoing',
                                  'Planning',
                                  'Completed',
                                  'On Hold',
                                  'Dropped'
                                ][pageIndex]}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                  color: [
                                    Colors.green,
                                    Colors.orange,
                                    Colors.blue,
                                    Colors.pinkAccent,
                                    Colors.yellow,
                                  ][pageIndex],
                                ),
                              );
                            }),
                            Text(
                              ' ${widget.type == GMediaType.ANIME ? 'Anime ' : 'Manga '}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      );
                    }
                    final mediaData = data?.elementAt(index - 1);
                    String col =
                        mediaData?.media?.coverImage?.color?.toString() ??
                            '#ffffff';
                    return GestureDetector(
                      onDoubleTap: () {
                        setState(() {});
                      },
                      onTap: () {
                        context.pushNamed(
                          AppRouteConstant.MediaScreen.name,
                          pathParameters: {
                            'id': (response.data?.MediaListCollection?.lists
                                        ?.first?.entries
                                        ?.elementAt(index - 1)
                                        ?.media
                                        ?.id ??
                                    0)
                                .toString(),
                            'title':
                                mediaData?.media?.title?.userPreferred ?? '',
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Hero(
                                tag: '${mediaData?.media?.id ?? ''}',
                                child: CachedNetworkImage(
                                  height: 120,
                                  fit: BoxFit.cover,
                                  width: 100,
                                  imageUrl: mediaData
                                          ?.media?.coverImage?.large ??
                                      mediaData?.media?.coverImage?.medium ??
                                      '',
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 7,
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white10,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Text(
                                        mediaData
                                                ?.media?.title?.userPreferred ??
                                            '',
                                        maxLines: 3,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      mediaData?.media?.format?.name.trim() ??
                                          '',
                                      style: TextStyle(
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
                                        if (widget.type == GMediaType.ANIME)
                                          Text(
                                            '${mediaData?.progress ?? '0'} / ${widget.type == GMediaType.ANIME ? (mediaData?.media?.episodes) : (mediaData?.media?.chapters) ?? '-'}',
                                          )
                                        else
                                          Text(
                                            '${mediaData?.progress ?? '0'} / ${widget.type == GMediaType.ANIME ? (mediaData?.media?.episodes) : (mediaData?.media?.chapters) ?? '-'}',
                                          ),
                                        Spacer(),
                                        Visibility(
                                          visible: widget.status ==
                                              GMediaListStatus.CURRENT,
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
                                              onTap: () async {
                                                HapticFeedback.lightImpact();
                                                // final userID = ref.read(userId);
                                                var mediaListEntryMutationReq =
                                                    GMediaListEntryMutationReq(
                                                        (b) => b
                                                          ..vars.id = data
                                                              ?.elementAt(
                                                                  index - 1)
                                                              ?.id
                                                          ..vars.mediaId = data
                                                              ?.elementAt(
                                                                  index - 1)
                                                              ?.mediaId
                                                          ..vars
                                                              .progress = ((data
                                                                      ?.elementAt(
                                                                          index -
                                                                              1)
                                                                      ?.progress ??
                                                                  0) +
                                                              1));
                                                client
                                                    .request(
                                                        mediaListEntryMutationReq)
                                                    .listen(
                                                  (response) async {
                                                    if (response.data != null) {
                                                      await client
                                                          .request(request)
                                                          .first;
                                                      context.pop();
                                                    }
                                                  },
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 5),
                                                  Icon(Icons.add, size: 20),
                                                  Text(widget.type ==
                                                          GMediaType.ANIME
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
          ),
        );
      },
    );
  }
}
