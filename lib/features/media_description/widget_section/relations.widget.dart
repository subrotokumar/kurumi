import 'package:anilist/media_detail_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';

class RelationsWidget extends StatelessWidget {
  const RelationsWidget({
    super.key,
    required this.relations,
  });

  final GMediaDetailQueryData_Media_relations? relations;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:
          relations?.nodes != null && (relations?.nodes?.isNotEmpty ?? false),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Relations',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              scrollDirection: Axis.horizontal,
              itemCount: relations?.nodes?.length ?? 0,
              itemBuilder: (context, index) {
                final relatedAnimeData = relations?.nodes?.elementAt(index);
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () => context.pushNamed(
                                AppRouteConstant.MediaScreen.name,
                                params: {
                                  'id': (relatedAnimeData?.id ?? 0).toString(),
                                  'title':
                                      relatedAnimeData?.title?.userPreferred ??
                                          '',
                                },
                              ),
                              child: CachedNetworkImage(
                                height: 130,
                                width: 100,
                                fit: BoxFit.cover,
                                imageUrl:
                                    relatedAnimeData?.coverImage?.large ?? '',
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                color: Colors.black54,
                                child: Center(
                                  child: Text(
                                    relatedAnimeData?.format?.name ?? '',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 35,
                        child: Text(
                          relatedAnimeData?.title?.userPreferred ?? '',
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
  }
}
