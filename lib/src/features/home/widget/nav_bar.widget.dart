import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kurumi/src/features/home/homepage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

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

  Future<void> init() async {
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
    final icons = [
      PhosphorIcons.house,
      PhosphorIcons.cat,
      PhosphorIcons.notebook,
      PhosphorIcons.bell,
      PhosphorIcons.user,
    ];
    return AnimatedSlide(
      duration: const Duration(milliseconds: 300),
      offset: isNavVisible ? Offset.zero : const Offset(0, 2),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: isNavVisible ? 1 : 0,
        child: SizedBox(
          width: width - 60,
          child: LiquidGlassLayer(
            settings: LiquidGlassSettings(blur: 10, glassColor: Colors.white10),
            child: LiquidGlass(
              shape: LiquidRoundedSuperellipse(borderRadius: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Builder(
                      builder: (context) {
                        final isActive = current == i;
                        final iconBackgroud = isActive
                            ? Colors.white.withValues(alpha: 0.5)
                            : Colors.transparent;
                        return IconButton(
                          splashRadius: 25,
                          onPressed: () {
                            changePage(i);
                          },
                          style: IconButton.styleFrom(
                            backgroundColor: iconBackgroud,
                            fixedSize: Size(60, 30),
                          ),
                          iconSize: 26,
                          isSelected: isActive,
                          selectedIcon: Icon(
                            icons.elementAt(i)(PhosphorIconsStyle.fill),
                          ).animate().elevation(),
                          color: Colors.white,
                          icon: Icon(icons.elementAt(i)()),
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
