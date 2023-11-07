import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/provider/provider.dart';

class BannerAppBar extends ConsumerWidget {
  const BannerAppBar({
    super.key,
    required this.data,
    required this.size,
    required this.loading,
  });

  final GMediaDetailQueryData_Media? data;
  final Size size;
  final StateProvider<bool> loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(mediaListClientProvider);
    return Column(
      children: [
        Stack(
          children: [
            CachedNetworkImage(
              imageUrl: data?.bannerImage ??
                  data?.coverImage?.extraLarge ??
                  data?.coverImage?.large ??
                  data?.coverImage?.medium ??
                  '',
              width: size.width,
              height: size.height * .4,
              fit: data?.bannerImage != null
                  ? BoxFit.fitHeight
                  : BoxFit.fitWidth,
            ),
            Container(
              width: size.width,
              height: size.height * .4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    AppTheme.background.withOpacity(.1),
                    AppTheme.background.withOpacity(.7),
                    AppTheme.background,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              bottom: -5,
              child: Container(
                height: 10,
                width: size.width,
                color: AppTheme.background,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 40, 10, 10),
              child: Row(
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Theme.of(context).iconTheme.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      fixedSize: const Size.square(25),
                      backgroundColor: Colors.black26,
                      side: const BorderSide(color: Colors.white12, width: 0.5),
                    ),
                    onPressed: () {
                      if (context.canPop()) {
                        context.pop();
                      }
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25,
                    ),
                  ),
                  const Spacer(),
                  Card(
                    color: Colors.black12,
                    elevation: 0,
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 10),
                          Text(
                            '${data?.favourites ?? 0}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                  )
                                ]),
                          ),
                          Consumer(builder: (context, ref, child) {
                            return IconButton(
                              style: IconButton.styleFrom(
                                foregroundColor:
                                    Theme.of(context).iconTheme.color,
                              ),
                              onPressed: () {
                                ref
                                    .read(loading.notifier)
                                    .update((state) => true);
                                try {
                                  client!
                                      .request(
                                    data?.type == GMediaType.ANIME
                                        ? GToggleFavouriteReq(
                                            (b) => b..vars.animeId = data?.id)
                                        : GToggleFavouriteReq(
                                            (b) => b..vars.mangaId = data?.id),
                                  )
                                      .listen((event) {
                                    final req = GMediaDetailQueryReq(
                                      (b) => b
                                        ..vars.id = data?.id
                                        ..vars.limit = 5
                                        ..vars.page = 1
                                        ..vars.perPage = 10,
                                    );
                                    final cache = client.cache.readQuery(req);
                                    client.cache.writeQuery(
                                      req,
                                      cache!.rebuild(
                                        (p) => p
                                          ..Media.isFavourite =
                                              !(data?.isFavourite ?? false),
                                      ),
                                    );
                                    ref
                                        .read(loading.notifier)
                                        .update((state) => false);
                                  });
                                } catch (e) {
                                  ref
                                      .read(loading.notifier)
                                      .update((state) => false);
                                }
                              },
                              icon: Icon(
                                CupertinoIcons.heart_fill,
                                size: 25,
                                color: (data?.isFavourite ?? false)
                                    ? Colors.redAccent
                                    : Colors.white,
                                shadows: const [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                  )
                                ],
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
