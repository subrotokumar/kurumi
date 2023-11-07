import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/features/favourite/widgets/fav_anime_tab.dart';
import 'package:kurumi/src/features/favourite/widgets/fav_character_tab.dart';
import 'package:kurumi/src/features/favourite/widgets/fav_manga_tab.dart';

final pageIndicator = StateProvider<int>((ref) => 0);

class FavAnimeScreen extends ConsumerStatefulWidget {
  const FavAnimeScreen({this.index = 0, super.key});
  final int index;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavAnimeScreenState();
}

class _FavAnimeScreenState extends ConsumerState<FavAnimeScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController =
        TabController(length: 3, vsync: this, initialIndex: widget.index);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  int page = 1;

  final appBar = AppBar(
    title: Row(
      children: [
        const Text('Favourite '),
        Consumer(
          builder: (context, ref, child) =>
              Text(['Anime', 'Manga', 'Characters'][ref.watch(pageIndicator)]),
        )
      ],
    ),
    backgroundColor: AppTheme.background,
    elevation: 0,
    scrolledUnderElevation: 0,
  );

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: TabBar(
        onTap: (value) => ref.read(pageIndicator.notifier).state = value,
        controller: tabController,
        tabs: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.tv),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.book),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.heart_circle_fill),
          ),
        ],
      ),
      backgroundColor: AppTheme.background,
      appBar: appBar,
      body: SizedBox(
        height:
            media.size.height - appBar.preferredSize.height - media.padding.top,
        width: media.size.width,
        child: TabBarView(
          controller: tabController,
          children: const [
            FavAnimeTabBarView(),
            FavMangaTabBarView(),
            FavCharacterTabBarView(),
          ],
        ),
      ),
    );
  }
}
