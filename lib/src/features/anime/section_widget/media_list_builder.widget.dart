import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/features/home/homepage.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:kurumi/src/provider/sorting.provider.dart';

class MediaListBuilderWidget extends StatefulWidget {
  final GMediaListStatus status;
  final GMediaType type;
  const MediaListBuilderWidget(
      {required this.status, required this.type, super.key});

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
        final (filterIndex, order) = ref.watch(
            widget.type == GMediaType.ANIME ? animeSorting : mangaSorting);
        final filter = sortingSettingOption[filterIndex].$2;
        final request = filter == null
            ? GMediaListCollectionReq(
                (b) => b
                  ..vars.status = widget.status
                  ..vars.type = widget.type
                  ..vars.userId = anilistUserId,
              )
            : GMediaListCollectionReq(
                (b) => b
                  ..vars.status = widget.status
                  ..vars.type = widget.type
                  ..vars.userId = anilistUserId
                  ..vars.sort.add(filter),
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
                  padding: const EdgeInsets.all(0),
                  itemCount: 10,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.white24,
                      highlightColor: Colors.black12,
                      child: Container(
                        margin: const EdgeInsets.all(10),
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
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Consumer(builder: (context, ref, child) {
                            int pageIndex = widget.type == GMediaType.ANIME
                                ? ref.watch(animeTabProvider)
                                : ref.watch(mangaTabProvider);
                            return Text(
                              [
                                'Ongoing',
                                'Planning',
                                'Completed',
                                'On Hold',
                                'Dropped'
                              ][pageIndex],
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
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Assets.lotties.ufo.lottie(fit: BoxFit.contain),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Empty List',
                        textAlign: TextAlign.center,
                        style: Poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                    ),
                    const Gap(50),
                    const Spacer(),
                  ],
                );
              } else {
                var data = response.data?.MediaListCollection?.lists
                    ?.elementAt(0)
                    ?.entries
                    ?.toList();
                if (filter == null) {
                  data?.sort((a, b) {
                    final title1 = a?.media?.title?.userPreferred;
                    final title2 = b?.media?.title?.userPreferred;
                    if (title1 == null || title2 == null) {
                      return 0;
                    } else {
                      return title1.compareTo(title2);
                    }
                  });
                }
                if (order == Sort.DESC) data = data?.reversed.toList();
                final w = MediaQuery.of(context).size.width - 80;
                return ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: (data?.length ?? 0) + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Consumer(builder: (context, ref, child) {
                              int pageIndex = widget.type == GMediaType.ANIME
                                  ? ref.watch(animeTabProvider)
                                  : ref.watch(mangaTabProvider);
                              return Text(
                                [
                                  'Ongoing',
                                  'Planning',
                                  'Completed',
                                  'On Hold',
                                  'Dropped'
                                ][pageIndex],
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
                              ' ${widget.type == GMediaType.ANIME ? 'Anime' : 'Manga'}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
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
                            'id': (mediaData?.media?.id ?? 0).toString(),
                            'title':
                                mediaData?.media?.title?.userPreferred ?? '',
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 120,
                        child: Flex(
                          direction: Axis.horizontal,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 100,
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
                            SizedBox(
                              width: w - 100,
                              child: Container(
                                color: mediaData?.media?.status ==
                                        GMediaStatus.RELEASING
                                    ? Colors.green
                                    : AppTheme.background,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.background,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(16),
                                    ),
                                  ),
                                  child: Container(
                                    height: 120,
                                    decoration: const BoxDecoration(
                                      color: Colors.white10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.maxFinite,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: Text(
                                            mediaData?.media?.title
                                                    ?.userPreferred ??
                                                '',
                                            maxLines: 3,
                                            style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.85),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                mediaData?.media?.format?.name
                                                        .trim() ??
                                                    '',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(int.parse(
                                                          col.substring(1, 7),
                                                          radix: 16) +
                                                      0xFF000000),
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Consumer(
                                                builder: (context, ref, child) {
                                                  final pref = ref.watch(
                                                      sharedfPrefProvider
                                                          .notifier);
                                                  var showScore =
                                                      pref.showScore;
                                                  final score = mediaData?.media
                                                          ?.averageScore ??
                                                      0;
                                                  Color col;
                                                  if (score > 85) {
                                                    col = Colors.green;
                                                  } else if (score > 70) {
                                                    col = Colors.green.shade200;
                                                  } else if (score > 50) {
                                                    col = Colors.yellow
                                                        .withOpacity(0.8);
                                                  } else if (score > 25) {
                                                    col = Colors.orange;
                                                  } else {
                                                    col = Colors.red;
                                                  }
                                                  return Visibility(
                                                    visible: showScore,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        const Icon(
                                                          CupertinoIcons
                                                              .square_fill_line_vertical_square,
                                                          color: Colors.grey,
                                                          size: 10,
                                                        ),
                                                        const SizedBox(
                                                            width: 8),
                                                        Text(
                                                          '${mediaData?.media?.averageScore}%',
                                                          style: TextStyle(
                                                            color: col,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.035),
                                                  border: const Border(
                                                    right: BorderSide(
                                                      color: Colors.white24,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '${mediaData?.media?.mediaListEntry?.progress ?? '0'} / ${widget.type == GMediaType.ANIME ? (mediaData?.media?.episodes) ?? '-' : (mediaData?.media?.chapters) ?? '-'}',
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Consumer(
                                                builder: (context, ref, child) {
                                              int pageIndex = widget.type ==
                                                      GMediaType.ANIME
                                                  ? ref.watch(animeTabProvider)
                                                  : ref.watch(mangaTabProvider);
                                              return Visibility(
                                                visible: pageIndex == 0,
                                                child: Expanded(
                                                  flex: 1,
                                                  child: Material(
                                                    color: Colors.white
                                                        .withOpacity(0.05),
                                                    child: InkWell(
                                                      radius: 100,
                                                      splashColor: Colors.white,
                                                      onTap: () async {
                                                        HapticFeedback
                                                            .mediumImpact();
                                                        var mediaListEntryMutationReq =
                                                            GMediaListEntryMutationReq(
                                                                (b) => b
                                                                  ..vars.id =
                                                                      mediaData
                                                                          ?.media
                                                                          ?.mediaListEntry
                                                                          ?.id
                                                                  ..vars.mediaId =
                                                                      mediaData
                                                                          ?.media
                                                                          ?.id
                                                                  ..vars.progress =
                                                                      (mediaData?.media?.mediaListEntry?.progress ??
                                                                              0) +
                                                                          1);
                                                        client
                                                            .request(
                                                                mediaListEntryMutationReq)
                                                            .listen(
                                                          (response) async {
                                                            if (response.data !=
                                                                null) {
                                                              await client
                                                                  .request(
                                                                      request)
                                                                  .first;
                                                            }
                                                          },
                                                        );
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const SizedBox(
                                                              width: 5),
                                                          Icon(
                                                            Icons.add,
                                                            size: 20,
                                                            color: Colors.purple
                                                                .shade100,
                                                          ),
                                                          Text(
                                                            widget.type ==
                                                                    GMediaType
                                                                        .ANIME
                                                                ? '1 EP'
                                                                : '1 CH',
                                                            style: Poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Colors
                                                                  .purple
                                                                  .shade100,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
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
