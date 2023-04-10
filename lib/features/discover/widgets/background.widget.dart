import 'dart:math';

import 'package:anilist/discover_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatefulWidget {
  const BackgroundImage({this.data, super.key});
  final GDiscoverMediaData_Page_media? data;

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  // late ScrollController scrollController;
  // late double current;
  // late double max;
  // @override
  // void initState() {
  //   super.initState();
  //   scrollController = ScrollController();
  //   scrollController.addListener(() {});

  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     current = scrollController.offset;
  //     max = scrollController.position.maxScrollExtent;
  //     if (scrollController.position.atEdge) {
  //       _autoScroll();
  //     }
  //   });
  // }

  // _autoScroll() {
  //   scheduleMicrotask(() {
  //     scrollController.animateTo(
  //       scrollController.offset == max ? 0 : max,
  //       duration: Duration(seconds: 7),
  //       curve: Curves.linear,
  //     );
  //     // .then((_) => _autoScroll());
  //   });
  // }

  // @override
  // void dispose() {
  //   scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // controller: scrollController,
      child: widget.data?.bannerImage == null || true
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
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(
                    height: size.height * 0.5,
                    imageUrl: widget.data?.bannerImage ?? '',
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => CachedNetworkImage(
                      height: 120,
                      width: 100,
                      imageUrl: widget.data?.coverImage?.extraLarge ??
                          widget.data?.coverImage?.large ??
                          '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(pi),
                    child: CachedNetworkImage(
                      height: size.height * 0.5,
                      imageUrl: widget.data?.bannerImage ?? '',
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => CachedNetworkImage(
                        height: 120,
                        width: 100,
                        imageUrl: widget.data?.coverImage?.extraLarge ??
                            widget.data?.coverImage?.large ??
                            '',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
