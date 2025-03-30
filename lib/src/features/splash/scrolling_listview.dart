import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/constants/constants.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';

class ImageListView extends StatefulWidget {
  final bool listReverse;
  final bool directionReverse;
  final bool firstSet;

  final int? duration;
  const ImageListView({
    super.key,
    this.directionReverse = false,
    this.listReverse = false,
    this.firstSet = true,
    this.duration,
  });

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
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
        duration: widget.duration?.seconds ?? 20.seconds,
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
    final (_, width) = context.getSize;
    final splashImage = Assets.images.splash;
    List<String> list = widget.firstSet
        ? [
            splashImage.aot.path,
            splashImage.chainsawMan.path,
            splashImage.cyberpunk.path,
            splashImage.fateZero.path,
            splashImage.fullmetalAlchemist.path,
            splashImage.gintama.path,
            splashImage.hunterXHunter.path,
            splashImage.jujutsuKaisen.path,
          ]
        : [
            splashImage.kaguyaSama.path,
            splashImage.oshiNoKo.path,
            splashImage.spritedAway.path,
            splashImage.spyXFamily.path,
            splashImage.vinlandSaga.path,
            splashImage.voiletEvergarden.path,
            splashImage.yourName.path,
            splashImage.naruto.path,
          ];
    if (widget.listReverse) {
      list = list.reversed.toList();
    }
    final double edge = isTablet ? 250 : 150;
    return Transform.rotate(
      angle: 1.95 * pi,
      child: SizedBox(
        height: edge,
        width: width + 400,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          reverse: widget.directionReverse,
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Container(
              height: edge,
              width: edge - 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: kWhiteColor),
                image: DecorationImage(
                  image: AssetImage(list[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
