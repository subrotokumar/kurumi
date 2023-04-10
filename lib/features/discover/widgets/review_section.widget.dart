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
import 'package:kurumi/provider/provider.dart';
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
          final type = ref.watch(discoverTabProvider);
          return Operation(
            client: client!,
            operationRequest: GReviewQueryReq(
              (b) => b..vars.type = type,
            ),
            builder: (context, response, error) {
              if (response == null || response.loading) {
                return LoadingWidget;
              }
              final data = response.data?.Page?.reviews;
              return Swiper(
                autoplay: true,
                autoplayDelay: 9000,
                autoplayDisableOnInteraction: true,
                index: Random().nextInt(data?.length ?? 0),
                itemCount: data?.length ?? 0,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    if (data?.elementAt(index) != null)
                      context.pushNamed(
                        AppRouteConstant.Review.name,
                        params: {
                          'id': (data?.elementAt(index)?.media?.id ?? 0)
                              .toString(),
                        },
                        extra: data?.elementAt(index),
                      );
                  },
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
                        // FadingWidget2(),
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
                            child: Container(
                                height: 160,
                                width: size.width * 0.85,
                                margin: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black45,
                                  border: Border.all(color: Colors.white54),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 10,
                                      offset: Offset(5, 5),
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(12)),
                                      child: CachedNetworkImage(
                                        imageUrl: data
                                                ?.elementAt(index)
                                                ?.media
                                                ?.coverImage
                                                ?.large ??
                                            '',
                                        width: 110,
                                        height: 160,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              data
                                                      ?.elementAt(index)
                                                      ?.media
                                                      ?.title
                                                      ?.userPreferred ??
                                                  '',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: (index & 1 == 0)
                                                    ? Colors.blue.shade200
                                                    : Colors.green.shade200,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              data?.elementAt(index)?.summary ??
                                                  '',
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 4,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Spacer(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(Icons.thumb_up_alt),
                                                SizedBox(width: 6),
                                                Text(
                                                  '${data?.elementAt(index)?.rating ?? 0}',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(width: 6),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
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
