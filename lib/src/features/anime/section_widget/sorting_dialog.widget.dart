// ignore_for_file: use_build_context_synchronously

import 'package:anilist/anilist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/provider/sorting.provider.dart';

Future<void> sortingDialog({
  required GMediaType type,
  required WidgetRef ref,
  required BuildContext context,
}) async {
  final sortType = type == GMediaType.ANIME ? animeSorting : mangaSorting;
  final currentSetting = ref.read(sortType);

  Sort order = currentSetting.$2;
  int optionSelected = currentSetting.$1;
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Color(0xff272227).withValues(alpha: 0.92),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Text(
                  'Sort',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                StatefulBuilder(
                  builder: (context, newState) {
                    return SegmentedButton(
                      onSelectionChanged: (v) async {
                        order = v.first;
                        newState(() {});
                      },
                      emptySelectionAllowed: false,
                      multiSelectionEnabled: false,
                      showSelectedIcon: false,
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        visualDensity: const VisualDensity(vertical: -3),
                      ),
                      segments: [
                        ButtonSegment(
                          value: Sort.ASC,
                          label: Text(Sort.ASC.name),
                        ),
                        ButtonSegment(
                          value: Sort.DESC,
                          label: Text(Sort.DESC.name),
                        ),
                      ],
                      selected: {order},
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: CupertinoPicker(
                scrollController: FixedExtentScrollController(
                  initialItem: optionSelected,
                ),
                itemExtent: 50,
                onSelectedItemChanged: (v) {
                  optionSelected = v;
                },
                children: [
                  for (int i = 0; i < sortingSettingOption.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(sortingSettingOption.elementAt(i).$1),
                    ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCEL'),
          ),
          Consumer(
            builder: (context, ref, child) {
              return TextButton(
                onPressed: () async {
                  await ref
                      .read(sortType.notifier)
                      .changeSorting(index: optionSelected, sort: order);
                  Navigator.pop(context);
                },
                child: const Text('APPLY'),
              );
            },
          ),
        ],
      );
    },
  );
}
