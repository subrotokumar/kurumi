import 'dart:ui';

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';

class ShowMoreWidget extends StatelessWidget {
  const ShowMoreWidget({super.key, this.response, required this.onPressed});
  final OperationResponse<GProfileData, GProfileVars>? response;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CachedNetworkImage(
        imageUrl: response?.data?.Viewer?.avatar?.medium ??
            response?.data?.Viewer?.avatar?.large ??
            '',
        imageBuilder: (context, imageProvider) => Container(
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: const Center(
              child: Icon(
                Icons.move_down_rounded,
                size: 40,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
