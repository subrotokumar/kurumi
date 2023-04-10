import 'package:anilist/discover_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/provider/provider.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/features/profile/function/logout.function.dart';

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
                  Consumer(
                    builder: (context, ref, child) {
                      final pref = ref.watch(prefProvider);
                      return pref.when(
                        error: (error, stackTrace) => Card(),
                        loading: () => Card(),
                        data: (value) {
                          var v =
                              value.getString('DefaultDiscoverPage') ?? 'ANIME';
                          var type = v == 'ANIME'
                              ? GMediaType.ANIME
                              : GMediaType.MANGA;
                          return ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 30),
                            leading: Text(
                              'Default Discover Page',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            trailing: SegmentedButton(
                              onSelectionChanged: (v) async {
                                final c = await value.setString(
                                    'DefaultDiscoverPage', v.first.name);
                                print('$c ${v.first.name}');
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
                ],
              ),

              // ListTile(
              //   contentPadding: EdgeInsets.symmetric(horizontal: 20),
              //   onTap: () {},
              //   leading: Text(
              //     'About',
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 18,
              //     ),
              //   ),
              //   trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
              // ),
              // Consumer(builder: (context, ref, child) {
              //   return ListTile(
              //     contentPadding: EdgeInsets.symmetric(horizontal: 20),
              //     onTap: () async {
              //       await clearMediaListCache(ref);
              //     },
              //     leading: Text(
              //       'Clear Cache',
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 18,
              //       ),
              //     ),
              //     trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
              //   );
              // }),
              // Consumer(
              //   builder: (context, ref, child) {
              //     final client = ref.watch(clientProvider);
              //     return ListTile(
              //       contentPadding: EdgeInsets.symmetric(horizontal: 20),
              //       onTap: () async {
              //         final b = Hive.box('anilist_graphql');
              //         await b.clear();
              //         context.goNamed(AppRouteConstant.HomeScreen.name);
              //       },
              //       leading: Text(
              //         'Clear',
              //         style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 18,
              //         ),
              //       ),
              //     );
              //   },
              // ),

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
                  launchUrlString(
                    'https://play.google.com/store/apps/details?id=com.subrotokumar.kurumi',
                    mode: LaunchMode.externalNonBrowserApplication,
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
                  // IconButton(
                  //   style: IconButton.styleFrom(
                  //     backgroundColor: Colors.white70,
                  //     padding: EdgeInsets.all(0),
                  //   ),
                  //   splashRadius: 1,
                  //   onPressed: () => launchUrlString(
                  //     'https://www.linkedin.com/in/kumarsubroto',
                  //     mode: LaunchMode.externalApplication,
                  //   ),
                  //   icon: LineIcon.linkedinIn(
                  //     color: Colors.black,
                  //     size: 30,
                  //   ),
                  // ),
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
              Text('Version 0.1.12 Beta'),
              Spacer(),
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
    );
  }
}
