import 'dart:ui';

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/media_description/function/share_media.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:screenshot/screenshot.dart';

class ThreeXThreeScreen extends ConsumerStatefulWidget {
  const ThreeXThreeScreen({super.key});

  @override
  ConsumerState<ThreeXThreeScreen> createState() => _ThreeXThreeScreenState();
}

class _ThreeXThreeScreenState extends ConsumerState<ThreeXThreeScreen> {
  bool editModel = false;
  final screenshotContr = ScreenshotController();

  final colList = [
    Colors.red,
    Colors.indigo,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.blue
  ];

  List<String> imageList = List.filled(9, "");

  @override
  void initState() {
    super.initState();
    final pref = ref.read(sharedfPrefProvider)!;
    imageList = pref.getStringList('3x3') ?? imageList;
    setState(() {});
  }

  Future<void> saveList() async {
    await ref.read(sharedfPrefProvider)?.setStringList('3x3', imageList);
  }

  Future<void> browse(int index) async {
    String? img = await showModalBottomSheet(
      elevation: 0,
      isScrollControlled: true,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.bounceIn,
        duration: 600.milliseconds,
        reverseCurve: Curves.bounceIn,
        reverseDuration: 500.milliseconds,
      ),
      backgroundColor: kTransparentColor,
      context: context,
      builder: (_) => const ThreeXThreeBuilderScreen(),
    );
    if (img == null) return;
    imageList[index] = img;
    saveList();
    setState(() {});
  }

  Future<void> openSelection(int index) async {
    await showModalBottomSheet(
      context: context,
      elevation: 0,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.bounceIn,
        duration: 600.milliseconds,
        reverseCurve: Curves.bounceIn,
        reverseDuration: 500.milliseconds,
      ),
      backgroundColor: kTransparentColor,
      builder: (_) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: kBlackColor.withOpacity(0.8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CupertinoButton(
              child: const Text('Remove'),
              onPressed: () {
                imageList[index] = "";
                context.pop();
                saveList();
                setState(() {});
              },
            ),
            CupertinoButton(
              child: const Text('Browse'),
              onPressed: () {
                context.pop();
                browse(index);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final (h, _) = context.getSize;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          backgroundColor: kTransparentColor,
          leadingWidth: 100,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                const Gap(12),
                Icon(PhosphorIcons.caretLeft()),
                const Gap(10),
                Text(
                  '3x3',
                  style: Poppins(
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                imageList = List<String>.filled(9, "");
                await saveList();
                setState(() {});
              },
              icon: Icon(PhosphorIcons.trashSimple()),
            ),
            IconButton(
              onPressed: () => shareMedia(
                controller: screenshotContr,
                media: null,
                shareTitle: "",
                shareSubject: "Kurumi",
              ),
              icon: Icon(PhosphorIcons.shareFat()),
            ),
            const Gap(8),
          ],
        ),
      ),
      body: Container(
        height: h - 50 - MediaQuery.of(context).padding.top,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.animeGrid.provider(),
            opacity: 0.7,
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: SingleChildScrollView(
            child: SizedBox(
              height: h - 50 - MediaQuery.paddingOf(context).top,
              child: Column(
                children: [
                  const Gap(20),
                  const Spacer(),
                  Screenshot(
                    controller: screenshotContr,
                    child: ReorderableGridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(10),
                      shrinkWrap: true,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 3,
                      onReorder: (oldIndex, newIndex) async {
                        setState(() {
                          final element = imageList.removeAt(oldIndex);
                          imageList.insert(newIndex, element);
                        });
                        await ref
                            .read(sharedfPrefProvider)
                            ?.setStringList('3x3', imageList);
                        setState(() {});
                      },
                      children: [
                        for (int index = 0; index < 9; index++)
                          Builder(
                            key: ValueKey(index.toString()),
                            builder: (context) {
                              String imageUrl = '';
                              try {
                                imageUrl = imageList[index];
                              } catch (_) {}

                              return ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: InkWell(
                                  onTap: () async {
                                    if (imageUrl.isEmpty) {
                                      await browse(index);
                                      // ignore: use_build_context_synchronously
                                      return;
                                    }
                                    await openSelection(index);
                                  },
                                  child: CachedNetworkImage(
                                    imageUrl: imageUrl,
                                    fit: BoxFit.cover,
                                    errorWidget: (context, e, child) =>
                                        Container(
                                      color: kBlackColor.withOpacity(0.3),
                                      child: Icon(PhosphorIcons.plus()),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    color: kWhiteColor.withOpacity(0.4),
                    child: Text(
                      'Data is stored locally on the device',
                      style: Poppins(color: kWhiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ThreeXThreeBuilderScreen extends StatefulWidget {
  const ThreeXThreeBuilderScreen({super.key});

  @override
  State<ThreeXThreeBuilderScreen> createState() =>
      _ThreeXThreeBuilderScreenState();
}

class _ThreeXThreeBuilderScreenState extends State<ThreeXThreeBuilderScreen> {
  GMediaType searchType = GMediaType.ANIME;

  final search = TextEditingController(text: '');

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (h, w) = context.getSize;
    return SizedBox(
      height: h * .8,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            color: kBlackColor.withOpacity(0.6),
          ),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: const Icon(PhosphorIconsBold.caretLeft, size: 20),
                    ),
                    const Gap(10),
                    Text(
                      'Search',
                      style: Poppins(fontSize: 20),
                    ),
                    const Spacer(),
                    CupertinoSlidingSegmentedControl(
                      groupValue: searchType,
                      children: const {
                        GMediaType.ANIME: Text('Anime'),
                        GMediaType.MANGA: Text('Manga'),
                      },
                      onValueChanged: (value) {
                        if (value == null) return;
                        setState(() => searchType = value);
                      },
                    )
                  ],
                ),
                const Gap(20),
                CupertinoTextField(
                  controller: search,
                  style: Poppins(color: kWhiteColor.withOpacity(0.8)),
                  onSubmitted: (v) => setState(() {}),
                  suffix: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(PhosphorIcons.magnifyingGlass()),
                  ),
                ),
                const Gap(20),
                Consumer(builder: (context, ref, child) {
                  final client = ref.watch(clientProvider);
                  return Operation(
                    client: client!,
                    operationRequest: GSearchAnimeQueryReq((b) {
                      return b
                        ..vars.search = search.text.isEmpty ? null : search.text
                        ..vars.type = searchType
                        ..vars.formatIn = null
                        ..vars.genreNotIn = null
                        ..vars.tagNotIn = null;
                    }),
                    builder: (context, response, error) {
                      if (response == null || response.loading) {
                        return Center(child: LoadingWidget);
                      } else {
                        final mediaList = response.data?.Page?.media;
                        return SizedBox(
                          height: 500,
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            shrinkWrap: true,
                            itemCount: mediaList?.length ?? 0,
                            separatorBuilder: (context, index) => const Gap(10),
                            itemBuilder: (context, index) {
                              final media = mediaList?.elementAt(index);
                              return InkWell(
                                onTap: () {
                                  context.pop(media?.coverImage?.large);
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: kWhiteColor.withOpacity(0.7),
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: CachedNetworkImage(
                                        height: 120,
                                        width: 90,
                                        imageUrl:
                                            media?.coverImage?.large ?? '',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Gap(10),
                                    Container(
                                      width: w * .6,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        mediaList?[index]
                                                ?.title
                                                ?.userPreferred ??
                                            '',
                                        maxLines: 2,
                                        style: Poppins(
                                          color: kWhiteColor.withOpacity(0.7),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      }
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
