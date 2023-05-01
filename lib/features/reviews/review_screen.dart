import 'package:anilist/review_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';

class ReviewScreen extends ConsumerWidget {
  const ReviewScreen({required this.id, required this.reviewData, super.key});
  final int id;
  final GReviewQueryData_Page_reviews reviewData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * .6,
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
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Builder(builder: (context) {
                        //print(reviewData.body);
                        return Markdown(
                          padding: EdgeInsets.all(0),
                          data: '${reviewData.body ?? ''}'
                              .replaceAll('\n', '\n\n')
                              .replaceAll('~', '_'),
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          selectable: true,
                          styleSheet: MarkdownStyleSheet(
                            p: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        );
                      }),
                      SizedBox(height: 12),
                      SizedBox(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${reviewData.score} / 100',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_down),
                            style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fixedSize: Size.square(50),
                              backgroundColor: Colors.white12,
                            ),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_up),
                            style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fixedSize: Size.square(50),
                              backgroundColor: Colors.white12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: size.height * .4),
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
                  params: {
                    'id': (reviewData.media?.id ?? 0).toString(),
                    'title': reviewData.media?.title?.userPreferred ?? '',
                  },
                );
              },
              child: SizedBox(
                height: size.height * .4,
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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            '${reviewData.media?.title?.userPreferred}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'a review by ${reviewData.user?.name ?? ''}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.blueAccent.shade200,
                            ),
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: IconButton(
                        style: IconButton.styleFrom(
                          foregroundColor: Theme.of(context).iconTheme.color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: Size.square(25),
                          backgroundColor: Colors.black26,
                        ),
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
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
