import 'dart:math';

import 'package:anilist/discover_media.dart';
import 'package:anilist/graphql_client.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:kurumi/utils/utils.functions.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/routes/app_router.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/features/discover/widgets/background.widget.dart';
import 'package:kurumi/main.dart';

class BannerWidget extends ConsumerStatefulWidget {
  const BannerWidget({super.key});

  @override
  ConsumerState<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends ConsumerState<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer(
      builder: (context, ref, child) {
        final client = ref.watch(clientProvider);
        final type = ref.watch(discoverTabProvider);
        return SizedBox(
          height: size.height,
          width: size.width,
          child: Operation(
            client: client ?? initClient(),
            operationRequest: GDiscoverMediaReq(
              (b) => b
                ..vars.perPage = 1
                ..vars.perPage = 20
                ..vars.status = GMediaStatus.RELEASING
                ..vars.type = type
                ..vars.sort = GMediaSort.TRENDING_DESC,
            ),
            builder: (context, response, error) {
              if (response == null) {
                return Center(
                  child: Text('404'),
                );
              }
              if (response.loading) {
                return LoadingWidget;
              }
              int len = response.data?.Page?.media?.length ?? 20;
              return Swiper(
                index: Random().nextInt(len),
                autoplay: true,
                autoplayDelay: 6000,
                autoplayDisableOnInteraction: true,
                curve: Curves.easeIn,
                itemCount: response.data?.Page?.media?.length ?? 16,
                itemBuilder: (context, index) {
                  var data = response.data?.Page?.media?.elementAt(index);
                  return SizedBox(
                    height: size.height,
                    width: size.width,
                    child: Stack(
                      children: [
                        BackgroundImage(data: data),
                        GestureDetector(
                          onTap: () => context.pushNamed(
                            AppRouteConstant.MediaScreen.name,
                            params: {
                              'id': (data?.id ?? 0).toString(),
                              'title': data?.title?.userPreferred ?? '',
                            },
                          ),
                          child: Container(
                            height: size.height,
                            width: size.width,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppTheme.background.withOpacity(0.2),
                                  AppTheme.background.withOpacity(0.3),
                                  AppTheme.background.withOpacity(0.8),
                                  AppTheme.background.withOpacity(0.9),
                                  AppTheme.background.withOpacity(1),
                                  AppTheme.background,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -5,
                          child: Container(
                            height: 10,
                            width: size.width,
                            margin: EdgeInsets.only(top: 5),
                            color: AppTheme.background,
                          ),
                        ),
                        Container(
                          height: size.height * .4,
                          padding: EdgeInsets.symmetric(horizontal: 60),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  data?.title?.userPreferred ?? '',
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    shadows: [
                                      Shadow(
                                        color: AppTheme.background,
                                        blurRadius: 10,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
