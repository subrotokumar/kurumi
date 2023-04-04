import 'package:anilist/tranding_anime.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/features/anime/section_widget/media_list_builder.widget.dart';
import 'package:kurumi/features/home/homepage.dart';

class AnimeScreen extends ConsumerStatefulWidget {
  AnimeScreen({super.key});

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            context
                                .pushNamed(AppRouteConstant.SearchScreen.name);
                          },
                          icon: Icon(Icons.search_rounded),
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
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    // Container(
                    //   height: 60,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Consumer(builder: (context, ref, child) {
                    //         int pageIndex = ref.watch(animeTabProvider);
                    //         return Text(
                    //           '${[
                    //             'Ongoing',
                    //             'Planning',
                    //             'Completed',
                    //             'On Hold',
                    //             'Dropped'
                    //           ][pageIndex].toUpperCase()}',
                    //           style: GoogleFonts.roboto(
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 22,
                    //             color: [
                    //               Colors.green,
                    //               Colors.orange,
                    //               Colors.blue,
                    //               Colors.pinkAccent,
                    //               Colors.yellow,
                    //             ][pageIndex],
                    //           ),
                    //         );
                    //       }),
                    //       Text(
                    //         ' ANIME',
                    //         style: GoogleFonts.roboto(
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 22,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //       SizedBox(width: 10),
                    //     ],
                    //   ),
                    // ),
                    Flexible(
                      child: Consumer(
                        builder: (context, ref, child) => PageView(
                          scrollDirection: Axis.horizontal,
                          controller: controller,
                          onPageChanged: (value) => ref
                              .read(animeTabProvider.notifier)
                              .update((state) => value),
                          children: [
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
          ],
        );
      },
    );
  }
}

class MediaCollectionTypeWidget extends StatelessWidget {
  const MediaCollectionTypeWidget(
      {super.key,
      required this.controller,
      required this.title,
      required this.pageNum,
      required this.ref});
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
            shape: RoundedRectangleBorder(),
            backgroundColor: pageIndex == pageNum ? Colors.white10 : null,
          ),
          onPressed: () {
            if (controller.page == pageNum) return;
            HapticFeedback.mediumImpact();
            controller.animateToPage(
              pageNum,
              curve: Curves.linear,
              duration: Duration(milliseconds: 600),
            );
            ref.read(animeTabProvider.notifier).update((state) => pageNum);
          },
          child: Text(
            title,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
