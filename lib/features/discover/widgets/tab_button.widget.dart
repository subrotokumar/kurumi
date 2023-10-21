import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/provider/provider.dart';

class TabControllerWidget extends ConsumerWidget {
  const TabControllerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(discoverTabProvider);
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => ref.watch(discoverTabProvider.notifier).state =
                GMediaType.ANIME,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'ANIME',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                Visibility(
                  visible: type == GMediaType.ANIME,
                  child: Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () =>
                ref.read(discoverTabProvider.notifier).state = GMediaType.MANGA,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'MANGA',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                Visibility(
                  visible: type == GMediaType.MANGA,
                  child: Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
