// ignore_for_file: depend_on_referenced_packages, unused_import, unused_local_variable

import 'package:flutter/material.dart'; //
import 'package:flutter_hooks/flutter_hooks.dart'; //
import 'package:hooks_riverpod/hooks_riverpod.dart'; //
import 'package:portafolio/scr/my_web_page.dart'; //
import 'package:portafolio/scr/navigation_bar/nav_bar_button.dart'; //
import 'package:portafolio/scr/widget/response_widget.dart'; //

class NavBar extends ResponsiveWidget {
  const NavBar({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileNavBar();
  }
}

class DesktopNavBar extends HookConsumerWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    final navBarColor = isScrolled
        ? const Color.fromRGBO(36, 36, 36, 0.95)
        : const Color.fromRGBO(36, 36, 36, 1);
    return Container(
      color: navBarColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/logo1.png",
              height: 60,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Roig Torres",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Expanded(child: Container()),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = homeKey,
              text: 'Home',
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = aboutMeKey,
              text: 'About Me',
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = skillsKey,
              text: 'Skills',
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = projectsKey,
              text: 'Projects',
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = contactKey,
              text: 'Contact',
            ),
          ], //Image.asset('assets/logo2.png')
        ),
      ),
    );
  }
}

class MobileNavBar extends HookConsumerWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);
    final isScrolled = ref.watch(scrolledProvider);
    final navBarColor = isScrolled
        ? const Color.fromRGBO(36, 36, 36, 0.95)
        : const Color.fromRGBO(36, 36, 36, 1);
    return Stack(
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.only(top: 100.0),
          duration: const Duration(milliseconds: 350),
          curve: Curves.ease,
          height: containerHeight.value,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                NavBarButton(
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = homeKey;
                    containerHeight.value = 0;
                  },
                  text: 'Home',
                ),
                NavBarButton(
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = aboutMeKey;
                    containerHeight.value = 0;
                  },
                  text: 'About Me',
                ),
                NavBarButton(
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = skillsKey;
                    containerHeight.value = 0;
                  },
                  text: 'Skills',
                ),
                NavBarButton(
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = projectsKey;
                    containerHeight.value = 0;
                  },
                  text: 'Projects',
                ),
                NavBarButton(
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = contactKey;
                    containerHeight.value = 0;
                  },
                  text: 'Contact',
                ),
              ],
            ),
          ),
        ),
        Container(
          color: navBarColor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/logo1.png",
                  height: 60,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Roig Torres",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 30),
                ),
                Expanded(child: Container()),
                Material(
                  child: InkWell(
                    splashColor: Colors.white60,
                    onTap: () {
                      final height = containerHeight.value > 0 ? 0.0 : 240.0;
                      containerHeight.value = height;
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black54,
                    ),
                  ),
                )
              ], //Image.asset('assets/logo2.png')
            ),
          ),
        )
      ],
    );
  }
}
