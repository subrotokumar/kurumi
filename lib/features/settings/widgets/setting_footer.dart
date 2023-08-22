import 'package:flutter/material.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/features/profile/function/logout.function.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingFooterSection extends StatelessWidget {
  const SettingFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Want to support Kurumi\'s Creator ?',
            style: TextStyle(
              fontWeight: FontWeight.w400,
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
                  'https://www.github.com/subrotokumar/kurumi',
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
        const Text('Version 1.5.0 Beta'),
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
      ],
    );
  }
}
