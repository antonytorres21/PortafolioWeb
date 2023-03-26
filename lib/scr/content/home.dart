import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/scr/widget/response_widget.dart';
import 'package:circular_profile/circular_profile.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class Home extends ResponsiveWidget {
  const Home({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopBuild();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileBuild();
  }
}

class DesktopBuild extends StatelessWidget {
  const DesktopBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * .95,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            //width: width * .3,
            child: Align(
                alignment: Alignment.bottomRight,
                child: WidgetCircularAnimator(
                  size: 250,
                  innerIconsSize: 3,
                  outerIconsSize: 3,
                  innerAnimation: Curves.easeInOutBack,
                  outerAnimation: Curves.easeInOutBack,
                  innerColor: Colors.white,
                  outerColor: Colors.lightBlueAccent,
                  innerAnimationSeconds: 10,
                  outerAnimationSeconds: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[200]),
                    child: const CircularProfile(
                      image: AssetImage(
                        'assets/Yo2.jpg',
                      ),
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 450,
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontFamily: 'Agne',
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  //pause: const Duration(seconds: 3),
                  animatedTexts: [
                    TypewriterAnimatedText("Hi, i'm Roig Antony Torres",
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                    TypewriterAnimatedText('Desing',
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                    TypewriterAnimatedText('Develop',
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                    TypewriterAnimatedText('Test',
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                    TypewriterAnimatedText('Deliver',
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                  ],
                  //onFinished: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileBuild extends StatelessWidget {
  const MobileBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Center(
          child: Column(children: <Widget>[
            WidgetCircularAnimator(
              size: 300,
              innerIconsSize: 3,
              outerIconsSize: 3,
              innerAnimation: Curves.easeInOutBack,
              outerAnimation: Curves.easeInOutBack,
              innerColor: Colors.white,
              outerColor: Colors.lightBlueAccent,
              innerAnimationSeconds: 10,
              outerAnimationSeconds: 10,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[200]),
                child: const CircularProfile(
                  image: AssetImage(
                    'assets/Yo2.jpg',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              width: 350,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                  color: Colors.white,
                ),
                child: Center(
                  child: AnimatedTextKit(
                    repeatForever: true,
                    pause: const Duration(seconds: 1),
                    animatedTexts: [
                      TypewriterAnimatedText("Hi, i'm Roig Antony Torres",
                          curve: Curves.linear,
                          speed: const Duration(milliseconds: 120)),
                      TypewriterAnimatedText('Desing',
                          curve: Curves.linear,
                          speed: const Duration(milliseconds: 120)),
                      TypewriterAnimatedText('Develop',
                          curve: Curves.linear,
                          speed: const Duration(milliseconds: 120)),
                      TypewriterAnimatedText('Test',
                          curve: Curves.linear,
                          speed: const Duration(milliseconds: 120)),
                      TypewriterAnimatedText('Deliver',
                          curve: Curves.linear,
                          speed: const Duration(milliseconds: 120)),
                    ],
                    //onFinished: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            )
          ]),
        ),
      ),
    );
  }
}
