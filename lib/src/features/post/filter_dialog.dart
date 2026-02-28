import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/features/post/filter_state.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PostFilterDialog extends ConsumerStatefulWidget {
  final PostFilterState state;
  const PostFilterDialog({super.key, required this.state});

  @override
  ConsumerState<PostFilterDialog> createState() => PostFilterDialogState();
}

class PostFilterDialogState extends ConsumerState<PostFilterDialog> {
  late PostFilterState state;

  @override
  void initState() {
    state = widget.state;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            PhosphorIcons.slidersHorizontal(),
            size: 40,
            color: Colors.orange,
          ),
          Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...['Following', 'Global'].map(
                (e) => GestureDetector(
                  onTap: () {
                    if (e == state.view) return;
                    setState(() => state = state.copyWith(view: e));
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: state.view == e
                          ? Colors.blue.shade400
                          : Colors.white10,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      e,
                      style: Poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...['All', 'Text Status', 'List Progress'].map(
                (e) => GestureDetector(
                  onTap: () {
                    if (e == state.activity) return;
                    setState(() => state = state.copyWith(activity: e));
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: state.activity == e
                          ? Colors.green.shade400
                          : Colors.white10,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      e,
                      style: Poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap(30),
          FilledButton(
            style: FilledButton.styleFrom(
              minimumSize: Size.fromHeight(45),
              backgroundColor: Colors.indigo,
            ),
            onPressed: () {
              context.pop(state);
            },
            child: Text(
              'Apply',
              style: Poppins(
                color: Colors.grey.shade100,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
