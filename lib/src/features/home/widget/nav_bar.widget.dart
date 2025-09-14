import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icon.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kurumi/src/core/assets/assets.dart';
import 'package:kurumi/src/features/home/homepage.dart';

class NavBar extends ConsumerStatefulWidget {
  const NavBar({required this.pageController, super.key});
  final PageController pageController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavBarState();
}

class _NavBarState extends ConsumerState<NavBar> {
  late SharedPreferences pref;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    pref = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    void changePage(int n) async {
      final current = ref.read(currentIndex);
      if (current != n) {
        ref.read(currentIndex.notifier).update((state) => n);
        if (pref.getBool('allowAnimation') ?? false) {
          widget.pageController.animateToPage(
            n,
            duration: Duration(
              milliseconds: (current - n).abs() > 2 ? 500 : 200,
            ),
            curve: Curves.fastOutSlowIn,
          );
        } else {
          widget.pageController.jumpToPage(n);
        }
        HapticFeedback.lightImpact();
      }
    }

    final current = ref.watch(currentIndex);
    final isNavVisible = ref.watch(navBarVisibilityProvider);
    double width = MediaQuery.of(context).size.width;
    return AnimatedSlide(
      duration: const Duration(milliseconds: 300),
      offset: isNavVisible ? Offset.zero : const Offset(0, 2),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: isNavVisible ? 1 : 0,
        child: Container(
          height: 45,
          width: width - 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 50, 50, 50).withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                splashRadius: 22,
                onPressed: () {
                  changePage(0);
                },
                icon: LineIcon.atom(
                  size: 22,
                  color: current == 0 ? Colors.yellow : Colors.white,
                ),
              ),
              SizedBox(
                height: 44,
                width: 44,
                child: Stack(
                  children: [
                    Positioned(
                      top: -3,
                      child: IconButton(
                        splashRadius: 22,
                        onPressed: () {
                          changePage(1);
                          ref
                              .read(animeTabProvider.notifier)
                              .update((state) => 0);
                        },
                        icon: Assets.icons.icNaruto.image(
                          color: (current == 1) ? Colors.yellow : Colors.white,
                          height: 21,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                splashRadius: 22,
                onPressed: () {
                  changePage(2);
                  ref.read(mangaTabProvider.notifier).update((state) => 0);
                },
                icon: LineIcon.book(
                  color: (current == 2) ? Colors.yellow : Colors.white,
                  size: 24,
                ),
              ),
              IconButton(
                splashRadius: 22,
                onPressed: () {
                  changePage(3);
                },
                icon: Icon(
                  Icons.catching_pokemon_sharp,
                  size: 22,
                  color: current == 3 ? Colors.yellow : Colors.white,
                ),
              ),
              IconButton(
                splashRadius: 22,
                onPressed: () {
                  changePage(4);
                },
                icon: LineIcon.userNinja(
                  color: (current == 4) ? Colors.yellow : Colors.white,
                  size: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
