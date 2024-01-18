import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/core.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({
    this.data,
    super.key,
  });
  final GMediaDetailQueryData_Page? data;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final recommendedData = data?.recommendations;
        if ((recommendedData?.length == null) ||
            // ignore: prefer_is_empty
            (recommendedData?.length == 0)) {
          return Container();
        }
        Size size = MediaQuery.of(context).size;
        return Visibility(
          visible: recommendedData != null && (recommendedData.isNotEmpty),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              Container(
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Recommendations',
                  style: Poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedData?.length ?? 0,
                  itemBuilder: (context, index) {
                    final recommendAnimeData =
                        recommendedData?.elementAt(index)?.mediaRecommendation;
                    return Container(
                      width: 100,
                      margin: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: GestureDetector(
                              onTap: () => context.pushNamed(
                                AppRouteConstant.MediaScreen.name,
                                pathParameters: {
                                  'id':
                                      (recommendAnimeData?.id ?? 0).toString(),
                                  'title': recommendAnimeData
                                          ?.title?.userPreferred ??
                                      '',
                                },
                              ),
                              child: CachedNetworkImage(
                                height: 130,
                                width: 100,
                                fit: BoxFit.cover,
                                imageUrl:
                                    recommendAnimeData?.coverImage?.large ?? '',
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 35,
                            child: Text(
                              recommendAnimeData?.title?.userPreferred ?? '',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
