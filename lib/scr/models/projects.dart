import 'package:portafolio/scr/models/skills.dart';

class Projects {
  final String projectName;
  final List<String> image;
  final List<Skills> tecnologis;
  final Uri link;

  Projects(this.projectName, this.tecnologis, this.link, this.image);
}

final projects = <Projects>[
  Projects(
      "Pagina Web de Ronaldiño",
      [
        Skills("../assets/logos/html.png", "HTML"),
        Skills("../assets/logos/css.png", "CSS"),
        Skills("../assets/logos/JavaScript.png", "JavaScript"),
      ],
      Uri(
          host: "antonytorres21.github.io",
          scheme: "https",
          path: "BibliografiaRonaldinho/"),
      [
        "../assets/webs/dinho/dinho.png",
        "../assets/webs/dinho/dinho2.png",
        "../assets/webs/dinho/dinho3.png",
        "../assets/webs/dinho/dinho4.png"
      ]),
  Projects(
      "Autos Locos",
      [
        Skills("../assets/logos/html.png", "HTML"),
        Skills("../assets/logos/css.png", "CSS"),
        Skills("../assets/logos/JavaScript.png", "JavaScript"),
      ],
      Uri(
          host: "antonytorres21.github.io",
          scheme: "https",
          path: "AutosLocos/"),
      [
        "../assets/webs/autoslocos/inicio.png",
        "../assets/webs/autoslocos/Toyota.png",
      ])
];
