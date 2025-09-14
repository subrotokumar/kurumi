// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';
import 'package:kurumi/src/features/settings/widgets/account_setting_section.dart';
import 'package:kurumi/src/features/settings/widgets/general_setting_section.dart';
import 'package:kurumi/src/features/settings/widgets/setting_footer.dart';
import 'package:kurumi/src/features/webview/webview.dart';

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

                ///* General Setting Section
                const GeneralSettingSection(),

                /// Account Setting
                const AccountSettingSection(),
                Padding(
                  padding: const EdgeInsets.all(
                    10.0,
                  ).copyWith(bottom: 10, top: 20),
                  child: GridView(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: size.width > 500 ? 6 : 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          foregroundColor: Colors.white70,
                        ),
                        onPressed: () async {
                          const url =
                              'https://subrotokumar.github.io/privacy-policy/kurumi.html';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const InAppWebview(title: 'Kurumi', url: url),
                            ),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Privacy Policy'),
                            LineIcon.link(color: Colors.white),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          foregroundColor: Colors.white.withValues(alpha: 0.9),
                        ),
                        onPressed: () async => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InAppWebview(
                              title: 'Change Log',
                              url:
                                  'https://subrotokumar.github.io/kurumi/changelog.html',
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Change Log'),
                            LineIcon.link(color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: ListTile(
                    tileColor: const Color(0xff25232a),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    onTap: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Assets.meta.ninja.image(
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
                                  child: const Text(
                                    '  Rate us on Play Store  ',
                                  ),
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
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.star_rate_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SettingFooterSection(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
