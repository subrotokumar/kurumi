import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/presentation/anime/anime_screen.dart';
import 'package:kurumi/presentation/discover/discover.dart';
import 'package:kurumi/presentation/home/widget/nav_bar.widget.dart';
import 'package:kurumi/presentation/manga/manga_screen.dart';
import 'package:kurumi/presentation/notification/schedule_screen.dart';
import 'package:kurumi/presentation/profile/profile_page.dart';

final currentIndex = StateProvider<int>((ref) => 2);
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
  @override
  void initState() {
    isNavVisible = true;
    super.initState();
  }

  DateTime? currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    final indexProvider = ref.watch(currentIndex);
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
          floatingActionButton: NavBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: [
              AnimeScreen(),
              MangaScreen(),
              DiscoverTab(),
              ScheduleScreen(),
              ProfilePage(),
            ][indexProvider],
          ),
        ),
      ),
    );
  }
}
