// ignore_for_file: dead_code, non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kurumi/src/core/assets/assets.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:gal/gal.dart';
import 'package:share_plus/share_plus.dart';

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

Future<void> saveImageToGallery(BuildContext context, String url) async {
  try {
    bool hasAccess = await Gal.hasAccess();
    if (!hasAccess) await Gal.requestAccess();
    hasAccess = await Gal.hasAccess(toAlbum: true);
    if (!hasAccess) await Gal.requestAccess(toAlbum: true);
    final ext = url.split('.').last.split('?').first;
    final Directory tempDir = await getTemporaryDirectory();
    final imagePath =
        '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.$ext';
    await Dio().download(url, imagePath);
    await Gal.putImage(imagePath);

    if (context.mounted) {
      showSnackBar(context, "Saved to gallery");
    }
  } catch (e) {
    if (context.mounted) {
      showSnackBar(context, "Failed to save image");
    }
  }
}

Future<void> shareImage(BuildContext context, String url) async {
  try {
    bool hasAccess = await Gal.hasAccess();
    if (!hasAccess) await Gal.requestAccess();
    hasAccess = await Gal.hasAccess(toAlbum: true);
    if (!hasAccess) await Gal.requestAccess(toAlbum: true);
    final ext = url.split('.').last.split('?').first;
    final Directory tempDir = await getTemporaryDirectory();
    final imagePath =
        '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.$ext';
    await Dio().download(url, imagePath);
    SharePlus.instance.share(ShareParams(files: [XFile(imagePath)]));
  } catch (e) {
    if (context.mounted) {
      showSnackBar(context, "Failed to share image");
    }
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
