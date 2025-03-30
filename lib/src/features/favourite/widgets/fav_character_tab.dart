import 'package:anilist/anilist.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/provider/provider.dart';

final _charFatchIndex = StateProvider<(int, bool)>((ref) => (2, true));

class FavCharacterTabBarView extends ConsumerWidget {
  const FavCharacterTabBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.read(clientProvider);
    final media = MediaQuery.of(context);
    return SizedBox(
      width: media.size.width,
      child: Operation(
        client: client!,
        operationRequest: GFavCharacterQueryReq(
          (b) => b
            ..vars.page = 1
            ..vars.perPage = 25,
        ),
        builder: (context, response, error) {
          if (response?.loading ?? true) {
            return LoadingWidget;
          } else {
            final favCharacter =
                response?.data?.Viewer?.favourites?.characters?.nodes;
            return SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isTablet ? 4 : 3,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: favCharacter?.length ?? 0,
                    itemBuilder: (context, index) {
                      final data = response
                          ?.data?.Viewer?.favourites?.characters?.nodes
                          ?.elementAt(index);
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          onTap: () => CharacterDetailRoute(
                            id: data?.id ?? -0,
                            name:
                                data?.name?.full?.replaceAll(' ', '-') ?? 'NA',
                          ).push(context),
                          child: SizedBox.square(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: CachedNetworkImage(
                                imageUrl: data?.image?.large ?? '',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Consumer(builder: (context, ref, child) {
                    final v = ref.watch(_charFatchIndex).$2;
                    return Visibility(
                      visible: v,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          final req = GFavCharacterQueryReq(
                            (b) => b
                              ..vars.page = 1
                              ..vars.perPage = 25,
                          );
                          final newReq = GFavCharacterQueryReq(
                            (b) => b
                              ..vars.page = ref.read(_charFatchIndex).$1
                              ..vars.perPage = 25,
                          );
                          final cache =
                              ref.read(clientProvider)!.cache.readQuery(req);

                          ref
                              .read(clientProvider)!
                              .request(newReq)
                              .listen((event) {
                            if (event.data != null) {
                              if (event.data?.Viewer?.favourites?.characters
                                          ?.nodes ==
                                      null ||
                                  (event.data?.Viewer?.favourites?.characters
                                          ?.nodes?.isEmpty ??
                                      true)) {
                                ref
                                    .read(_charFatchIndex.notifier)
                                    .update((state) => (state.$1, false));
                                return;
                              }
                              ref
                                  .read(_charFatchIndex.notifier)
                                  .update((state) => (state.$1 + 1, state.$2));
                              final updatedCache = cache?.rebuild((b) => b
                                ..Viewer.favourites.characters.nodes.addAll(event
                                        .data
                                        ?.Viewer
                                        ?.favourites
                                        ?.characters
                                        ?.nodes
                                        ?.skip(0) ??
                                    const Iterable<
                                        GFavCharacterQueryData_Viewer_favourites_characters_nodes?>.empty()));
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
