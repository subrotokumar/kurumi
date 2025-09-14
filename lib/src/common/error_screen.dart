import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/routes/router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            SizedBox(
              height: 400,
              child: Stack(
                children: [
                  Assets.lotties.ufo.lottie(fit: BoxFit.contain),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 100),
                        Shimmer.fromColors(
                          baseColor: Colors.white.withValues(alpha: 0.8),
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
                          baseColor: Colors.white.withValues(alpha: 0.8),
                          highlightColor: Colors.indigo,
                          child: const Text(
                            'NOT FOUND',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: CircleAvatar(
                radius: 30,
                child: IconButton(
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    } else {
                      context.goNamed(AppRouteConstant.HomeScreen.name);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
