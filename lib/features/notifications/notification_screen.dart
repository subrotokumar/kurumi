import 'package:anilist/graphql/__generated__/NotificationQuery.data.gql.dart';
import 'package:anilist/graphql/__generated__/NotificationQuery.req.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:line_icons/line_icon.dart';

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
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/gifs/kakashi.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
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
                          horizontal: 20, vertical: 5),
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
                          Consumer(builder: (context, ref, child) {
                            return IconButton(
                              onPressed: () {
                                controller.animateToPage(
                                  1,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                              },
                              icon: LineIcon.calendar(),
                            );
                          }),
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
                                return LoadingWidget;
                              } else {
                                log.v(response?.data);
                                final data =
                                    response?.data?.Page?.notifications;
                                return ListView.builder(
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
                                            ? Border.all(color: Colors.white)
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
