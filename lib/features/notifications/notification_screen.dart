import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:kurumi/features/activity/activity_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: DefaultTabController(
            length: 7,
            initialIndex: 1,
            child: Stack(
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/gifs/kakashi.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.black87,
                        Colors.black87,
                        Colors.black
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ACTIVITY',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Consumer(builder: (context, ref, child) {
                            return IconButton(
                              onPressed: () {
                                ref.read(ActivityPage).animateToPage(
                                      1,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.linear,
                                    );
                              },
                              icon: Icon(Icons.schedule_send_outlined),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
