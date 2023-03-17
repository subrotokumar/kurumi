import 'package:flutter/material.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/presentation/profile/function/logout.function.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                onTap: () {},
                leading: Text(
                  'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                onTap: () {},
                leading: Text(
                  'General',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                onTap: () {},
                leading: Text(
                  'About',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                onTap: () async {},
                leading: Text(
                  'Play Store',
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
                      'https://www.linkedin.com/in/kumarsubroto',
                      mode: LaunchMode.externalApplication,
                    ),
                    icon: LineIcon.linkedinIn(
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
                      'https://www.linkedin.com/in/kumarsubroto',
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
              Text('Version 0.1.0 Beta'),
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
