import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/src/core/enum/enum.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
    required this.textEditingController,
    required this.setState,
    required this.mediaType,
    required this.view,
    required this.toggleBottmSheet,
    required this.filterCount,
  });
  final TextEditingController textEditingController;
  final void Function(void Function()) setState;
  final VoidCallback toggleBottmSheet;
  final Set<GMediaType> mediaType;
  final Set<SearchView> view;
  final int filterCount;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: AppTheme.background,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              padding: const EdgeInsets.all(0),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () => context.pop(),
              color: Colors.grey,
            ),
            Flexible(
              child: TextField(
                controller: textEditingController,
                onSubmitted: (v) => setState(() {}),
                decoration: InputDecoration(
                  hintText: 'What are you looking for?',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  isDense: false,
                  suffixIcon: IconButton(
                    onPressed: () {
                      textEditingController.value = TextEditingValue(
                        text: '',
                        selection: TextSelection.fromPosition(
                          const TextPosition(offset: 0),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.backspace_outlined,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () => context.pushNamed(
                AppRouteConstant.SearchFilterScreen.name,
                extra: (),
              ),
              child: IconButton(
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -2),
                onPressed: () => toggleBottmSheet(),
                icon: Icon(
                  switch (filterCount) {
                    1 => Icons.filter_1_rounded,
                    2 => Icons.filter_2_rounded,
                    3 => Icons.filter_3_rounded,
                    4 => Icons.filter_4_rounded,
                    _ => view.first == SearchView.LIST
                        ? Icons.menu
                        : Icons.grid_4x4_rounded,
                  },
                  size: 25,
                  color: mediaType.first == GMediaType.ANIME
                      ? Colors.blue
                      : Colors.green,
                ),
              ),
            ),
            const SizedBox(width: 6),
          ],
        ),
      ),
    );
  }
}
