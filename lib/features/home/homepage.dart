import 'dart:async';

import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upgrader/upgrader.dart';

import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/features/activity/activity_screen.dart';
import 'package:kurumi/features/anime/anime_screen.dart';
import 'package:kurumi/features/discover/discover.dart';
import 'package:kurumi/features/home/widget/nav_bar.widget.dart';
import 'package:kurumi/features/manga/manga_screen.dart';
import 'package:kurumi/features/profile/profile_page.dart';
import 'package:kurumi/provider/provider.dart';

final currentIndex = StateProvider<int>((ref) => 0);
final navBarVisibilityProvider = StateProvider<bool>((ref) => true);
final animeTabProvider = StateProvider<int>((ref) => 0);
final mangaTabProvider = StateProvider<int>((ref) => 0);

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
  }

  Future<void> initialize() async {
    ref.read(currentIndex.notifier).update((state) => 0);
    final client = ref.read(clientProvider);
    await client?.request(GProfileReq()).first;
    final clientM = ref.read(mediaListClientProvider);
    await clientM
        ?.request(GNotificationsQueryReq(
          (b) => b..vars.reset = false,
        ))
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
                  ProfilePage()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
