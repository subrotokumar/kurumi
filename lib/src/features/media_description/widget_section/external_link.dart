import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
          SizedBox(
            height: 35,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: data?.externalLinks?.length ?? 0,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                String col =
                    data?.externalLinks?.elementAt(i)?.color?.toString() ??
                        '#ffffff';
                Color iconColor = Color(
                    int.parse(col.substring(1, 7), radix: 16) + 0xFF000000);
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: iconColor,
                      side: const BorderSide(color: Colors.white),
                    ),
                    icon: CachedNetworkImage(
                      height: 18,
                      color: iconColor,
                      imageUrl: data?.externalLinks?.elementAt(i)?.icon ?? '',
                      errorWidget: (context, url, error) => Icon(
                        Icons.web,
                        color: iconColor,
                      ),
                      memCacheHeight: 25,
                      memCacheWidth: 25,
                    ),
                    onPressed: () {
                      launchUrlString(
                        data?.externalLinks?.elementAt(i)?.url ?? '',
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    label: Text(
                      data?.externalLinks?.elementAt(i)?.site ?? '',
                      style: const TextStyle(color: Colors.white, shadows: [
                        Shadow(color: Colors.black, blurRadius: 1)
                      ]),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
