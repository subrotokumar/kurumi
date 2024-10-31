import 'dart:async';

import 'package:anilist/anilist.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MovingMediaBanner extends StatefulWidget {
  final GMediaDetailQueryData_Media? data;

  const MovingMediaBanner({super.key, this.data});

  @override
  State<MovingMediaBanner> createState() => _MovingMediaBannerState();
}

class _MovingMediaBannerState extends State<MovingMediaBanner> {
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
        duration: 15.seconds,
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
      scrollDirection: Axis.horizontal,
      controller: scrollController,
      child: CachedNetworkImage(
        height: size.height * 0.30,
        width: size.height * 1.6,
        imageUrl: widget.data?.bannerImage ?? '',
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => CachedNetworkImage(
          imageUrl: widget.data?.coverImage?.extraLarge ??
              widget.data?.coverImage?.large ??
              widget.data?.coverImage?.medium ??
              '',
          width: size.width,
          height: size.height * .30,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
