import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/core/core.dart';
import "package:kurumi/src/features/splash/scrolling_listview.dart";
import 'package:kurumi/src/provider/init.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  initState() {
    super.initState();
    // initialize();
  }

  Future<void> initialize() async {
    if (!ref.read(initStatus)) {
      await ref.read(initStatus.notifier).initialize();
    }
    timer = Timer(
      3500.milliseconds,
      () {
        if (ref.read(initStatus)) {
          context.go('/home');
        } else {
          log.i('login');
          context.goNamed(AppRouteConstant.LoginScreen.name);
        }
      },
    );
  }

  final colors = [
    kBlackColor.withOpacity(0.8),
    kBlackColor.withOpacity(0.6),
    kBlackColor.withOpacity(0.4),
    kBlackColor.withOpacity(0.1),
    kBlackColor.withOpacity(0.4),
    kBlackColor.withOpacity(0.6),
    kBlackColor.withOpacity(0.8),
  ];
  @override
  Widget build(BuildContext context) {
    final (height, _) = context.getSize;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: OrientationBuilder(builder: (context, orientation) {
                return Visibility(
                  visible: !isTablet || orientation == Orientation.portrait,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: isTablet ? height + 200 : null,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ImageListView(
                              duration: 18,
                              firstSet: true,
                              directionReverse: true,
                            ),
                            ImageListView(
                              duration: 14,
                              firstSet: false,
                              directionReverse: false,
                            ),
                            ImageListView(
                              duration: 10,
                              firstSet: true,
                              directionReverse: true,
                              listReverse: true,
                            ),
                            ImageListView(
                              duration: 10,
                              firstSet: false,
                              directionReverse: false,
                              listReverse: true,
                            ),
                            ImageListView(
                              duration: 14,
                              firstSet: true,
                              directionReverse: true,
                            ),
                            ImageListView(
                              duration: 18,
                              firstSet: false,
                              directionReverse: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: colors,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: colors,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  'Kurumi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: isTablet ? 35 : 24,
                  ),
                ).animate(onComplete: (c) => c.repeat()).shimmer(
                  duration: 4.seconds,
                  colors: [
                    kWhiteColor,
                    Colors.grey,
                    kWhiteColor,
                  ],
                ),
              ),
            ),
            Center(
              child: Assets.lotties.ghibliTribute.lottie(
                width: isTablet ? 500 : 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
