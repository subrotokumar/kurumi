// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:ui';

import 'package:anilist/anilist.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/common/error_screen.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/end_drawer.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/stats.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/theme_section.dart';
import 'package:screenshot/screenshot.dart';
import 'package:zoom_widget/zoom_widget.dart';

import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/character.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/description.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/external_link.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/genre.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/header.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/media_loading.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/recommendation.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/relations.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/tag_section.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/timer.widget.dart';
import 'package:kurumi/src/features/new_media_description/widget_section/trailer.widget.dart';
import 'package:kurumi/src/features/new_media_description/widgets/info_tile.widget.dart';
import 'package:kurumi/src/provider/provider.dart';

import 'widget_section/banner.widget.dart';

class NewMediaScreen extends ConsumerStatefulWidget {
  const NewMediaScreen({required this.id, required this.title, super.key});
  final int id;
  final String title;

  @override
  ConsumerState<NewMediaScreen> createState() => _NewMediaScreenState();
}

class _NewMediaScreenState extends ConsumerState<NewMediaScreen> {
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
              .request(
                GMediaDetailQueryReq(
                  (b) => b
                    ..vars.id = widget.id
                    ..vars.limit = 5
                    ..vars.page = 1
                    ..vars.perPage = 10,
                ),
              )
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
            } else if (error != null || response.data == null) {
              return ErrorScreen();
            } else {
              final data = response.data?.Media;
              type = data?.type ?? type;
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      data?.coverImage?.large ??
                          data?.coverImage?.extraLarge ??
                          '',
                    ),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Scaffold(
                    endDrawerEnableOpenDragGesture: false,
                    endDrawer: MediaEndDrawer(data: data),
                    key: mediaScreenKey,
                    floatingActionButton: Consumer(
                      builder: (context, ref, child) {
                        final flag = ref.watch(_loading);
                        return flag
                            ? Assets.lotties.loadingGifAnimation.lottie(
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                            : Container();
                      },
                    ),
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerDocked,
                    backgroundColor: const Color.fromARGB(
                      255,
                      29,
                      29,
                      29,
                    ).withValues(alpha: 0.8),
                    body: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Screenshot(
                            controller: screenshotController,
                            child: SizedBox(
                              height: size.height,
                              width: size.width,
                              // color: AppTheme.background,
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
                                                backgroundColor:
                                                    AppTheme.background,
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      data?.bannerImage ??
                                                      data
                                                          ?.coverImage
                                                          ?.extraLarge ??
                                                      data?.coverImage?.large ??
                                                      data
                                                          ?.coverImage
                                                          ?.medium ??
                                                      '',
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Opacity(
                                        opacity: 0.9,
                                        child: BannerAppBar(
                                          data: data,
                                          loading: _loading,
                                        ),
                                      ),
                                    ),
                                    SafeArea(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Gap(size.height * .16),
                                          MediaHeaderSection(
                                            data: data,
                                            controller: screenshotController,
                                            loading: _loading,
                                          ),
                                          Timer(data: data),
                                          StatsWidget(data: data),
                                          MediaGenreSection(data: data),
                                          const Gap(10),
                                          MediaDescription(data: data),
                                          const Gap(20),
                                          CharactersWidget(data: data),
                                          const Gap(20),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'OVERVIEW',
                                                    style: Poppins(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                              horizontal: 20,
                                              vertical: 10,
                                            ),
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.white.withValues(
                                                alpha: 0.09,
                                              ),
                                              border: Border.all(
                                                color: Colors.white12,
                                                width: 0.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                                InfoTile(
                                                  'Format',
                                                  data?.format?.name,
                                                ),
                                                InfoTile(
                                                  'Episodes',
                                                  data?.episodes,
                                                ),
                                                InfoTile(
                                                  'Volumes',
                                                  data?.volumes,
                                                ),
                                                InfoTile(
                                                  'Chapters',
                                                  data?.chapters,
                                                ),
                                                InfoTile(
                                                  'Duration',
                                                  data?.duration,
                                                  extra: ' min per ep',
                                                ),
                                                InfoTile(
                                                  'Status',
                                                  data?.status?.name,
                                                ),
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
                                                InfoTile(
                                                  'Season',
                                                  data?.season,
                                                  extra:
                                                      ' ${data?.seasonYear ?? ''}',
                                                ),
                                                InfoTile(
                                                  'Start At',
                                                  '${data?.startDate?.day ?? ''}-${data?.startDate?.month ?? ''}-${data?.startDate?.year ?? ''}',
                                                ),
                                                InfoTile(
                                                  'End At',
                                                  '${data?.endDate?.day ?? ''}-${data?.endDate?.month ?? ''}-${data?.endDate?.year ?? ''}',
                                                ),
                                                if (data?.type ==
                                                    GMediaType.ANIME)
                                                  const Divider(),
                                                if (data?.type ==
                                                        GMediaType.ANIME &&
                                                    data?.studios?.nodes !=
                                                        null &&
                                                    (data
                                                            ?.studios
                                                            ?.nodes
                                                            ?.isNotEmpty ??
                                                        false))
                                                  Builder(
                                                    builder: (context) {
                                                      log.d(
                                                        data?.studios?.nodes,
                                                      );
                                                      return Column(
                                                        children: [
                                                          InfoTile(
                                                            'Studio',
                                                            data?.studios?.nodes
                                                                    ?.elementAt(
                                                                      0,
                                                                    )
                                                                    ?.name ??
                                                                '',
                                                          ),
                                                          if (data?.type ==
                                                              GMediaType.ANIME)
                                                            for (
                                                              int i = 1;
                                                              i <
                                                                  (data
                                                                          ?.studios
                                                                          ?.nodes
                                                                          ?.length ??
                                                                      0);
                                                              i++
                                                            )
                                                              InfoTile(
                                                                ' ',
                                                                data
                                                                    ?.studios
                                                                    ?.nodes
                                                                    ?.elementAt(
                                                                      i,
                                                                    )
                                                                    ?.name,
                                                              ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ThemeSection(data: data),
                                              ],
                                            ),
                                          ),
                                          const Gap(20),
                                          TagSection(data: data),
                                          const Gap(20),
                                          RelationsWidget(
                                            relations: data?.relations,
                                          ),
                                          RecommendationWidget(
                                            data: response.data?.Page,
                                          ),
                                          TrailerWidget(data: data, size: size),
                                          ExternalLinkWidget(data: data),
                                          const Gap(20),
                                        ],
                                      ),
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
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
