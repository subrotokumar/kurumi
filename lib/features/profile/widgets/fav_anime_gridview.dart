import 'dart:ui';

import 'package:anilist/profile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/utils/utils.functions.dart';

class FavAnimeGridView extends StatelessWidget {
  const FavAnimeGridView({
    super.key,
    required this.size,
    required this.response,
  });

  final Size size;
  final OperationResponse<GProfileData, GProfileVars>? response;

  @override
  Widget build(BuildContext context) {
    int itemCount =
        response?.data?.Viewer?.favourites?.anime?.nodes?.length ?? 0;
    bool paginate = itemCount == 25;
    if (paginate) itemCount = 26;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (index == itemCount - 1 && paginate) {
            return GestureDetector(
              onTap: () {
                showSnackBar(context, 'Comming soon...');
                // context.pushNamed(AppRouteConstant.FavAnimeScreen.name);
              },
              child: CachedNetworkImage(
                imageUrl: response?.data?.Viewer?.avatar?.medium ??
                    response?.data?.Viewer?.avatar?.large ??
                    '',
                imageBuilder: (context, imageProvider) => Container(
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: const Center(
                      child: Icon(
                        Icons.move_down_rounded,
                        size: 40,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            final data = response?.data?.Viewer?.favourites?.anime?.nodes
                ?.elementAt(index);
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
          }
        },
      ),
    );
  }
}
