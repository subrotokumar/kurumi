import 'package:anilist/airing_schedule_query.dart';
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

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen(this.controller, {super.key});
  final PageController controller;

  final List days = const <Widget>[
    Text('SUNDAY'),
    Text('MONDAY'),
    Text('TUESDAY'),
    Text('WEDNESDAY'),
    Text('THURSDAY'),
    Text('FRIDAY'),
    Text('SATURDAY'),
  ];

  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now().subtract(const Duration(days: 1));
    DateTime start = DateTime(time.year, time.month, time.day, 0, 0);
    Size size = MediaQuery.of(context).size;
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
                          horizontal: 16, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Airing Schedule',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Consumer(builder: (context, ref, child) {
                            return IconButton(
                              onPressed: () {
                                controller.animateToPage(
                                  0,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                              },
                              icon: const Icon(Icons.notifications),
                            );
                          }),
                        ],
                      ),
                    ),
                    TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white38,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      tabs: [
                        for (int i = 0; i < 7; i++)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              days[(time.weekday + i) % 7],
                              Builder(builder: (context) {
                                final t = DateFormat()
                                    .format(time.add(Duration(days: i)));
                                return Text(
                                  t.substring(0, t.indexOf(',')),
                                  style: const TextStyle(fontSize: 12),
                                );
                              }),
                            ],
                          ),
                      ],
                      onTap: (value) => HapticFeedback.selectionClick(),
                    ),
                    Flexible(
                      child: TabBarView(
                        children: [
                          for (int day = 0; day < 7; day++)
                            SchedulePerDay(
                                time: start.add(Duration(days: day))),
                        ],
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

class SchedulePerDay extends StatelessWidget {
  const SchedulePerDay({required this.time, super.key});
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    DateTime start = time;
    DateTime end = time.add(const Duration(days: 1));
    return Consumer(builder: (context, ref, child) {
      final client = ref.watch(clientProvider);
      return Operation(
        client: client!,
        operationRequest: GAiringScheduleQueryReq(
          (b) => b
            ..vars.page = 1
            ..vars.airingAtGreater =
                (start.millisecondsSinceEpoch / 1000).floor()
            ..vars.airingAtLesser = (end.millisecondsSinceEpoch / 1000).floor(),
        ),
        builder: (context, response, error) {
          if (response == null || response.loading == true) {
            return LoadingWidget;
          } else {
            final data = response.data?.Page?.airingSchedules;
            if (data == null) return const Center(child: Text('Server Error'));
            // print(data.length);
            return ListView.builder(
              padding: const EdgeInsets.only(top: 16),
              itemBuilder: (context, index) {
                final item = data.elementAt(index);
                final time = DateTime.fromMillisecondsSinceEpoch(
                        (item?.airingAt ?? 0) * 1000)
                    .toLocal()
                    .toString()
                    .substring(11, 16);
                bool isAired = (item?.timeUntilAiring ?? 0).isNegative;
                final imageURL = item?.media?.coverImage?.large ??
                    item?.media?.coverImage?.medium ??
                    '';
                final title = item?.media?.title?.userPreferred ??
                    item?.media?.title?.romaji ??
                    '';
                // final col = item?.media?.coverImage?.color;
                final country = item?.media?.countryOfOrigin?.value == "JP";
                if (!country) {
                  return Container();
                }
                return GestureDetector(
                  onTap: () => context.pushNamed(
                    AppRouteConstant.MediaScreen.name,
                    pathParameters: {
                      'id': (item?.media?.id ?? 0).toString(),
                      'title': data
                              .elementAt(index)
                              ?.media
                              ?.title
                              ?.english
                              ?.replaceAll(' ', '-') ??
                          '',
                    },
                  ),
                  child: SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              height: 80,
                              width: 80 - 10,
                              imageUrl: imageURL,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 80,
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.white12,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.cyan[100],
                                  ),
                                ),
                                Text(
                                  'Episode: ${item?.episode ?? 0}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.fromLTRB(8, 5, 10, 5),
                          decoration: const BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              isAired ? 'AIRED' : time,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: isAired
                                    ? Colors.orange[100]
                                    : Colors.green[100],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: data.length,
            );
          }
        },
      );
    });
  }
}
