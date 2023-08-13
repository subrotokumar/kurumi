import 'package:anilist/userid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:kurumi/provider/provider.dart';

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
            final pref = ref.watch(prefProvider);
            return pref.when(
              error: (error, stackTrace) => const Card(),
              loading: () => const Card(),
              data: (value) {
                var v = value.getString('DefaultSearchView') ?? 'LIST';
                var type = v == 'LIST' ? SearchView.LIST : SearchView.GRID;
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        await value.setString(
                            'DefaultSearchView', v.first.name);
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
                      selected: {type},
                    ),
                  ),
                );
              },
            );
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            final pref = ref.watch(sharedfPrefProvider);
            var vv = pref!.getBool('animation') ?? true;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: const Color(0xff25232a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                leading: const Text(
                  'Allow Animation (Experimental)',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailing: Switch(
                  value: vv,
                  onChanged: (v) async {
                    await pref.setBool('animation', v);
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
        const SizedBox(height: 20),
      ],
    );
  }
}
