import 'package:anilist/graphql/__generated__/profile.data.gql.dart';
import 'package:anilist/graphql/__generated__/profile.var.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';

class FavCharacterGridview extends StatelessWidget {
  const FavCharacterGridview({
    super.key,
    required this.size,
    required this.response,
  });

  final Size size;
  final OperationResponse<GProfileData, GProfileVars>? response;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 300,
      width: size.width,
      child: GridView.builder(
        padding: EdgeInsets.all(0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, childAspectRatio: 1),
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = response?.data?.Viewer?.favourites?.characters?.nodes
              ?.elementAt(index);
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox.square(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: data?.image?.large ?? '',
                  fit: BoxFit.fitWidth,
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
