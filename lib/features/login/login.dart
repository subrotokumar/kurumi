import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/features/login/functions/oauth.function.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: mediaQueryData.size.height,
        width: mediaQueryData.size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gifs/splash.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AnimatedSlide(
              duration: const Duration(milliseconds: 300),
              offset: !isVisible ? Offset.zero : const Offset(0, 2),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: isVisible ? 0 : 1,
                child: Card(
                  elevation: 20,
                  margin: const EdgeInsets.all(0),
                  color: isVisible
                      ? Colors.transparent
                      : Colors.black.withOpacity(0.2),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Kurumi',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Powered by AniList',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromHeight(50),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue.withOpacity(0.7),
                          ),
                          onPressed: () async {
                            setState(() {
                              isVisible = true;
                            });
                            await Future.delayed(
                                const Duration(milliseconds: 300));
                            // ignore: use_build_context_synchronously
                            await showLoginDialog(context);
                            setState(() {
                              isVisible = false;
                            });
                          },
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  shadows: [Shadow(color: Colors.grey)],
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 30,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showLoginDialog(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.black38,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
          side: BorderSide(color: Colors.grey)),
      elevation: 50,
      useSafeArea: true,
      context: context,
      builder: (ctx) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login with AniList',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.greenAccent,
                  shadows: [Shadow(color: Colors.grey)],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  text: 'You\'ll be redirected to ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    shadows: [Shadow(color: Colors.grey)],
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'anilist.co',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent),
                    ),
                    TextSpan(
                        text:
                            ' to login/resister. Make sure the URL is anilist.co before entering your email and password.'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size.fromWidth(120),
                      foregroundColor: const Color(0xfff7f2f9),
                      backgroundColor: Colors.transparent,
                      minimumSize: const Size(100, 50),
                      side: const BorderSide(
                        color: Color(0xfff7f2f9),
                      ),
                    ),
                    onPressed: () async {
                      launchUrlString('https://anilist.co/signup');
                    },
                    child: const Text('Register'),
                  ),
                  const SizedBox(width: 20),
                  Consumer(
                    builder: (context, ref, child) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(120),
                        backgroundColor: const Color(0xfff7f2f9),
                        foregroundColor: Colors.indigo,
                        minimumSize: const Size(100, 50),
                      ),
                      onPressed: () async {
                        String? accessToken = await Oauth().auth();
                        if (accessToken != null) {
                          AndroidOptions getAndroidOptions() =>
                              const AndroidOptions(
                                encryptedSharedPreferences: true,
                              );
                          FlutterSecureStorage flutterSecureStorage =
                              const FlutterSecureStorage();
                          await flutterSecureStorage.deleteAll(
                              aOptions: getAndroidOptions());
                          await flutterSecureStorage.write(
                            key: 'AniListAccessToken',
                            value: accessToken,
                            aOptions: getAndroidOptions(),
                          );
                          final pref = await SharedPreferences.getInstance();
                          await pref.setBool('isLoggedIn', true);
                          // ignore: use_build_context_synchronously
                          context.pushReplacementNamed(
                              AppRouteConstant.SplashScreen.name);
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
