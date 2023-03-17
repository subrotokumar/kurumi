import 'dart:math';

import 'package:anilist/graphql/__generated__/ReviewQuery.req.gql.dart';
import 'package:anilist/graphql/__generated__/schema.schema.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/main.dart';
import 'package:kurumi/utils/utils.functions.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 280,
      width: size.width,
      child: Consumer(
        builder: (context, ref, child) {
          final client = ref.watch(clientProvider);
          return Operation(
            client: client!,
            operationRequest: GReviewQueryReq(
              (b) => b..vars.type = GMediaType.ANIME,
            ),
            builder: (context, response, error) {
              if (response == null || response.loading) {
                return LoadingWidget;
              }
              final data = response.data?.Page?.reviews;
              return Swiper(
                autoplay: true,
                autoplayDelay: 5000,
                autoplayDisableOnInteraction: true,
                index: Random().nextInt(data?.length ?? 0),
                itemCount: data?.length ?? 0,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => context.pushNamed(
                    AppRouteConstant.MediaScreen.name,
                    params: {
                      'id': (data?.elementAt(index)?.media?.id ?? 0).toString(),
                      'title':
                          data?.elementAt(index)?.media?.title?.userPreferred ??
                              '',
                    },
                  ),
                  child: SizedBox(
                    width: size.width,
                    height: 280,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: CachedNetworkImage(
                            imageUrl:
                                data?.elementAt(index)?.media?.bannerImage ??
                                    data
                                        ?.elementAt(index)
                                        ?.media
                                        ?.coverImage
                                        ?.large ??
                                    data
                                        ?.elementAt(index)
                                        ?.media
                                        ?.coverImage
                                        ?.extraLarge ??
                                    '',
                            height: 280,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: size.width,
                            color: AppTheme.background,
                            height: 10,
                          ),
                        ),
                        FadingWidget1(),
                        FadingWidget1(),
                        FadingWidget2(),
                        Positioned(
                          bottom: 4,
                          child: Container(
                            width: size.width,
                            color: AppTheme.background,
                            height: 10,
                          ),
                        ),
                        Positioned.fill(
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(20),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(20),
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.white70,
                                        Colors.transparent,
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        offset: Offset(5, 5),
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        data?.elementAt(index)?.summary ?? '',
                                        textAlign: TextAlign.center,
                                        maxLines: 5,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 20),
                                          Icon(Icons.thumb_up_alt_sharp),
                                          SizedBox(width: 5),
                                          Text(
                                              '${data?.elementAt(index)?.rating ?? 0}'),
                                          Spacer(),
                                          Text(
                                            'Review By ${data?.elementAt(index)?.user?.name ?? 'User'}',
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Text(
                                    data
                                            ?.elementAt(index)
                                            ?.media
                                            ?.title
                                            ?.userPreferred ??
                                        '',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Container FadingWidget1() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppTheme.background,
            Colors.transparent,
            Colors.transparent,
            AppTheme.background,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Container FadingWidget2() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Colors.black38,
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
