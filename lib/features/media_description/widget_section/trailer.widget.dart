import 'package:anilist/media_detail_query.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TrailerWidget extends StatelessWidget {
  const TrailerWidget({
    super.key,
    required this.data,
    required this.size,
  });

  final GMediaDetailQueryData_Media? data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data?.trailer != null && (data?.trailer?.site == 'youtube'),
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trailer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16),
            CachedNetworkImage(
              imageUrl: data?.trailer?.thumbnail ?? '',
              fit: BoxFit.fitWidth,
              height: 150,
              width: 270,
              imageBuilder: (context, imageProvider) => GestureDetector(
                onTap: () {
                  launchUrlString(
                    'https://www.youtube.com/watch?v=${data?.trailer?.id}',
                    mode: LaunchMode.externalApplication,
                  );
                },
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
