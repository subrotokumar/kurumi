import 'dart:async';

import 'package:anilist/anilist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upgrader/upgrader.dart';

import 'package:kurumi/src/features/activity/activity_screen.dart';
import 'package:kurumi/src/features/anime/anime_screen.dart';
import 'package:kurumi/src/features/discover/discover.dart';
import 'package:kurumi/src/features/home/widget/nav_bar.widget.dart';
import 'package:kurumi/src/features/manga/manga_screen.dart';
import 'package:kurumi/src/features/profile/profile_page.dart';
import 'package:kurumi/src/provider/provider.dart';

final currentIndex = StateProvider<int>((ref) => 0);
final navBarVisibilityProvider = StateProvider<bool>((ref) => true);
final animeTabProvider = StateProvider<int>((ref) => 0);
final mangaTabProvider = StateProvider<int>((ref) => 0);

class WhatsNewWidget extends StatefulWidget {
  const WhatsNewWidget({super.key});

  @override
  State<WhatsNewWidget> createState() => _WhatsNewWidgetState();
}

class _WhatsNewWidgetState extends State<WhatsNewWidget> {
  final colorList = [
    Colors.green,
    Colors.orange,
    Colors.lightBlue,
    Colors.pinkAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.8),
        border: Border.all(color: kWhiteColor.withValues(alpha: 0.4)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            title: const Text("What's New"),
            subtitle: const Text('v$kVersion'),
            trailing: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(CupertinoIcons.clear),
            ),
          ),
          for (final part in kChanges)
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    part['title'],
                    style: Poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: colorList[part['id'] % 4],
                    ),
                  ),
                  const Gap(5),
                  ...(part["detail"] as List).map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Icon(Icons.square, size: 8),
                          ),
                          const Gap(10),
                          Expanded(child: Text(e.toString(), style: Poppins())),
                        ],
                      ),
                    ),
                  ),
                  Gap(5),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  StreamController<bool> navController = StreamController();
  bool isNavVisible = true;
  DateTime? currentBackPressTime;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    isNavVisible = true;
    super.initState();
    initialize();
    whatsNewWidget(context);
  }

  Future<void> whatsNewWidget(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();
    await Future.delayed(2.seconds);
    if (pref.getBool('whatsnew@$kVersion') != false) {
      showModalBottomSheet(
        context: context,
        backgroundColor: kTransparentColor,
        builder: (context) => const WhatsNewWidget(),
      );
      await pref.setBool('whatsnew@$kVersion', true);
    }
  }

  Future<void> initialize() async {
    ref.read(currentIndex.notifier).update((state) => 0);
    final client = ref.read(clientProvider);
    await client?.request(GProfileReq()).first;
    final clientM = ref.read(mediaListClientProvider);
    await clientM
        ?.request(GNotificationsQueryReq((b) => b..vars.reset = false))
        .first;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (notification.direction == ScrollDirection.forward) {
          ref.read(navBarVisibilityProvider.notifier).update((state) => true);
        } else if (notification.direction == ScrollDirection.reverse) {
          ref.read(navBarVisibilityProvider.notifier).update((state) => false);
        }
        Timer(
          const Duration(milliseconds: 1000),
          () => navController.sink.add(isNavVisible),
        );
        return true;
      },
      child: WillPopScope(
        onWillPop: () async {
          DateTime now = DateTime.now();
          if (currentBackPressTime == null ||
              now.difference(currentBackPressTime!) >
                  const Duration(seconds: 2)) {
            currentBackPressTime = now;
            showSnackBar(context, 'Press back button again to exit');
            return false;
          }
          return true;
        },
        child: UpgradeAlert(
          child: Scaffold(
            backgroundColor: Colors.black,
            floatingActionButton: NavBar(pageController: pageController),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: false,
                children: const [
                  DiscoverTab(),
                  AnimeScreen(),
                  MangaScreen(),
                  ActivityScreen(),
                  ProfilePage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
