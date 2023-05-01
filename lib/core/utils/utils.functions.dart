// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Col {
  static Color parseHex(String? color, {int? base}) {
    String col = color ?? '#ffffff';
    int colorCode =
        int.parse(col.substring(1, 7), radix: 16) + (base ?? 0xFF000000);
    return Color(colorCode);
  }
}

Widget get LoadingWidget => false
    ? Center(
        child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator(
            color: Colors.yellow,
          ),
        ),
      )
    : Center(
        child: LottieBuilder.asset(
          'assets/lotties/loading-gif-animation.json',
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      );
