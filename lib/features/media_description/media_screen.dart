import 'dart:io';

import 'package:anilist/media_detail_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/features/anilist_tracking/anilist_tracking.widget.dart';
import 'package:kurumi/features/anime/widget/timer.widget.dart';
import 'package:kurumi/features/media_description/widget_section/character.widget.dart';
import 'package:kurumi/features/media_description/widget_section/description.widget.dart';
import 'package:kurumi/features/media_description/widget_section/external_link.dart';
import 'package:kurumi/features/media_description/widget_section/genre.widget.dart';
import 'package:kurumi/features/media_description/widget_section/recommendation.widget.dart';
import 'package:kurumi/features/media_description/widget_section/relations.widget.dart';
import 'package:kurumi/features/media_description/widget_section/tag_section.widget.dart';
import 'package:kurumi/features/media_description/widget_section/trailer.widget.dart';
import 'package:kurumi/features/media_description/widgets/info_tile.widget.dart';
import 'package:kurumi/main.dart';
import 'package:kurumi/utils/utils.functions.dart';

import 'widget_section/banner.widget.dart';

class MediaScreen extends ConsumerStatefulWidget {
  MediaScreen({required this.id, required this.title, super.key});
  final int id;
  final String title;

  @override
  ConsumerState<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends ConsumerState<MediaScreen> {
  GlobalKey<ScaffoldState> mediaScreenKey = GlobalKey();
  final _loading = StateProvider<bool>((ref) => false);
  GMediaType type = GMediaType.ANIME;
  ScreenshotController screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    print(widget.id);
    Size size = MediaQuery.of(context).size;
    final client = ref.watch(mediaListClientProvider);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await client
              .request(GMediaDetailQueryReq(
                (b) => b
                  ..vars.id = widget.id
                  ..vars.limit = 5
                  ..vars.page = 1
                  ..vars.perPage = 10,
              ))
              .first;
        },
        child: Operation(
          client: client!,
          operationRequest: GMediaDetailQueryReq(
            (b) => b
              ..vars.id = widget.id
              ..vars.limit = 5
              ..vars.page = 1
              ..vars.perPage = 10,
          ),
          builder: (context, response, error) {
            if (response == null || response.loading) {
              return Center(
                child: LottieBuilder.asset(
                  'assets/lotties/loading-gif-animation.json',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              );
            } else {
              final data = response.data?.Media;
              type = data?.type ?? type;
              Color color = Col.parseHex(data?.coverImage?.color);
              return Scaffold(
                key: mediaScreenKey,
                floatingActionButton: Consumer(builder: (context, ref, child) {
                  final flag = ref.watch(_loading);
                  return flag
                      ? LottieBuilder.asset(
                          'assets/lotties/loading-gif-animation.json',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : Container();
                }),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                backgroundColor: AppTheme.background,
                body: Screenshot(
                  controller: screenshotController,
                  child: Container(
                    height: size.height,
                    width: size.width,
                    color: AppTheme.background,
                    child: SingleChildScrollView(
                      child: Stack(
                        children: [
                          BannerAppBar(
                              data: data, size: size, loading: _loading),
                          SafeArea(
                            child: Column(
                              children: [
                                Timer(size: size, data: data),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      Hero(
                                        tag: '${data?.id ?? ''}',
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: CachedNetworkImage(
                                            imageUrl: data?.coverImage?.large ??
                                                data?.coverImage?.medium ??
                                                '',
                                            fit: BoxFit.cover,
                                            height: 160,
                                            width: 120,
                                            errorWidget:
                                                (context, url, error) =>
                                                    CachedNetworkImage(
                                              imageUrl: data?.coverImage
                                                      ?.extraLarge ??
                                                  data?.coverImage?.large ??
                                                  '',
                                              fit: BoxFit.cover,
                                              height: 160,
                                              width: 120,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      SizedBox(
                                        height: 160,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text:
                                                    '${data?.format?.toString().replaceAll('_', ' ') ?? ''} • ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          '${data?.startDate?.year ?? ''} • '),
                                                  TextSpan(
                                                      text: data?.status?.name
                                                              .toString()
                                                              .replaceAll(
                                                                  '_YET_',
                                                                  ' ') ??
                                                          ''),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width - 180,
                                              child: Wrap(
                                                children: [
                                                  Text(
                                                    data?.title
                                                            ?.userPreferred ??
                                                        data?.title
                                                            ?.userPreferred ??
                                                        data?.title?.romaji ??
                                                        '',
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: color,
                                                      fontSize: 19,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                if (data?.mediaListEntry
                                                        ?.status ==
                                                    null)
                                                  IconButton(
                                                    style: IconButton.styleFrom(
                                                      shape: CircleBorder(
                                                          side: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .outline)),
                                                      foregroundColor:
                                                          Theme.of(context)
                                                              .iconTheme
                                                              .color,
                                                    ),
                                                    onPressed: () {
                                                      showBottomSheet(
                                                        context: context,
                                                        backgroundColor:
                                                            AppTheme
                                                                .secondaryColor,
                                                        builder: (context) =>
                                                            AnilistTrackingWidget(
                                                                media: data),
                                                      );
                                                    },
                                                    icon: Icon(
                                                        Icons.add_outlined),
                                                  ),
                                                if (data?.mediaListEntry
                                                        ?.status !=
                                                    null)
                                                  OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      foregroundColor:
                                                          Theme.of(context)
                                                              .iconTheme
                                                              .color,
                                                    ),
                                                    onPressed: () {
                                                      showBottomSheet(
                                                        context: context,
                                                        backgroundColor:
                                                            AppTheme
                                                                .secondaryColor,
                                                        builder: (context) =>
                                                            AnilistTrackingWidget(
                                                          media: data,
                                                        ),
                                                      );
                                                    },
                                                    child: Text(data
                                                            ?.mediaListEntry
                                                            ?.status
                                                            ?.name ??
                                                        'ADD'),
                                                  ),
                                                SizedBox(width: 8),
                                                IconButton(
                                                  style: IconButton.styleFrom(
                                                    shape: CircleBorder(
                                                        side: BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .outline)),
                                                    foregroundColor:
                                                        Theme.of(context)
                                                            .iconTheme
                                                            .color,
                                                  ),
                                                  onPressed: () async {
                                                    final img =
                                                        await screenshotController
                                                            .capture();
                                                    //  final directory =
                                                    //     await getTemporaryDirectory();
                                                    final directory =
                                                        (await getExternalStorageDirectory())
                                                            ?.path;
                                                    File imgFile = new File(
                                                        '$directory/kurumi.png');
                                                    await imgFile
                                                        .writeAsBytes(img!);
                                                    Share.shareXFiles(
                                                      [
                                                        XFile(
                                                            '$directory/kurumi.png')
                                                      ],
                                                      subject: data?.title
                                                              ?.userPreferred ??
                                                          '',
                                                      text: data?.description ??
                                                          '',
                                                    );
                                                  },
                                                  icon: Icon(Icons.share),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                MediaGenreSection(size: size, data: data),
                                SizedBox(height: 20),
                                MediaDescription(data: data),
                                SizedBox(height: 20),
                                CharactersWidget(data: data, size: size),
                                SizedBox(height: 20),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'OVERVIEW',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white12,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      InfoTile('Romanji', data?.title?.romaji),
                                      InfoTile('English', data?.title?.english),
                                      Divider(),
                                      InfoTile('Format', data?.format?.name),
                                      InfoTile('Episodes', data?.episodes),
                                      InfoTile('Volumes', data?.volumes),
                                      InfoTile('Chapters', data?.chapters),
                                      InfoTile('Duration', data?.duration,
                                          extra: ' min per ep'),
                                      InfoTile('Status', data?.status?.name),
                                      Divider(),
                                      InfoTile('Season', data?.season,
                                          extra: ' ' +
                                              (data?.seasonYear ?? '')
                                                  .toString()),
                                      InfoTile('Start At',
                                          '${data?.startDate?.day ?? ''}-${data?.startDate?.month ?? ''}-${data?.startDate?.year ?? ''}'),
                                      InfoTile('End At',
                                          '${data?.endDate?.day ?? ''}-${data?.endDate?.month ?? ''}-${data?.endDate?.year ?? ''}'),
                                      if (data?.type == GMediaType.ANIME)
                                        Divider(),
                                      if (data?.type == GMediaType.ANIME &&
                                          data?.studios?.nodes != null &&
                                          (data?.studios?.nodes?.isNotEmpty ??
                                              false))
                                        Column(
                                          children: [
                                            InfoTile(
                                                'Studio',
                                                data?.studios?.nodes
                                                        ?.elementAt(0)
                                                        ?.name ??
                                                    ''),
                                            if (data?.type == GMediaType.ANIME)
                                              for (int i = 1;
                                                  i <
                                                      (data?.studios?.nodes
                                                              ?.length ??
                                                          0);
                                                  i++)
                                                InfoTile(
                                                  '',
                                                  data?.studios?.nodes
                                                      ?.elementAt(i)
                                                      ?.name,
                                                ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                TagSection(data: data),
                                SizedBox(height: 20),
                                RelationsWidget(relations: data?.relations),
                                RecommendationWidget(data: response.data?.Page),
                                TrailerWidget(data: data, size: size),
                                ExternalLinkWidget(data: data),
                                SizedBox(height: 20),
                              ],
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
        ),
      ),
    );
  }
}

class Timer extends StatelessWidget {
  const Timer({
    super.key,
    required this.size,
    required this.data,
  });

  final Size size;
  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .3,
      child: Center(
        child: TimerWidget(time: data?.nextAiringEpisode?.airingAt),
      ),
    );
  }
}
