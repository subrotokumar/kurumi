// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'package:anilist/search_anime_query.dart';
import 'package:built_collection/src/list.dart' show BuiltList;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/features/search_media/components/status_widget.dart';
import 'package:kurumi/provider/provider.dart';

class SearchedMediaGridView extends StatelessWidget {
  const SearchedMediaGridView({
    super.key,
    required this.response,
  });

  final BuiltList<GSearchAnimeQueryData_Page_media?>? response;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer(builder: (context, ref, child) {
      final showBottomSearchBar =
          ref.watch(sharedfPrefProvider.notifier).bottomSearchBar;

      return GridView.builder(
        padding: showBottomSearchBar
            ? const EdgeInsets.only(top: 30, bottom: 20, left: 16, right: 16)
            : const EdgeInsets.only(top: 10, bottom: 20, left: 16, right: 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: size.width > 500 ? 4 : 3,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: response?.length ?? 0,
        itemBuilder: (context, index) {
          final data = response?.elementAt(index);
          return GestureDetector(
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CachedNetworkImage(
                      // height: 170,
                      fit: BoxFit.cover,
                      imageUrl: data?.coverImage?.large ?? '',
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: StatusWidget(
                        data: data,
                        background: Colors.black45,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      color: Colors.black45,
                      padding: const EdgeInsets.all(2),
                      child: Text(
                        data?.title?.userPreferred ?? '',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: size.width > 500 ? 16 : 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
