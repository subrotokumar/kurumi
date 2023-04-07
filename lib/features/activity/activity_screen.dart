import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/features/airing_schedule/schedule_screen.dart';
import 'package:kurumi/features/notifications/notification_screen.dart';

final ActivityPage =
    StateProvider<PageController>((ref) => PageController(initialPage: 0));

class ActivityScreen extends ConsumerWidget {
  ActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final controller = ref.watch(ActivityPage);
    return Container(
      width: size.width,
      height: size.height,
      child: true
          ? ScheduleScreen()
          : PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                NotificationScreen(),
                ScheduleScreen(),
              ],
            ),
    );
  }
}
