// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/features/media_description/widget_section/end_drawer.dart';
import 'package:kurumi/src/features/media_description/widget_section/theme_section.dart';
import 'package:screenshot/screenshot.dart';
import 'package:zoom_widget/zoom_widget.dart';

import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/features/media_description/widget_section/character.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/description.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/external_link.dart';
import 'package:kurumi/src/features/media_description/widget_section/genre.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/header.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/media_loading.dart';
import 'package:kurumi/src/features/media_description/widget_section/recommendation.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/relations.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/tag_section.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/timer.widget.dart';
import 'package:kurumi/src/features/media_description/widget_section/trailer.widget.dart';
import 'package:kurumi/src/features/media_description/widgets/info_tile.widget.dart';
import 'package:kurumi/src/provider/provider.dart';

import 'widget_section/banner.widget.dart';

class MediaScreen extends ConsumerStatefulWidget {
  const MediaScreen({required this.id, required this.title, super.key});
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
              return const MediaLoading();
            } else {
              final data = response.data?.Media;
              type = data?.type ?? type;
              return Scaffold(
                endDrawerEnableOpenDragGesture: false,
                endDrawer: MediaEndDrawer(data: data),
                key: mediaScreenKey,
                floatingActionButton: Consumer(builder: (context, ref, child) {
                  final flag = ref.watch(_loading);
                  return flag
                      ? Assets.lotties.loadingGifAnimation.lottie(
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
                          GestureDetector(
                            onDoubleTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    child: Zoom(
                                      backgroundColor: AppTheme.background,
                                      child: CachedNetworkImage(
                                        imageUrl: data?.bannerImage ??
                                            data?.coverImage?.extraLarge ??
                                            data?.coverImage?.large ??
                                            data?.coverImage?.medium ??
                                            '',
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: BannerAppBar(
                              data: data,
                              size: size,
                              loading: _loading,
                            ),
                          ),
                          SafeArea(
                            child: Column(
                              children: [
                                SizedBox(height: size.height * .3),
                                MediaHeaderSection(
                                  data: data,
                                  controller: screenshotController,
                                  loading: _loading,
                                ),
                                const SizedBox(height: 20),
                                Timer(data: data),
                                if (data?.nextAiringEpisode?.airingAt != null)
                                  const SizedBox(height: 20),
                                MediaGenreSection(size: size, data: data),
                                const SizedBox(height: 20),
                                MediaDescription(data: data),
                                const SizedBox(height: 20),
                                CharactersWidget(data: data, size: size),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          'OVERVIEW',
                                          style: Poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        StatDistributionIcon(
                                          data: data,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.09),
                                    border: Border.all(
                                      color: Colors.white70,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      InfoTile(
                                        'Romaji',
                                        data?.title?.romaji,
                                        copy: true,
                                      ),
                                      InfoTile(
                                        'English',
                                        data?.title?.english,
                                        copy: true,
                                      ),
                                      const Divider(),
                                      InfoTile('Format', data?.format?.name),
                                      InfoTile('Episodes', data?.episodes),
                                      InfoTile('Volumes', data?.volumes),
                                      InfoTile('Chapters', data?.chapters),
                                      InfoTile('Duration', data?.duration,
                                          extra: ' min per ep'),
                                      InfoTile('Status', data?.status?.name),
                                      InfoTile(
                                        'Average Score',
                                        data?.averageScore,
                                        extra: '%',
                                      ),
                                      InfoTile(
                                        'Favourites',
                                        data?.favourites,
                                        strong: true,
                                      ),
                                      const Divider(),
                                      InfoTile('Season', data?.season,
                                          extra: ' ${data?.seasonYear ?? ''}'),
                                      InfoTile('Start At',
                                          '${data?.startDate?.day ?? ''}-${data?.startDate?.month ?? ''}-${data?.startDate?.year ?? ''}'),
                                      InfoTile('End At',
                                          '${data?.endDate?.day ?? ''}-${data?.endDate?.month ?? ''}-${data?.endDate?.year ?? ''}'),
                                      if (data?.type == GMediaType.ANIME)
                                        const Divider(),
                                      if (data?.type == GMediaType.ANIME &&
                                          data?.studios?.nodes != null &&
                                          (data?.studios?.nodes?.isNotEmpty ??
                                              false))
                                        Builder(builder: (context) {
                                          log.d(data?.studios?.nodes);
                                          return Column(
                                            children: [
                                              InfoTile(
                                                  'Studio',
                                                  data?.studios?.nodes
                                                          ?.elementAt(0)
                                                          ?.name ??
                                                      ''),
                                              if (data?.type ==
                                                  GMediaType.ANIME)
                                                for (int i = 1;
                                                    i <
                                                        (data?.studios?.nodes
                                                                ?.length ??
                                                            0);
                                                    i++)
                                                  InfoTile(
                                                    ' ',
                                                    data?.studios?.nodes
                                                        ?.elementAt(i)
                                                        ?.name,
                                                  ),
                                            ],
                                          );
                                        }),
                                      ThemeSection(data: data),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TagSection(data: data),
                                const SizedBox(height: 20),
                                RelationsWidget(relations: data?.relations),
                                RecommendationWidget(data: response.data?.Page),
                                TrailerWidget(data: data, size: size),
                                ExternalLinkWidget(data: data),
                                const SizedBox(height: 20),
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
