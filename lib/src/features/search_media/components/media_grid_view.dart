// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'package:anilist/anilist.dart';
import 'package:built_collection/src/list.dart' show BuiltList;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/provider/provider.dart';

class SearchedMediaGridView extends StatelessWidget {
  const SearchedMediaGridView({
    super.key,
    required this.response,
  });

  final BuiltList<GSearchAnimeQueryData_Page_media?>? response;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final showBottomSearchBar =
          ref.watch(sharedfPrefProvider.notifier).bottomSearchBar;

      return GridView.builder(
        padding: showBottomSearchBar
            ? const EdgeInsets.only(top: 30, bottom: 20, left: 16, right: 16)
            : const EdgeInsets.only(top: 10, bottom: 20, left: 16, right: 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isTablet ? 4 : 3,
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
                      imageBuilder: (context, imageProvider) {
                        return _MediaTitle(
                          data: data,
                          imageProvider: imageProvider,
                        );
                      },
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

class _MediaTitle extends StatelessWidget {
  const _MediaTitle({
    required this.data,
    required this.imageProvider,
  });

  final GSearchAnimeQueryData_Page_media? data;
  final ImageProvider<Object> imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomRight,
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(5),
        child: Text(
          data?.title?.userPreferred ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 1.5,
                offset: Offset(1, 0),
              ),
              Shadow(
                color: Colors.black,
                blurRadius: 1.5,
                offset: Offset(-1, 0),
              ),
              Shadow(
                color: Colors.black,
                blurRadius: 1.5,
                offset: Offset(0, 1),
              ),
              Shadow(
                color: Colors.black,
                blurRadius: 1.5,
                offset: Offset(0, -1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
