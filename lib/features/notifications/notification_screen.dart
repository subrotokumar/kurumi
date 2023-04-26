import 'package:anilist/graphql/__generated__/NotificationQuery.data.gql.dart';
import 'package:anilist/graphql/__generated__/NotificationQuery.req.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/main.dart';
import 'package:kurumi/utils/utils.functions.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen(this.controller, {super.key});
  PageController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Container(
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/gifs/kakashi.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
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
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                              },
                              icon: Icon(Icons.schedule_send_outlined),
                            );
                          }),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
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
                                  final data =
                                      response?.data?.Page?.notifications;
                                  return ListView.builder(
                                    physics: ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: data?.length ?? 0,
                                    itemBuilder: (context, index) {
                                      final type =
                                          data?.elementAt(index)?.G__typename;
                                      late final item;
                                      bool isAiring =
                                          type == 'AiringNotification';
                                      if (isAiring) {
                                        item = data?.elementAt(index)
                                            as GNotificationsQueryData_Page_notifications__asAiringNotification;
                                      } else {
                                        item = data?.elementAt(index)
                                            as GNotificationsQueryData_Page_notifications__asRelatedMediaAdditionNotification;
                                      }
                                      return Container(
                                        height: 90,
                                        width: size.width - 40,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 8,
                                          horizontal: 20,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white10,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            HapticFeedback.mediumImpact();
                                            context.pushNamed(
                                              AppRouteConstant.MediaScreen.name,
                                              params: {
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
                                                padding: EdgeInsets.symmetric(
                                                        vertical: 8)
                                                    .copyWith(left: 15),
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
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: isAiring
                                                                ? Colors.blue
                                                                    .shade100
                                                                : Colors.amber
                                                                    .shade50),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        DateFormat().format(
                                                          DateTime.fromMillisecondsSinceEpoch(
                                                              (item?.createdAt ??
                                                                      0) *
                                                                  1000),
                                                        ),
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
