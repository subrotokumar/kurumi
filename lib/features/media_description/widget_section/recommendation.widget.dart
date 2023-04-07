import 'package:anilist/media_detail_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumi/config/app_route_constant.dart';

class RecommendationWidget extends StatelessWidget {
  RecommendationWidget({
    this.data,
    super.key,
  });
  final GMediaDetailQueryData_Page? data;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final recommendedData = data?.recommendations;
        if ((recommendedData?.length == null) || (recommendedData?.length == 0))
          return Container();
        Size size = MediaQuery.of(context).size;
        return Visibility(
          visible: recommendedData != null && (recommendedData.isNotEmpty),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16),
              Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Recommendations',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedData?.length ?? 0,
                  itemBuilder: (context, index) {
                    final recommendAnimeData =
                        recommendedData?.elementAt(index)?.mediaRecommendation;
                    return Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: GestureDetector(
                              onTap: () => context.pushNamed(
                                AppRouteConstant.MediaScreen.name,
                                params: {
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
                          SizedBox(height: 5),
                          SizedBox(
                            height: 35,
                            child: Text(
                              recommendAnimeData?.title?.userPreferred ?? '',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 11),
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
