import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kurumi/presentation/home/homepage.dart';

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
            ref.read(mangaTabProvider.notifier).update((state) => pageNum);
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
