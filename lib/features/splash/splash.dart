import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/constants/asset.dart';
import 'package:kurumi/core/routes/router.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/provider/init.dart';
import 'package:lottie/lottie.dart';

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
    initialize();
  }

  Future<void> initialize() async {
    if (!ref.read(initStatus)) {
      await ref.read(initStatus.notifier).initialize();
    }
    timer = Timer(
      const Duration(seconds: 0),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Card(),
            LottieBuilder.asset(
              LottieAssets.ghibli,
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Kurumi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
