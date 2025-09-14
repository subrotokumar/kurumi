import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MediaLoading extends StatelessWidget {
  const MediaLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Shimmer.fromColors(
        baseColor: Colors.white24,
        highlightColor: Colors.black12,
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.white24,
                highlightColor: Colors.black12,
                child: Container(
                  color: Colors.white,
                  width: width,
                  height: height * 0.30,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0).copyWith(top: 40),
                    child: const Row(
                      children: [
                        Loading(radius: 10, height: 40, width: 40),
                        Spacer(),
                        Loading(radius: 10, height: 40, width: 40),
                      ],
                    ),
                  ),
                  SizedBox(height: height * .2 + 10),
                  const SizedBox(
                    height: 180,
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Loading(height: 180, width: 120, radius: 5),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Loading(height: 30, width: 180, radius: 5),
                            SizedBox(height: 20),
                            Loading(height: 30, width: 150, radius: 5),
                            Spacer(),
                            Row(
                              children: [
                                ClipOval(
                                  child: Loading(
                                    height: 40,
                                    width: 40,
                                    radius: 5,
                                  ),
                                ),
                                SizedBox(width: 30),
                                ClipOval(
                                  child: Loading(
                                    height: 40,
                                    width: 40,
                                    radius: 5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        Loading(radius: 8, height: 30, width: 80),
                        SizedBox(width: 20),
                        Loading(radius: 8, height: 30, width: 80),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Loading(height: 40, width: width - 100),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Loading(height: 150, width: width - 60),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    super.key,
    required this.height,
    required this.width,
    this.radius,
  });
  final double height;
  final double width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: Shimmer.fromColors(
        baseColor: Colors.white.withValues(alpha: 0.3),
        highlightColor: Colors.black38,
        child: Container(height: height, width: width, color: Colors.white),
      ),
    );
  }
}
