import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/features/anime/section_widget/media_list_builder.widget.dart';
import 'package:kurumi/src/features/home/homepage.dart';
import 'package:kurumi/src/features/manga/widgets/verticle_navigation_bar.widget.dart';

class MangaScreen extends ConsumerStatefulWidget {
  const MangaScreen({super.key});

  @override
  ConsumerState<MangaScreen> createState() => _MangaScreenState();
}

class _MangaScreenState extends ConsumerState<MangaScreen> {
  late PageController controller;

  @override
  void initState() {
    int i = ref.read(mangaTabProvider);
    controller = PageController(initialPage: i, keepPage: true);
    super.initState();
  }

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
                child: Consumer(builder: (context, ref, child) {
                  ref.watch(mangaTabProvider);
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              context.pushNamed(
                                AppRouteConstant.SearchScreen.name,
                                extra: {'mediaType': GMediaType.MANGA},
                              );
                            },
                            icon: const Icon(Icons.search_rounded),
                          ),
                        ),
                      ),
                      VerticleNavigationBar(controller: controller),
                    ],
                  );
                }),
              ),
              Container(
                height: size.height,
                width: size.width - 40,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SafeArea(
                  child: Consumer(
                    builder: (context, ref, child) => PageView(
                      controller: controller,
                      onPageChanged: (value) => {
                        ref
                            .read(mangaTabProvider.notifier)
                            .update((state) => value)
                      },
                      children: const [
                        MediaListBuilderWidget(
                          status: GMediaListStatus.CURRENT,
                          type: GMediaType.MANGA,
                        ),
                        MediaListBuilderWidget(
                          status: GMediaListStatus.PLANNING,
                          type: GMediaType.MANGA,
                        ),
                        MediaListBuilderWidget(
                          status: GMediaListStatus.COMPLETED,
                          type: GMediaType.MANGA,
                        ),
                        MediaListBuilderWidget(
                          status: GMediaListStatus.PAUSED,
                          type: GMediaType.MANGA,
                        ),
                        MediaListBuilderWidget(
                          status: GMediaListStatus.DROPPED,
                          type: GMediaType.MANGA,
                        ),
                      ],
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
}
