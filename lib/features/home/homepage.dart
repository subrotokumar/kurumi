import 'dart:async';

import 'package:anilist/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/features/activity/activity_screen.dart';

import 'package:kurumi/features/anime/anime_screen.dart';
import 'package:kurumi/features/discover/discover.dart';
import 'package:kurumi/features/home/widget/nav_bar.widget.dart';
import 'package:kurumi/features/manga/manga_screen.dart';
import 'package:kurumi/features/profile/profile_page.dart';
import 'package:kurumi/main.dart';

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
              now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
            currentBackPressTime = now;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Press back button again to exit')),
            );
            return false;
          }
          return true;
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          floatingActionButton: NavBar(pageController: pageController),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: false,
              children: [
                DiscoverTab(),
                AnimeScreen(),
                MangaScreen(),
                ActivityScreen(),
                // ScheduleScreen(),
                ProfilePage()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
