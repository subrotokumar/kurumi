import 'package:anilist/discover_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/themes/app_theme.dart';
import 'package:kurumi/features/profile/function/logout.function.dart';
import 'package:kurumi/provider/provider.dart';

enum SearchView { LIST, GRID }

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => context.pop(),
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),
                      const Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(right: 20),
                  trailing:
                      const Icon(Icons.arrow_drop_down, color: Colors.white),
                  title: const ListTile(
                    leading: Text(
                      ' General',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
                            var v = value.getString('DefaultDiscoverPage') ??
                                'ANIME';
                            var type = v == 'ANIME'
                                ? GMediaType.ANIME
                                : GMediaType.MANGA;
                            return ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                                  visualDensity:
                                      const VisualDensity(vertical: -3),
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
                            var v =
                                value.getString('DefaultSearchView') ?? 'LIST';
                            var type =
                                v == 'LIST' ? SearchView.LIST : SearchView.GRID;
                            return ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                                  visualDensity:
                                      const VisualDensity(vertical: -3),
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
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),

                /// Account Setting
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(right: 20),
                  trailing:
                      const Icon(Icons.arrow_drop_down, color: Colors.white),
                  title: const ListTile(
                    leading: Text(
                      ' Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  children: [
                    ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      onTap: () async {
                        await launchUrlString(
                          'https://anilist.co/settings',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      leading: const Text(
                        'Update Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      trailing: LineIcon.link(color: Colors.white),
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      onTap: () async {
                        await launchUrlString(
                          'https://anilist.co/settings/account',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      leading: const Text(
                        'Update Account',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      trailing: LineIcon.link(color: Colors.white),
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      onTap: () async {
                        await launchUrlString(
                          'https://anilist.co/settings/media',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      leading: const Text(
                        'Anime and Manga',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      trailing: LineIcon.link(color: Colors.white),
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      onTap: () async {
                        await launchUrlString(
                          'https://anilist.co/settings/import',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      leading: const Text(
                        'Import List',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      trailing: LineIcon.link(color: Colors.white),
                    ),
                  ],
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  onTap: () async {
                    await launchUrlString(
                      'https://subrotokumar.github.io/privacy-policy/kurumi.html',
                    );
                  },
                  leading: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing: LineIcon.link(color: Colors.white),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/meta/ninja.png',
                                height: 150,
                                width: 150,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Your opinion matters to us!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 16),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white60,
                                  foregroundColor: AppTheme.secondaryColor,
                                ),
                                onPressed: () {
                                  launchUrlString(
                                    'https://play.google.com/store/apps/details?id=com.subrotokumar.kurumi',
                                    mode: LaunchMode
                                        .externalNonBrowserApplication,
                                  );
                                },
                                child: const Text('  Rate us on Play Store  '),
                              ),
                              TextButton(
                                onPressed: () => context.pop(),
                                child: const Text('Not Now'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  leading: const Text(
                    'Rate Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing: LineIcon.link(color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Want to support Kurumi\'s Creator ?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => launchUrlString(
                      'https://www.buymeacoffee.com/subrotokumar',
                      mode: LaunchMode.externalApplication,
                    ),
                    child: Image.asset(
                      'assets/images/bmc.png',
                      width: size.width * 0.4,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Card(),
                    const Card(),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white70,
                        padding: const EdgeInsets.all(0),
                      ),
                      splashRadius: 1,
                      onPressed: () {
                        launchUrlString(
                          'https://www.github.com/subrotokumar',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: LineIcon.github(
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white70,
                        padding: const EdgeInsets.all(0),
                      ),
                      splashRadius: 1,
                      onPressed: () => launchUrlString(
                        'https://www.twitter.com/isubrotokumar',
                        mode: LaunchMode.externalApplication,
                      ),
                      icon: LineIcon.twitter(
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white70,
                        padding: const EdgeInsets.all(0),
                      ),
                      splashRadius: 1,
                      onPressed: () => launchUrlString(
                        'https://play.google.com/store/apps/details?id=com.subrotokumar.kurumi',
                        mode: LaunchMode.externalApplication,
                      ),
                      icon: LineIcon.googlePlay(
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    const Card(),
                    const Card(),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('Version 0.1.21 Beta'),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white30,
                    foregroundColor: Colors.white,
                  ),
                  icon: LineIcon.alternateSignOut(),
                  onPressed: () async {
                    logout();
                    context.goNamed(AppRouteConstant.LoginScreen.name);
                  },
                  label: const Text('Log Out'),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
