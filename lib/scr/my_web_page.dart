// ignore_for_file: depend_on_referenced_packages, unused_import, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portafolio/scr/content/about_me.dart';
import 'package:portafolio/scr/content/contact_to_me.dart';
import 'package:portafolio/scr/content/projects.dart';
import 'package:portafolio/scr/content/skills.dart';
import 'package:portafolio/scr/content/home.dart';
import 'package:portafolio/scr/navigation_bar/nav_bar.dart';

final homeKey = GlobalKey();
final aboutMeKey = GlobalKey();
final skillsKey = GlobalKey();
final projectsKey = GlobalKey();
final contactKey = GlobalKey();

final currentPageProvider = StateProvider<GlobalKey>((_) => homeKey);

final scrolledProvider = StateProvider<bool>((_) => false);

class MyWebPage extends HookConsumerWidget {
  const MyWebPage({super.key});

  void onScroll(ScrollController controller, WidgetRef ref) {
    final isScrolled = ref.read(scrolledProvider);
    if (controller.position.pixels > 5 && !isScrolled) {
      ref.read(scrolledProvider.notifier).state = true;
    } else if (controller.position.pixels <= 5 && isScrolled) {
      ref.read(scrolledProvider.notifier).state = false;
    }
  }

  void scrollTo(GlobalKey key) => Scrollable.ensureVisible(key.currentContext!,
      duration: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useScrollController();

    useEffect(() {
      _controller.addListener(() => onScroll(_controller, ref));
      return _controller.dispose;
    }, [_controller]);
    double width = MediaQuery.of(context).size.width;
    double maxWidth = width > 1200 ? 1200 : width;

    ref
        .watch(currentPageProvider.notifier)
        .addListener(scrollTo, fireImmediately: false);

    /*  */
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
      body: Center(
        child: SizedBox(
          width: maxWidth,
          child: Column(
            children: <Widget>[
              const NavBar(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _controller,
                  child: Column(
                    children: <Widget>[
                      Home(key: homeKey),
                      AboutMe(
                        key: aboutMeKey,
                      ),
                      Skills(
                        key: skillsKey,
                      ),
                      Projects(
                        key: projectsKey,
                      ),
                      ContactToMe(
                        key: contactKey,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
