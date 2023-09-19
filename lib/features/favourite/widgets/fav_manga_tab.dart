import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/router.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:anilist/fav_manga_query.dart';

final _mangaFatchIndex = StateProvider<(int, bool)>((ref) => (2, true));

class FavMangaTabBarView extends ConsumerWidget {
  const FavMangaTabBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.read(clientProvider);
    final media = MediaQuery.of(context);
    // return Placeholder();
    return SizedBox(
      width: media.size.width,
      child: Operation(
        client: client!,
        operationRequest: GFavMangaQueryReq(
          (b) => b
            ..vars.page = 1
            ..vars.perPage = 25,
        ),
        builder: (context, response, error) {
          if (response?.loading ?? true) {
            return LoadingWidget;
          } else {
            final favManga = response?.data?.Viewer?.favourites?.manga?.nodes;
            return SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: favManga?.length ?? 0,
                    itemBuilder: (context, index) {
                      final data = favManga?.elementAt(index);
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GestureDetector(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            context.pushNamed(
                              AppRouteConstant.MediaScreen.name,
                              pathParameters: {
                                'id': (data?.id ?? 0).toString(),
                                'title': data?.title?.userPreferred ?? '',
                              },
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: SizedBox.square(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: CachedNetworkImage(
                                  imageUrl: data?.coverImage?.large ?? '',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Consumer(builder: (context, ref, child) {
                    final v = ref.watch(_mangaFatchIndex).$2;
                    return Visibility(
                      visible: v && (favManga?.length ?? 0) >= 25,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          final req = GFavMangaQueryReq(
                            (b) => b
                              ..vars.page = 1
                              ..vars.perPage = 25,
                          );
                          final newReq = GFavMangaQueryReq(
                            (b) => b
                              ..vars.page = ref.read(_mangaFatchIndex).$1
                              ..vars.perPage = 25,
                          );
                          final cache =
                              ref.read(clientProvider)!.cache.readQuery(req);

                          ref
                              .read(clientProvider)!
                              .request(newReq)
                              .listen((event) {
                            if (event.data != null) {
                              if (event.data?.Viewer?.favourites?.manga
                                          ?.nodes ==
                                      null ||
                                  (event.data?.Viewer?.favourites?.manga?.nodes
                                          ?.isEmpty ??
                                      true)) {
                                ref
                                    .read(_mangaFatchIndex.notifier)
                                    .update((state) => (state.$1, false));
                                return;
                              }
                              ref
                                  .read(_mangaFatchIndex.notifier)
                                  .update((state) => (state.$1 + 1, state.$2));
                              final updatedCache = cache?.rebuild((b) => b
                                ..Viewer.favourites.manga.nodes.addAll(event
                                        .data?.Viewer?.favourites?.manga?.nodes
                                        ?.skip(0) ??
                                    const Iterable<
                                        GFavMangaQueryData_Viewer_favourites_manga_nodes?>.empty()));
                              ref
                                  .read(clientProvider)!
                                  .cache
                                  .writeQuery(req, updatedCache);
                            }
                          });
                        },
                        child: const Text('Show More'),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
