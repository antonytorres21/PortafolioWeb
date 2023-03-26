import 'package:circular_profile/circular_profile.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/scr/widget/response_widget.dart';

class AboutMe extends ResponsiveWidget {
  const AboutMe({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const Text(
                "About me",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const SizedBox(
                    child: CircularProfile(
                      radius: 120,
                      image: AssetImage(
                        '../assets/Yo2.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(27, 27, 27, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                          ]),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(6.0),
                      child: const Text(
                        "Hello, again, as I mentioned, my name is Roig Antony Torres López, I am a mobile and web developer, Full Stack. Study business informatics at the University of Costa Rica. I have experience in different technologies and I am always willing to learn the newest and latest technologies on the market.",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class MobileBuild extends StatelessWidget {
  const MobileBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 24, 50, 0),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "About me",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                const SizedBox(
                  height: 25,
                ),
                const CircularProfile(
                  radius: 120,
                  image: AssetImage(
                    'assets/Yo2.jpg',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(27, 27, 27, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ]),
                    //height: 400,
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text(
                        "Hello, again, as I mentioned, my name is Roig Antony Torres López, I am a mobile and web developer, Full Stack. Study business informatics at the University of Costa Rica. I have experience in different technologies and I am always willing to learn the newest and latest technologies on the market.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 50,
                ),
              ]),
        ),
      ),
    );
  }
}
