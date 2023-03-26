// ignore_for_file: unused_local_variable, depend_on_referenced_packages, dead_code

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavBarButton extends HookConsumerWidget {
  const NavBarButton({super.key, required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = useState<Color>(Colors.white);
    final focus = useState<bool>(false);

    return MouseRegion(
      onEnter: (value) {
        textColor.value = Colors.blue;
        focus.value = true;
      },
      onExit: (value) {
        textColor.value = Colors.white;
        focus.value = false;
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: !focus.value
                ? Text(
                    text,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: textColor.value,
                    ),
                  )
                : DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: textColor.value,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText(text),
                      ],
                      onTap: onTap,
                      repeatForever: focus.value,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
