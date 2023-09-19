import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import '../core/routes/router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LottieBuilder.asset(
              'assets/lotties/ufo.json',
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.indigo,
              child: const Text(
                '404',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                  letterSpacing: 3,
                ),
              ),
            ),
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.indigo,
              child: const Text(
                'NOT FOUND',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () =>
                  context.goNamed(AppRouteConstant.HomeScreen.name),
              child: const Text('GO TO HOME'),
            )
          ],
        ),
      ),
    );
  }
}
