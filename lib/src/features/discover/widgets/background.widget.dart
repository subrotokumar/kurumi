import 'dart:math';

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/features/discover/widgets/moving_banner.dart';
import 'package:kurumi/src/provider/provider.dart';

class BackgroundImage extends ConsumerStatefulWidget {
  const BackgroundImage({super.key, this.data, required this.index});
  final GDiscoverMediaData_Page_media? data;
  final int index;

  @override
  ConsumerState<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends ConsumerState<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bannerAnimation =
        ref.watch(sharedfPrefProvider.notifier).bannerAnimation;
    return widget.data?.bannerImage == null || !bannerAnimation
        ? Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CachedNetworkImage(
                  width: size.width,
                  height: size.height * 0.5,
                  imageUrl: widget.data?.coverImage?.extraLarge ??
                      widget.data?.coverImage?.large ??
                      '',
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => CachedNetworkImage(
                    height: 120,
                    width: 100,
                    imageUrl: widget.data?.coverImage?.large ??
                        widget.data?.coverImage?.extraLarge ??
                        '',
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => Container(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationX(pi),
                  child: CachedNetworkImage(
                    width: size.width,
                    height: size.height * 0.5,
                    imageUrl: widget.data?.coverImage?.extraLarge ??
                        widget.data?.coverImage?.large ??
                        '',
                    errorWidget: (context, url, error) => CachedNetworkImage(
                      height: 120,
                      width: 100,
                      imageUrl: widget.data?.coverImage?.large ??
                          widget.data?.coverImage?.extraLarge ??
                          '',
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Container(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        : MovingBanner(data: widget.data, index: widget.index);
  }
}
