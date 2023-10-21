import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/router.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/core/utils/utils.functions.dart';

class ReviewScreen extends ConsumerWidget {
  const ReviewScreen({required this.id, required this.reviewData, super.key});
  final int id;
  final GReviewQueryData_Page_reviews reviewData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff1f1f1f),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * .7,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      const Color(0xff1f1f1f).withOpacity(.1),
                      const Color(0xff1f1f1f).withOpacity(.6),
                      const Color(0xff1f1f1f),
                    ].reversed.toList(),
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Builder(builder: (context) {
                        return Markdown(
                          padding: const EdgeInsets.all(0),
                          data: validMarkdown(reviewData.body),
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          selectable: true,
                          styleSheet: MarkdownStyleSheet(
                            p: const TextStyle(
                              fontSize: 16,
                            ),
                            blockquoteDecoration:
                                const BoxDecoration(color: Colors.white12),
                          ),
                        );
                      }),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${reviewData.score} / 100',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Visibility(
                        visible: false,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.thumb_down),
                              style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fixedSize: const Size.square(50),
                                backgroundColor: Colors.white12,
                              ),
                            ),
                            const SizedBox(width: 20),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.thumb_up),
                              style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fixedSize: const Size.square(50),
                                backgroundColor: Colors.white12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: size.height * .3),
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      AppTheme.background.withOpacity(.1),
                      AppTheme.background.withOpacity(.6),
                      AppTheme.background,
                    ].reversed.toList(),
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.pushNamed(
                  AppRouteConstant.MediaScreen.name,
                  pathParameters: {
                    'id': (reviewData.media?.id ?? 0).toString(),
                    'title': reviewData.media?.title?.userPreferred ?? '',
                  },
                );
              },
              child: SizedBox(
                height: size.height * .3,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: reviewData.media?.bannerImage ??
                          reviewData.media?.coverImage?.large ??
                          '',
                      height: size.height * .3,
                      width: size.width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            AppTheme.background.withOpacity(.1),
                            AppTheme.background.withOpacity(.6),
                            AppTheme.background,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        width: size.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 30),
                            Text(
                              '${reviewData.media?.title?.userPreferred}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                child: Text(
                                  reviewData.user?.name ?? '',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.blue.shade100,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: IconButton(
                        style: IconButton.styleFrom(
                          foregroundColor: Theme.of(context).iconTheme.color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: const Size.square(25),
                          backgroundColor: Colors.black26,
                        ),
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 25,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
