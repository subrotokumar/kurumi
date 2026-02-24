// ignore_for_file: dead_code, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:kurumi/src/core/assets/assets.dart';
import 'package:logger/logger.dart';

class Col {
  static Color parseHex(String? color, {int? base}) {
    String col = color ?? '#ffffff';
    int colorCode =
        int.parse(col.substring(1, 7), radix: 16) + (base ?? 0xFF000000);
    return Color(colorCode);
  }
}

Widget get LoadingWidget => Center(
  child: Assets.lotties.loadingGifAnimation.lottie(
    width: 150,
    height: 150,
    fit: BoxFit.cover,
  ),
);

showSnackBar(
  BuildContext context,
  String text, {
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Chip(
        avatar: ClipOval(child: Assets.meta.ninja.image()),
        label: Text(text, overflow: TextOverflow.ellipsis),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      duration: duration,
      elevation: 0,
    ),
  );
}

final log = Logger(filter: ProductionFilter());

String validMarkdown(String? markdown) {
  if (markdown == null) return '';
  RegExp regex = RegExp(r'(img\d+)?\(((?:https?://|/).*?)\)');
  String res = markdown.replaceAllMapped(regex, (match) {
    String imageAlt = match.group(1) ?? '';
    String imageUrl = match.group(2) ?? '';

    return '![$imageAlt]($imageUrl)';
  });
  log.d(res.replaceAll('~', '').replaceAll('_', ''));
  return res.replaceAll('~', '').replaceAll('_', '');
}

bool get isTablet {
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  final logicalShortestSide =
      firstView.physicalSize.shortestSide / firstView.devicePixelRatio;
  return logicalShortestSide > 600;
}

bool get isSmartwatch {
  final view = WidgetsBinding.instance.platformDispatcher.views.first;
  final logicalShortestSide =
      view.physicalSize.shortestSide / view.devicePixelRatio;
  return logicalShortestSide < 250;
}

extension BuildContextX on BuildContext {
  (double, double) get getSize {
    final size = MediaQuery.of(this).size;
    return (size.height, size.width);
  }
}

String timeAgoFromUnix(int unixSeconds) {
  final dateTime = DateTime.fromMillisecondsSinceEpoch(unixSeconds * 1000);

  return formatTimeAgo(dateTime);
}

String formatTimeAgo(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inSeconds < 60) {
    return 'just now';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes}m';
  } else if (difference.inHours < 24) {
    return '${difference.inHours}h';
  } else if (difference.inDays < 7) {
    return '${difference.inDays}d';
  } else if (difference.inDays < 30) {
    return '${(difference.inDays / 7).floor()}w';
  } else if (difference.inDays < 365) {
    return '${(difference.inDays / 30).floor()}m';
  } else {
    return '${(difference.inDays / 365).floor()}y';
  }
}

Color colorFromString(
  String input, {
  double saturation = 0.6,
  double lightness = 0.5,
}) {
  final hash = input.hashCode;

  // Convert hash to positive value
  final hue = (hash % 360).abs().toDouble();

  final hsl = HSLColor.fromAHSL(1.0, hue, saturation, lightness);

  return hsl.toColor();
}
