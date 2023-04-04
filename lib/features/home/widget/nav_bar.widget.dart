import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/config/app_theme.dart';
import 'package:line_icons/line_icon.dart';

import 'package:kurumi/features/home/homepage.dart';

class NavBar extends ConsumerWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void changePage(int n) {
      if (ref.read(currentIndex) != n) {
        ref.read(currentIndex.notifier).update((state) => n);
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
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 50, 50, 50).withOpacity(0.9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                            changePage(0);
                            ref
                                .read(animeTabProvider.notifier)
                                .update((state) => 0);
                          },
                          icon: Image.asset(
                            'assets/icons/ic_naruto.png',
                            color:
                                (current == 0) ? Colors.yellow : Colors.white,
                            height: 21,
                          )),
                    ),
                  ],
                ),
              ),
              IconButton(
                splashRadius: 22,
                onPressed: () {
                  changePage(1);
                  ref.read(mangaTabProvider.notifier).update((state) => 0);
                },
                icon: LineIcon.book(
                  color: (current == 1) ? Colors.yellow : Colors.white,
                  size: 24,
                ),
              ),
              IconButton(
                splashRadius: 22,
                onPressed: () {
                  changePage(2);
                },
                icon: LineIcon.atom(
                  size: 22,
                  color: current == 2 ? Colors.yellow : Colors.white,
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
