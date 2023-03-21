import 'package:anilist/tranding_anime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/presentation/anime/widget/media_list_builder.widget.dart';
import 'package:kurumi/presentation/home/homepage.dart';
import 'package:kurumi/presentation/manga/widgets/verticle_navigation_bar.widget.dart';

class MangaScreen extends ConsumerStatefulWidget {
  MangaScreen({super.key});

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
      body: Container(
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
                            onPressed: () {},
                            icon: Icon(Icons.search_rounded),
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
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SafeArea(
                  child: Consumer(
                    builder: (context, ref, child) => PageView(
                      controller: controller,
                      onPageChanged: (value) => {
                        ref
                            .read(mangaTabProvider.notifier)
                            .update((state) => value)
                      },
                      children: [
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
