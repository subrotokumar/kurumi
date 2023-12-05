import 'dart:async';
import 'dart:math';

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MovingBanner extends StatefulWidget {
  final GDiscoverMediaData_Page_media? data;
  final int index;

  const MovingBanner({super.key, this.data, required this.index});

  @override
  State<MovingBanner> createState() => _MovingBannerState();
}

class _MovingBannerState extends State<MovingBanner> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(500.milliseconds);
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        _autoScroll();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() {
    final current = scrollController.offset;
    final scrollEndPosition = scrollController.position.maxScrollExtent;

    scheduleMicrotask(() {
      scrollController.animateTo(
        current == scrollEndPosition ? 0 : scrollEndPosition,
        duration: 7500.milliseconds,
        curve: Curves.linear,
      );
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // reverse: widget.index % 2 == 0,
      scrollDirection: Axis.horizontal,
      controller: scrollController,
      child: Column(
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
                  // height: 120,
                  // width: 100,
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
