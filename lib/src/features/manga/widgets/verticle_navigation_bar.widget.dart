import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kurumi/src/features/anime/section_widget/sorting_dialog.widget.dart';
import 'package:kurumi/src/features/home/homepage.dart';

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
        ref.watch(mangaTabProvider);
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
                    type: GMediaType.MANGA,
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
    int pageIndex = ref.read(mangaTabProvider);
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
            //   duration: const Duration(milliseconds: 600),
            // );
            ref.read(mangaTabProvider.notifier).update((state) => pageNum);
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
