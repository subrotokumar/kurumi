import 'package:anilist/medialist_collection.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:kurumi/core/routes/app_router.dart';
import 'package:kurumi/core/themes/app_theme.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
    required this.keyOfDrawer,
    required this.textEditingController,
    required this.setState,
    required this.mediaType,
    required this.view,
    required this.toggleBottmSheet,
  });
  final GlobalKey<ScaffoldState> keyOfDrawer;
  final TextEditingController textEditingController;
  final void Function(void Function()) setState;
  final VoidCallback toggleBottmSheet;
  final Set<GMediaType> mediaType;
  final Set<SearchView> view;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppTheme.secondaryColor,
      scrolledUnderElevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.all(0),
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
      actions: [
        IconButton(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -2),
          onPressed: () async {
            keyOfDrawer.currentState!.openEndDrawer();
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: mediaType.first == GMediaType.ANIME
                ? Colors.blue
                : Colors.green,
            side: BorderSide(
              color: mediaType.first == GMediaType.ANIME
                  ? Colors.blue
                  : Colors.green,
            ),
          ),
          icon: Icon(
            view.first == SearchView.LIST ? Icons.menu : Icons.grid_4x4_rounded,
            size: 20,
          ),
        ),
        const SizedBox(width: 16),
      ],
      title: TextField(
        controller: textEditingController,
        onSubmitted: (v) => setState(() {}),
        decoration: InputDecoration(
          hintText: 'What are you looking for?',
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
              icon: const Icon(Icons.clear)),
        ),
      ),
    );
  }
}
