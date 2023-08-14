// ignore_for_file: implementation_imports, depend_on_referenced_packages

import 'package:anilist/search_anime_query.dart';
import 'package:built_collection/src/list.dart' show BuiltList;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/features/search_media/components/status_widget.dart';
import 'package:kurumi/provider/provider.dart';

class SearchedMediaListView extends ConsumerWidget {
  const SearchedMediaListView({
    super.key,
    required this.response,
  });

  final BuiltList<GSearchAnimeQueryData_Page_media?>? response;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showBottomSearchBar =
        ref.watch(sharedfPrefProvider.notifier).bottomSearchBar;

    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: showBottomSearchBar
          ? const EdgeInsets.only(top: 30, bottom: 20)
          : const EdgeInsets.only(top: 10, bottom: 20),
      shrinkWrap: true,
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
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: data?.coverImage?.large ?? '',
                      height: 120,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white24,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data?.title?.userPreferred ?? '',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                  text: '${(data?.startDate?.year) ?? ''}',
                                  style: TextStyle(
                                    color: Colors.blue.shade200,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: data?.format?.name != null
                                          ? ' • ${data?.format?.name[0]}${data?.format?.name.substring(1).toLowerCase()}'
                                          : '',
                                      style:
                                          const TextStyle(color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: StatusWidget(data: data),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
