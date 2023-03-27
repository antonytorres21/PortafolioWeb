// ignore_for_file: constant_identifier_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/scr/widget/response_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

const LinkedinURL =
    'https://www.linkedin.com/in/antony-torres-l%C3%B3pez-99244b18a/';

const GitHunURL = 'https://github.com/antonytorres21';

class ContactToMe extends ResponsiveWidget {
  const ContactToMe({super.key});

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
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(27, 27, 27, 1),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
      height: height * .95,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 100,
            width: 400,
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: 'Agne',
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  //pause: const Duration(seconds: 3),
                  animatedTexts: [
                    TypewriterAnimatedText("If, you have any question",
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                    TypewriterAnimatedText(
                        'These are my professional social networks.',
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: MaterialStateMouseCursor.clickable,
                child: GestureDetector(
                  onTap: () => launchUrlString(LinkedinURL),
                  child: SizedBox(
                      height: 70,
                      child: Image.asset("assets/linkedin.png",
                          color: Colors.grey)),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MouseRegion(
                cursor: MaterialStateMouseCursor.clickable,
                child: GestureDetector(
                  onTap: () => launchUrlString(GitHunURL),
                  child: SizedBox(
                      height: 70,
                      child: Image.asset("assets/Github.png",
                          color: Colors.grey)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Contact me directly",
            style: TextStyle(
                color: Colors.white, fontSize: 30.0, fontFamily: 'Agne'),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.phone,
                    size: 40,
                    color: Colors.grey,
                  ),
                  Text(
                    "+506 87778715",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontFamily: 'Agne'),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, size: 40, color: Colors.grey),
                  Text(
                    "rt062000@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontFamily: 'Agne'),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Develop for Roig Torres in Flutter",
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
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
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(27, 27, 27, 1),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 100,
            width: 250,
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: 'Agne',
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  //pause: const Duration(seconds: 3),
                  animatedTexts: [
                    TypewriterAnimatedText("If, you have any question",
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                    TypewriterAnimatedText(
                        'These are my professional social networks.',
                        curve: Curves.linear,
                        speed: const Duration(milliseconds: 120)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: MaterialStateMouseCursor.clickable,
                child: GestureDetector(
                  onTap: () => launchUrlString(LinkedinURL),
                  child: SizedBox(
                      height: 70,
                      child: Image.asset("assets/linkedin.png",
                          color: Colors.grey)),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MouseRegion(
                cursor: MaterialStateMouseCursor.clickable,
                child: GestureDetector(
                  onTap: () => launchUrlString(GitHunURL),
                  child: SizedBox(
                      height: 70,
                      child:
                          Image.asset("assets/Github.png", color: Colors.grey)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Contact me directly",
            style: TextStyle(
                color: Colors.white, fontSize: 30.0, fontFamily: 'Agne'),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.phone,
                    size: 40,
                    color: Colors.grey,
                  ),
                  Text(
                    "+506 87778715",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontFamily: 'Agne'),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, size: 40, color: Colors.grey),
                  Text(
                    "rt062000@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontFamily: 'Agne'),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 75,
          ),
          const Text(
            "Develop for Roig Torres in Flutter",
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
