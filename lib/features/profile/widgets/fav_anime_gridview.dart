import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/router.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/features/favourite/favourite_screen.dart';
import 'package:kurumi/features/profile/widgets/show_more.widget.dart';

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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isTablet ? 4 : 3,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (index == itemCount - 1 && paginate) {
            return Consumer(builder: (context, ref, child) {
              return ShowMoreWidget(
                onPressed: () {
                  ref.read(pageIndicator.notifier).state = 0;
                  context.pushNamed(
                    AppRouteConstant.FavAnimeScreen.name,
                    pathParameters: {
                      'username': response?.data?.Viewer?.name ??
                          response?.data?.Viewer?.name ??
                          'profile',
                    },
                    extra: 0,
                  );
                },
                response: response,
              );
            });
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
