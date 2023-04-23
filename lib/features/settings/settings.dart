import 'package:anilist/discover_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/features/profile/function/logout.function.dart';

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
      body: Container(
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
                        icon: Icon(Icons.arrow_back_ios_new_rounded),
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                ExpansionTile(
                  tilePadding: EdgeInsets.only(right: 20),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
                  title: ListTile(
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
                          error: (error, stackTrace) => Card(),
                          loading: () => Card(),
                          data: (value) {
                            var v = value.getString('DefaultDiscoverPage') ??
                                'ANIME';
                            var type = v == 'ANIME'
                                ? GMediaType.ANIME
                                : GMediaType.MANGA;
                            return ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              leading: Text(
                                'Default Discover Page',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              trailing: SegmentedButton(
                                onSelectionChanged: (v) async {
                                  final c = await value.setString(
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
                                  visualDensity: VisualDensity(vertical: -3),
                                ),
                                segments: [
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
                          error: (error, stackTrace) => Card(),
                          loading: () => Card(),
                          data: (value) {
                            var v =
                                value.getString('DefaultSearchView') ?? 'LIST';
                            var type =
                                v == 'LIST' ? SearchView.LIST : SearchView.GRID;
                            return ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              leading: Text(
                                'Default Search View',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              trailing: SegmentedButton(
                                onSelectionChanged: (v) async {
                                  final c = await value.setString(
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
                                  visualDensity: VisualDensity(vertical: -3),
                                ),
                                segments: [
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
                  tilePadding: EdgeInsets.only(right: 20),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
                  title: ListTile(
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
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      onTap: () async {
                        await launchUrlString(
                          'https://anilist.co/settings',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      leading: Text(
                        'Update Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: LineIcon.link(color: Colors.white),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      onTap: () async {
                        await launchUrlString(
                          'https://anilist.co/settings/account',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      leading: Text(
                        'Update Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: LineIcon.link(color: Colors.white),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      onTap: () async {
                        await launchUrlString(
                          'https://anilist.co/settings/import',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      leading: Text(
                        'Import List',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: LineIcon.link(color: Colors.white),
                    ),
                  ],
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  onTap: () async {
                    await launchUrlString(
                      'https://subrotokumar.github.io/privacy-policy/kurumi.html',
                    );
                  },
                  leading: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing: LineIcon.link(color: Colors.white),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
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
                              SizedBox(height: 8),
                              Text(
                                'Your opinion matters to us!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 16),
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
                                child: Text('  Rate us on Play Store  '),
                              ),
                              TextButton(
                                onPressed: () => context.pop(),
                                child: Text('Not Now'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  leading: Text(
                    'Rate Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing: LineIcon.link(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(),
                    Card(),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white70,
                        padding: EdgeInsets.all(0),
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
                        padding: EdgeInsets.all(0),
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
                        padding: EdgeInsets.all(0),
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
                    Card(),
                    Card(),
                  ],
                ),
                SizedBox(height: 16),
                Text('Version 0.1.17 Beta'),
                SizedBox(height: 20),
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
                  label: Text('Log Out'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
