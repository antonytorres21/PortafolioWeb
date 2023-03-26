// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_hooks/flutter_hooks.dart'; //
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portafolio/scr/models/skills.dart';
import 'package:portafolio/scr/widget/response_widget.dart';
import 'package:card_swiper/card_swiper.dart';

bool autoPlayU = false;
int b1 = 0;
int b2 = 0;
int b3 = 0;
int b4 = 0;
int b5 = 0;
int b6 = 0;

class Skills extends ResponsiveWidget {
  const Skills({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopBuild();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileBuild();
  }
}

class DesktopBuild extends HookConsumerWidget {
  const DesktopBuild({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final autoplay = useState<bool>(autoPlayU);

    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Skills",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Auto play",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Switch(
                value: autoplay.value,
                onChanged: (value) {
                  autoplay.value = value;
                  autoPlayU = value;
                },
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Table(
            children: [
              TableRow(children: <Widget>[
                Column(
                  children: [
                    const Text(
                      "Languages",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      height: 250,
                      child: Swiper(
                        viewportFraction: 0.8,
                        scale: 0.9,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Image.asset(languajes[index].image),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                languajes[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          );
                        },
                        index: b1,
                        onIndexChanged: (value) {
                          b1 = value;
                        },
                        curve: Curves.easeIn,
                        autoplay: autoplay.value,
                        itemCount: languajes.length,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Frameworks and Web",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      height: 250,
                      child: Swiper(
                        viewportFraction: 0.8,
                        scale: 0.9,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Image.asset(framewokrsandWeb[index].image),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                framewokrsandWeb[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          );
                        },
                        index: b2,
                        onIndexChanged: (value) {
                          b2 = value;
                        },
                        curve: Curves.easeIn,
                        autoplay: autoplay.value,
                        itemCount: framewokrsandWeb.length,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Databases",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      height: 250,
                      child: Swiper(
                        viewportFraction: 0.8,
                        scale: 0.9,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Image.asset(dabatabe[index].image),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                dabatabe[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          );
                        },
                        index: b3,
                        onIndexChanged: (value) {
                          b3 = value;
                        },
                        curve: Curves.easeIn,
                        autoplay: autoplay.value,
                        itemCount: dabatabe.length,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                  ],
                ),
              ]),
              TableRow(children: <Widget>[
                Column(
                  children: [
                    const Text(
                      "Tools",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      height: 250,
                      child: Swiper(
                        viewportFraction: 0.8,
                        scale: 0.9,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Image.asset(tools[index].image),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                tools[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          );
                        },
                        index: b4,
                        onIndexChanged: (value) {
                          b4 = value;
                        },
                        curve: Curves.easeIn,
                        autoplay: autoplay.value,
                        itemCount: tools.length,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Learning",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      height: 250,
                      child: Swiper(
                        viewportFraction: 0.8,
                        scale: 0.9,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Image.asset(learning[index].image),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                learning[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          );
                        },
                        index: b5,
                        onIndexChanged: (value) {
                          b5 = value;
                        },
                        curve: Curves.easeIn,
                        autoplay: autoplay.value,
                        itemCount: learning.length,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Reinforcing",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      height: 250,
                      child: Swiper(
                        viewportFraction: 0.8,
                        scale: 0.9,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Image.asset(reinforcing[index].image),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                reinforcing[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          );
                        },
                        index: b6,
                        onIndexChanged: (value) {
                          b6 = value;
                        },
                        curve: Curves.easeIn,
                        autoplay: autoplay.value,
                        itemCount: reinforcing.length,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                  ],
                ),
              ]),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    ));
  }
}

class MobileBuild extends HookConsumerWidget {
  const MobileBuild({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);
    final b1 = useState<bool>(false);
    final b2 = useState<bool>(false);
    final b3 = useState<bool>(false);
    final b4 = useState<bool>(false);
    final b5 = useState<bool>(false);
    final b6 = useState<bool>(false);
    final autoplay = useState<bool>(autoPlayU);
    final skillss = useState<String>("");

    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Auto play",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              Switch(
                mouseCursor: MaterialStateMouseCursor.clickable,
                value: autoplay.value,
                onChanged: (value) {
                  autoplay.value = value;
                  autoPlayU = value;
                },
              ),
            ],
          ),
          SizedBox(
            child: Column(
              children: [
                Column(
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          skillss.value = "languajes";
                          if (b1.value) {
                            b1.value = false;
                            containerHeight.value = 0.0;
                          } else {
                            containerHeight.value = 240;
                            b1.value = true;
                            b2.value = false;
                            b3.value = false;
                            b4.value = false;
                            b5.value = false;
                            b6.value = false;
                          }
                        },
                        child: const Text(
                          "Languages",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          skillss.value = "framewokrsandWeb";
                          if (b2.value) {
                            b2.value = false;
                            containerHeight.value = 0.0;
                          } else {
                            containerHeight.value = 240;
                            b2.value = true;
                            b1.value = false;
                            b3.value = false;
                            b4.value = false;
                            b5.value = false;
                            b6.value = false;
                          }
                        },
                        child: const Text(
                          "FrameWorks and Web",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          skillss.value = "dabatabe";
                          if (b3.value) {
                            b3.value = false;
                            containerHeight.value = 0.0;
                          } else {
                            containerHeight.value = 240;
                            b3.value = true;
                            b1.value = false;
                            b2.value = false;
                            b4.value = false;
                            b5.value = false;
                            b6.value = false;
                          }
                        },
                        child: const Text(
                          "Dabatabe",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          skillss.value = "tools";
                          if (b4.value) {
                            b4.value = false;
                            containerHeight.value = 0.0;
                          } else {
                            containerHeight.value = 240;
                            b4.value = true;
                            b1.value = false;
                            b2.value = false;
                            b3.value = false;
                            b5.value = false;
                            b6.value = false;
                          }
                        },
                        child: const Text(
                          "Tools",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          skillss.value = "learning";
                          if (b5.value) {
                            b5.value = false;
                            containerHeight.value = 0.0;
                          } else {
                            containerHeight.value = 240;
                            b5.value = true;
                            b1.value = false;
                            b2.value = false;
                            b3.value = false;
                            b4.value = false;
                            b6.value = false;
                          }
                        },
                        child: const Text(
                          "Learning",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          skillss.value = "reinforcing";
                          if (b6.value) {
                            b6.value = false;
                            containerHeight.value = 0.0;
                          } else {
                            containerHeight.value = 240;
                            b6.value = true;
                            b1.value = false;
                            b2.value = false;
                            b3.value = false;
                            b4.value = false;
                            b5.value = false;
                          }
                        },
                        child: const Text(
                          "Reinforcing",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      ),
                    ),
                  ],
                ),
                skills(containerHeight, skillss.value, autoplay.value),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack skills(
      ValueNotifier<double> containerHeight, String skills, bool play) {
    switch (skills) {
      case "languajes":
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
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 250,
                          child: Swiper(
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Image.asset(languajes[index].image),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    languajes[index].name,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              );
                            },
                            index: b1,
                            onIndexChanged: (value) {
                              b1 = value;
                            },
                            curve: Curves.easeIn,
                            autoplay: play,
                            itemCount: languajes.length,
                            pagination: const SwiperPagination(),
                            control: const SwiperControl(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      case "framewokrsandWeb":
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
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 250,
                          child: Swiper(
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Image.asset(framewokrsandWeb[index].image),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    framewokrsandWeb[index].name,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              );
                            },
                            index: b2,
                            onIndexChanged: (value) {
                              b2 = value;
                            },
                            curve: Curves.easeIn,
                            autoplay: play,
                            itemCount: framewokrsandWeb.length,
                            pagination: const SwiperPagination(),
                            control: const SwiperControl(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      case "dabatabe":
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
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 250,
                          child: Swiper(
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Image.asset(dabatabe[index].image),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    dabatabe[index].name,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              );
                            },
                            index: b3,
                            onIndexChanged: (value) {
                              b3 = value;
                            },
                            curve: Curves.easeIn,
                            autoplay: play,
                            itemCount: dabatabe.length,
                            pagination: const SwiperPagination(),
                            control: const SwiperControl(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      case "tools":
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
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 250,
                          child: Swiper(
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Image.asset(tools[index].image),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    tools[index].name,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              );
                            },
                            index: b4,
                            onIndexChanged: (value) {
                              b4 = value;
                            },
                            curve: Curves.easeIn,
                            autoplay: play,
                            itemCount: tools.length,
                            pagination: const SwiperPagination(),
                            control: const SwiperControl(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      case "learning":
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
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 250,
                          child: Swiper(
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Image.asset(learning[index].image),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    learning[index].name,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              );
                            },
                            index: b5,
                            onIndexChanged: (value) {
                              b5 = value;
                            },
                            curve: Curves.easeIn,
                            autoplay: play,
                            itemCount: learning.length,
                            pagination: const SwiperPagination(),
                            control: const SwiperControl(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      case "reinforcing":
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
                    Column(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 250,
                          child: Swiper(
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Image.asset(reinforcing[index].image),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    reinforcing[index].name,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              );
                            },
                            index: b6,
                            onIndexChanged: (value) {
                              b6 = value;
                            },
                            curve: Curves.easeIn,
                            autoplay: play,
                            itemCount: reinforcing.length,
                            pagination: const SwiperPagination(),
                            control: const SwiperControl(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );

      default:
        return Stack();
    }
  }
}
