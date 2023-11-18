import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/features/anime/section_widget/media_list_builder.widget.dart';
import 'package:kurumi/src/features/anime/section_widget/sorting_dialog.widget.dart';
import 'package:kurumi/src/features/home/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnimeScreen extends ConsumerStatefulWidget {
  const AnimeScreen({super.key});

  @override
  ConsumerState<AnimeScreen> createState() => _AnimeScreenState();
}

class _AnimeScreenState extends ConsumerState<AnimeScreen> {
  PageController controller = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40,
                color: AppTheme.secondaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            context.pushNamed(
                              AppRouteConstant.SearchScreen.name,
                              extra: {'mediaType': GMediaType.ANIME},
                            );
                          },
                          icon: const Icon(Icons.search_rounded),
                        ),
                      ),
                    ),
                    VerticleNavigationBar(controller: controller),
                  ],
                ),
              ),
              Container(
                height: size.height,
                width: size.width - 40,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Flexible(
                      child: Consumer(
                        builder: (context, ref, child) => PageView(
                          scrollDirection: Axis.horizontal,
                          controller: controller,
                          onPageChanged: (value) => ref
                              .read(animeTabProvider.notifier)
                              .update((state) => value),
                          children: const [
                            MediaListBuilderWidget(
                              status: GMediaListStatus.CURRENT,
                              type: GMediaType.ANIME,
                            ),
                            MediaListBuilderWidget(
                              status: GMediaListStatus.PLANNING,
                              type: GMediaType.ANIME,
                            ),
                            MediaListBuilderWidget(
                              status: GMediaListStatus.COMPLETED,
                              type: GMediaType.ANIME,
                            ),
                            MediaListBuilderWidget(
                              status: GMediaListStatus.PAUSED,
                              type: GMediaType.ANIME,
                            ),
                            MediaListBuilderWidget(
                              status: GMediaListStatus.DROPPED,
                              type: GMediaType.ANIME,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticleNavigationBar extends StatelessWidget {
  const VerticleNavigationBar({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.watch(animeTabProvider);
        return Column(
          children: [
            MediaCollectionTypeWidget(
              controller: controller,
              title: 'Ongoing',
              pageNum: 0,
              ref: ref,
            ),
            MediaCollectionTypeWidget(
              controller: controller,
              title: 'Planning',
              pageNum: 1,
              ref: ref,
            ),
            MediaCollectionTypeWidget(
              controller: controller,
              title: 'Completed',
              pageNum: 2,
              ref: ref,
            ),
            MediaCollectionTypeWidget(
              controller: controller,
              title: 'On Hold',
              pageNum: 3,
              ref: ref,
            ),
            MediaCollectionTypeWidget(
              controller: controller,
              title: 'Dropped',
              pageNum: 4,
              ref: ref,
            ),
            const SizedBox(height: 10),
            Consumer(builder: (context, ref, child) {
              return IconButton(
                onPressed: () {
                  sortingDialog(
                    context: context,
                    ref: ref,
                    type: GMediaType.ANIME,
                  );
                },
                icon: const Icon(Icons.filter_alt_rounded),
              );
            })
          ],
        );
      },
    );
  }
}

class MediaCollectionTypeWidget extends StatelessWidget {
  const MediaCollectionTypeWidget({
    super.key,
    required this.controller,
    required this.title,
    required this.pageNum,
    required this.ref,
  });
  final PageController controller;
  final String title;
  final int pageNum;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    int pageIndex = ref.read(animeTabProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: RotatedBox(
        quarterTurns: 3,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(),
            backgroundColor: pageIndex == pageNum ? Colors.white10 : null,
          ),
          onPressed: () async {
            if (controller.page == pageNum) return;
            HapticFeedback.mediumImpact();
            final pref = await SharedPreferences.getInstance();
            if (pref.getBool('allowAnimation') ?? false) {
              controller.animateToPage(
                pageNum,
                curve: Curves.linear,
                duration: const Duration(milliseconds: 400),
              );
            } else {
              controller.jumpToPage(pageNum);
            }
            // controller.animateToPage(
            //   pageNum,
            //   curve: Curves.linear,
            //   duration: const Duration(milliseconds: 500),
            // );
            ref.read(animeTabProvider.notifier).update((state) => pageNum);
          },
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
