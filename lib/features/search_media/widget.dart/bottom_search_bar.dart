import 'package:anilist/medialist_collection.dart';
import 'package:flutter/material.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:kurumi/core/routes/app_router.dart';
import 'package:kurumi/core/themes/app_theme.dart';

class BottomSearchBar extends StatelessWidget {
  const BottomSearchBar({
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
    return Container(
      height: 50,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      decoration: BoxDecoration(
        color: AppTheme.background,
        border:
            const Border(top: BorderSide(color: Colors.white38, width: 0.8)),
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
          IconButton(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -2),
            onPressed: () async {
              if (textEditingController.text.isNotEmpty || true) {
                keyOfDrawer.currentState!.openEndDrawer();
              } else {
                toggleBottmSheet();
              }
            },
            icon: Icon(
              view.first == SearchView.LIST
                  ? Icons.menu
                  : Icons.grid_4x4_rounded,
              size: 25,
              color: mediaType.first == GMediaType.ANIME
                  ? Colors.blue
                  : Colors.green,
            ),
          ),
          const SizedBox(width: 6),
        ],
      ),
    );
  }
}
