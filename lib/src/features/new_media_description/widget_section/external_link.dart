import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ExternalLinkWidget extends StatelessWidget {
  const ExternalLinkWidget({this.data, super.key});
  final GMediaDetailQueryData_Media? data;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data?.externalLinks != null &&
          (data?.externalLinks?.isNotEmpty ?? false),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'External Links',
                  style: Poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                for (int index = 0;
                    index < (data?.externalLinks?.length ?? 0);
                    index++)
                  Builder(builder: (context) {
                    String col = data?.externalLinks
                            ?.elementAt(index)
                            ?.color
                            ?.toString() ??
                        '#2d2d2d00';
                    String imgUrl =
                        data?.externalLinks?.elementAt(index)?.icon ?? '';
                    Color iconColor = Color(
                      int.parse(col.substring(1, 7), radix: 16) + 0xFF000000,
                    ).withOpacity(0.7).withAlpha(200);
                    return GestureDetector(
                      onTap: () {
                        launchUrlString(
                          data?.externalLinks?.elementAt(index)?.url ?? '',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10, bottom: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: iconColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white70, width: 0.7),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                              height: 15,
                              color: kWhiteColor,
                              imageUrl: imgUrl,
                              errorWidget: (context, url, error) => const Icon(
                                Icons.web,
                                color: kWhiteColor,
                                size: 15,
                              ),
                              memCacheHeight: 25,
                              memCacheWidth: 25,
                            ),
                            const Gap(5),
                            Text(
                              data?.externalLinks?.elementAt(index)?.site ?? '',
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              ],
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
