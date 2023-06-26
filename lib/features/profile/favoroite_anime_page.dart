import 'package:anilist/fav_anime_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/provider/provider.dart';

class FavAnimePage extends ConsumerStatefulWidget {
  const FavAnimePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavAnimePageState();
}

class _FavAnimePageState extends ConsumerState<FavAnimePage> {
  @override
  Widget build(BuildContext context) {
    final anilistId = ref.watch(userId);
    final client = ref.read(clientProvider);
    final media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: const Text('Favourite Anime'),
        backgroundColor: AppTheme.background,
      ),
      body: SizedBox(
        height: media.size.height * .8,
        width: media.size.width,
        child: Operation(
          client: client!,
          operationRequest: GFavAnimeQueryReq(
            (b) => b
              ..vars.id = anilistId
              ..vars.page = 1
              ..vars.perPage = 25,
          ),
          builder: (context, response, error) {
            if (response?.loading ?? true) {
              return LoadingWidget;
            } else {
              log.v(response?.data?.Viewer?.favourites?.anime);
              log.e(error);
              final favAnime = response?.data?.Viewer?.favourites?.anime?.nodes;
              return GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
              );
            }
          },
        ),
      ),
    );
  }
}
