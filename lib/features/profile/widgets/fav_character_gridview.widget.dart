import 'package:anilist/profile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/utils/utils.functions.dart';

class FavCharacterGridView extends StatelessWidget {
  const FavCharacterGridView({
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
            crossAxisCount: 3, mainAxisSpacing: 10, childAspectRatio: 1),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          final data = response?.data?.Viewer?.favourites?.characters?.nodes
              ?.elementAt(index);
          if (index == itemCount - 1 && paginate) {
            return Container(
              color: Colors.red,
            );
          }
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                log.v(data);
                context.pushNamed(
                  AppRouteConstant.CharacterDetailScreen.name,
                  pathParameters: {
                    'id': (data?.id ?? 0).toString(),
                    'title': data?.name?.full ?? ''
                  },
                );
              },
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
    );
  }
}
