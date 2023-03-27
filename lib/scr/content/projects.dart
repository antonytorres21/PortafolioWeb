import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_hooks/flutter_hooks.dart'; //
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portafolio/scr/models/projects.dart';
import 'package:portafolio/scr/widget/response_widget.dart';
import 'package:url_launcher/url_launcher.dart';

int indexU = 0;

class Projects extends ResponsiveWidget {
  const Projects({super.key});

  /*  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 250,
    );
  } */

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
    double height = MediaQuery.of(context).size.height;
    final indexUn = useState<int>(0);

    return SizedBox(
      height: height * 1.4,
      child: Column(
        children: [
          const Text(
            "Projects",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
                width: 300,
                child: Swiper(
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text(
                          projects[index].projectName,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    );
                  },
                  onIndexChanged: (value) {
                    indexUn.value = value;
                  },
                  curve: Curves.easeIn,
                  itemCount: projects.length,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 400,
                width: 900,
                child: Swiper(
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Image.asset(projects[indexUn.value].image[index]),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                  onTap: (index) {
                    launchUrl(projects[indexUn.value].link);
                  },
                  curve: Curves.easeIn,
                  itemCount: projects[indexUn.value].image.length,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
              ),
              const SizedBox(
                height: 15,
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
                        const Text(
                          "Used technology",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Image.asset(
                            projects[indexUn.value].tecnologis[index].image),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          projects[indexUn.value].tecnologis[index].name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    );
                  },
                  curve: Curves.easeIn,
                  itemCount: projects[indexUn.value].tecnologis.length,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileBuild extends HookConsumerWidget {
  const MobileBuild({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexUn = useState<int>(0);

    return SizedBox(
      child: Column(
        children: <Widget>[
          const Text(
            "Projects",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
                width: 300,
                child: Swiper(
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemBuilder: (BuildContext context, int index) {
                    indexUn.value = index;
                    return Column(
                      children: [
                        Text(
                          projects[indexUn.value].projectName,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    );
                  },
                  onIndexChanged: (value) {
                    indexUn.value = value;
                  },
                  curve: Curves.easeIn,
                  itemCount: projects.length,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 350,
                height: 180,
                child: Swiper(
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Image.asset(projects[indexUn.value].image[index]),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                  onTap: (index) {
                    launchUrl(projects[indexUn.value].link);
                  },
                  curve: Curves.easeIn,
                  itemCount: projects[indexUn.value].image.length,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Used technology",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                width: 350,
                height: 80,
                child: Swiper(
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          projects[indexUn.value].tecnologis[index].name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    );
                  },
                  curve: Curves.easeIn,
                  itemCount: projects[indexUn.value].tecnologis.length,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
