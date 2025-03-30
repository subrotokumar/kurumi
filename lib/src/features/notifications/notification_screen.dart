import 'package:anilist/anilist.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kurumi/src/core/assets/assets.dart';
import 'package:line_icons/line_icon.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/provider/provider.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen(this.controller, {super.key});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final today = DateTime.now();
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: DefaultTabController(
            length: 7,
            initialIndex: 1,
            child: Stack(
              children: [
                SizedBox(
                  height: size.height,
                  width: size.width,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.black87,
                        Colors.black87,
                        Colors.black
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5)
                          .copyWith(right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Notifications',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              controller.animateToPage(
                                1,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear,
                              );
                            },
                            icon: const LineIcon.calendar(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) {
                          final client = ref.watch(mediaListClientProvider);
                          return Operation(
                            operationRequest: GNotificationsQueryReq(
                              (b) => b..vars.reset = true,
                            ),
                            client: client!,
                            builder: (context, response, error) {
                              if (response?.loading ?? true) {
                                return Shimmer.fromColors(
                                  highlightColor: Colors.black26,
                                  baseColor: Colors.white38,
                                  child: ListView.builder(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    physics: const ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 90,
                                        width: size.width - 40,
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 8,
                                          horizontal: 18,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white30,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              } else {
                                final data =
                                    response?.data?.Page?.notifications;
                                if (data?.isEmpty ?? true) {
                                  return Center(
                                    child: Column(
                                      children: [
                                        Assets.lotties.ufo
                                            .lottie(fit: BoxFit.contain),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            'No new notifications\nat this time',
                                            textAlign: TextAlign.center,
                                            style: Poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  Colors.white.withOpacity(0.6),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                return ListView.builder(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: data?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    final type =
                                        data?.elementAt(index)?.G__typename;
                                    // ignore: prefer_typing_uninitialized_variables
                                    late final item;
                                    if (type !=
                                            'RelatedMediaAdditionNotification' &&
                                        type != 'AiringNotification') {
                                      return const Card();
                                    }
                                    bool isAiring =
                                        type == 'AiringNotification';
                                    if (isAiring) {
                                      item = data?.elementAt(index)
                                          as GNotificationsQueryData_Page_notifications__asAiringNotification;
                                    } else {
                                      item = data?.elementAt(index)
                                          as GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification;
                                    }
                                    DateTime time =
                                        DateTime.fromMillisecondsSinceEpoch(
                                            (item?.createdAt ?? 0) * 1000);

                                    int diff = time.difference(today).inDays;
                                    diff = diff < 0 ? -diff : diff;
                                    return Container(
                                      height: 90,
                                      width: size.width - 40,
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: diff < 1 ? 18 : 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white10,
                                        border: diff < 1
                                            ? Border.all(color: Colors.white38)
                                            : null,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          HapticFeedback.mediumImpact();
                                          context.pushNamed(
                                            AppRouteConstant.MediaScreen.name,
                                            pathParameters: {
                                              'id': (item?.media?.id ?? 0)
                                                  .toString(),
                                              'title': item.media?.title
                                                      ?.userPreferred ??
                                                  '',
                                            },
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: CachedNetworkImage(
                                                imageUrl: item?.media
                                                        ?.coverImage?.large ??
                                                    "",
                                                height: 90,
                                                width: 70,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Container(
                                              width: size.width - 20 - 90,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                          vertical: 8)
                                                      .copyWith(
                                                          left: 15, right: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      type == 'AiringNotification'
                                                          ? 'Episode ${item.episode} of ${item.media?.title?.userPreferred ?? ''} aired.'
                                                          : '${item.media?.title?.userPreferred ?? ''} was recently added to the site.',
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: isAiring
                                                              ? Colors
                                                                  .blue.shade100
                                                              : Colors.amber
                                                                  .shade50),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      DateFormat().format(time),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
