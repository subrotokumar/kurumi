// ignore_for_file: use_build_context_synchronously

import 'package:anilist/anilist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:kurumi/src/core/core.dart';
import 'package:kurumi/src/core/enum/enum.dart';
import 'package:kurumi/src/provider/provider.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class GeneralSettingSection extends StatefulWidget {
  const GeneralSettingSection({super.key});

  @override
  State<GeneralSettingSection> createState() => _GeneralSettingSectionState();
}

class _GeneralSettingSectionState extends State<GeneralSettingSection> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      initiallyExpanded: false,
      tilePadding: const EdgeInsets.only(right: 20),
      trailing: const Icon(Icons.arrow_drop_down, color: Colors.white),
      title: const ListTile(
        leading: Text(
          ' General',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
      children: [
        // Default Discover Page
        Consumer(
          builder: (context, ref, child) {
            final pref = ref.watch(prefProvider);
            return pref.when(
              error: (error, stackTrace) => const Card(),
              loading: () => const Card(),
              data: (value) {
                var v = value.getString('DefaultDiscoverPage') ?? 'ANIME';
                var type = v == 'ANIME' ? GMediaType.ANIME : GMediaType.MANGA;
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    tileColor: const Color(0xff25232a),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    leading: const Text(
                      'Default Discover Page',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    trailing: SegmentedButton(
                      onSelectionChanged: (v) async {
                        await value.setString(
                            'DefaultDiscoverPage', v.first.name);
                        //print('$c ${v.first.name}');
                        setState(() {});
                      },
                      emptySelectionAllowed: false,
                      multiSelectionEnabled: false,
                      showSelectedIcon: false,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        visualDensity: const VisualDensity(vertical: -3),
                      ),
                      segments: const [
                        ButtonSegment(
                          value: GMediaType.ANIME,
                          label: Text('ANIME'),
                        ),
                        ButtonSegment(
                          value: GMediaType.MANGA,
                          label: Text('MANGA'),
                        ),
                      ],
                      selected: {type},
                    ),
                  ),
                );
              },
            );
          },
        ),
        // Default Media Search View
        Consumer(
          builder: (context, ref, child) {
            final pref = ref.watch(sharedfPrefProvider.notifier);
            final view = pref.defaultSearchView;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: const Color(0xff25232a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                leading: const Text(
                  'Default Search View',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailing: SegmentedButton(
                  onSelectionChanged: (v) async {
                    await pref.toggleDefaultSearchView();
                    setState(() {});
                  },
                  emptySelectionAllowed: false,
                  multiSelectionEnabled: false,
                  showSelectedIcon: false,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    visualDensity: const VisualDensity(vertical: -3),
                  ),
                  segments: const [
                    ButtonSegment(
                      value: SearchView.LIST,
                      label: Text('LIST'),
                    ),
                    ButtonSegment(
                      value: SearchView.GRID,
                      label: Text('GRID'),
                    ),
                  ],
                  selected: {view},
                ),
              ),
            );
          },
        ),
        //* Show Score
        Consumer(
          builder: (context, ref, child) {
            final pref = ref.watch(sharedfPrefProvider.notifier);
            var vv = pref.showScore;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: const Color(0xff25232a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                leading: const Text(
                  'Display Score on Medialist',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailing: Switch(
                  value: vv,
                  onChanged: (value) async {
                    await pref.toggleShowScore();
                    setState(() {});
                  },
                ),
              ),
            );
          },
        ),
        //* Transition Animation
        Consumer(
          builder: (context, ref, child) {
            final pref = ref.watch(sharedfPrefProvider.notifier);
            var vv = pref.bannerAnimation;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: const Color(0xff25232a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                leading: const Text(
                  'Banner Animation',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailing: Switch(
                  value: vv,
                  onChanged: (v) async {
                    await pref.toggleBannerAnimation();
                    setState(() {});
                  },
                ),
              ),
            );
          },
        ),
        //* Allow Animation
        Consumer(
          builder: (context, ref, child) {
            final pref = ref.watch(sharedfPrefProvider);
            var vv = pref!.getBool('allowAnimation') ?? false;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: const Color(0xff25232a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                leading: const Text(
                  'Transition Animation',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailing: Switch(
                  value: vv,
                  onChanged: (v) async {
                    await pref.setBool('allowAnimation', v);
                    setState(() {});
                  },
                ),
              ),
            );
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            final prefNotifier = ref.watch(sharedfPrefProvider.notifier);
            var vv = prefNotifier.bottomSearchBar;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: const Color(0xff25232a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                leading: const Text(
                  'Bottom Search Bar',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailing: Switch(
                  value: vv,
                  onChanged: (v) async {
                    await prefNotifier.setBottomSearchBar(v);
                    setState(() {});
                  },
                ),
              ),
            );
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            // final prefNotifier = ref.watch(sharedfPrefProvider.notifier);
            // var vv = prefNotifier.bottomSearchBar;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  ListTile(
                    tileColor: const Color(0xff25232a),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    leading: const Text(
                      'Clear Cache',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () async {
                        final box = await Hive.openBox('anilist_graphql');
                        await box.clear();
                        await Future.delayed(1.seconds);
                        Phoenix.rebirth(context);
                      },
                      icon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(PhosphorIcons.trash()),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
