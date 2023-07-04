import 'package:anilist/graphql/__generated__/FavAnimeQuery.data.gql.dart';
import 'package:anilist/graphql/__generated__/FavAnimeQuery.req.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/provider/provider.dart';

final _animeFatchIndex = StateProvider<(int, bool)>((ref) => (2, true));

class FavAnimeTabBarView extends ConsumerWidget {
  const FavAnimeTabBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.read(clientProvider);
    final media = MediaQuery.of(context);
    return SizedBox(
      width: media.size.width,
      child: Operation(
        client: client!,
        operationRequest: GFavAnimeQueryReq(
          (b) => b
            ..vars.page = 1
            ..vars.perPage = 25,
        ),
        builder: (context, response, error) {
          if (response?.loading ?? true) {
            return LoadingWidget;
          } else {
            log.v(response?.data);
            final favAnime = response?.data?.Viewer?.favourites?.anime?.nodes;
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
                    itemCount: favAnime?.length ?? 0,
                    itemBuilder: (context, index) {
                      final data = favAnime?.elementAt(index);
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
                    final v = ref.watch(_animeFatchIndex).$2;
                    return Visibility(
                      visible: v,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          final req = GFavAnimeQueryReq(
                            (b) => b
                              ..vars.page = 1
                              ..vars.perPage = 25,
                          );
                          final newReq = GFavAnimeQueryReq(
                            (b) => b
                              ..vars.page = ref.read(_animeFatchIndex).$1
                              ..vars.perPage = 25,
                          );
                          final cache =
                              ref.read(clientProvider)!.cache.readQuery(req);

                          ref
                              .read(clientProvider)!
                              .request(newReq)
                              .listen((event) {
                            if (event.data != null) {
                              if (event.data?.Viewer?.favourites?.anime
                                          ?.nodes ==
                                      null ||
                                  (event.data?.Viewer?.favourites?.anime?.nodes
                                          ?.isEmpty ??
                                      true)) {
                                ref
                                    .read(_animeFatchIndex.notifier)
                                    .update((state) => (state.$1, false));
                                return;
                              }
                              ref
                                  .read(_animeFatchIndex.notifier)
                                  .update((state) => (state.$1 + 1, state.$2));
                              final updatedCache = cache?.rebuild((b) => b
                                ..Viewer.favourites.anime.nodes.addAll(event
                                        .data?.Viewer?.favourites?.anime?.nodes
                                        ?.skip(0) ??
                                    const Iterable<
                                        GFavAnimeQueryData_Viewer_favourites_anime_nodes?>.empty()));
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
