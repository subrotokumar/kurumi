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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      // height: 300,
      width: size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, childAspectRatio: 1),
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = response?.data?.Viewer?.favourites?.characters?.nodes
              ?.elementAt(index);
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
        itemCount:
            response?.data?.Viewer?.favourites?.characters?.nodes?.length ?? 0,
      ),
    );
  }
}
