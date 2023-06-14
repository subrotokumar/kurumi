// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/features/airing_schedule/schedule_screen.dart';
import 'package:kurumi/features/notifications/notification_screen.dart';

final StateProvider<PageController> ActivityPage =
    StateProvider<PageController>((ref) => PageController(initialPage: 0));

class ActivityScreen extends ConsumerStatefulWidget {
  const ActivityScreen({super.key, this.page});
  final int? page;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends ConsumerState<ActivityScreen> {
  late PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: widget.page ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          NotificationScreen(controller),
          ScheduleScreen(controller),
        ],
      ),
    );
  }
}
