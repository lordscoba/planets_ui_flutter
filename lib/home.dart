import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'include/footer.dart';
import 'include/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/cosmic_1.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Header(
              subtitle: 'Milky way',
              title: 'Solar System',
            ),
            Expanded(
              child: ListView(
                children: const [
                  SizedBox(height: 100, child: Lists()),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: PlanetDescription(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SolarDescription(),
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class PlanetDescription extends StatelessWidget {
  const PlanetDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 440 ? 370 : 250,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            spreadRadius: -3,
            blurRadius: 13,
            blurStyle: BlurStyle.outer,
            offset: const Offset(1, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Planet of the Day",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Image(
                    image: AssetImage("assets/images/mars_image.png"),
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  InnerColumText(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InnerColumText extends StatelessWidget {
  const InnerColumText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Mars",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color(0xFF11dce8),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 180,
          child: const Text(
            "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
            softWrap: true,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 180,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                style: const ButtonStyle(alignment: Alignment.bottomLeft),
                child: Row(
                  children: [
                    const Text(
                      "Details",
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      color: const Color(0xFF11dce8),
                      onPressed: () {},
                      icon: const Icon(FontAwesome.right),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class SolarDescription extends StatelessWidget {
  const SolarDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 450 ? 370 : 250,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            spreadRadius: -3,
            blurRadius: 13,
            blurStyle: BlurStyle.outer,
            offset: const Offset(1, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Solar System",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the system's mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(2),
      children: const <Widget>[
        PlanetLists(
          planetName: "Earth",
          planetImage: Image(
            image: AssetImage("assets/images/earth_image.png"),
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        PlanetLists(
          planetName: "Mars",
          planetImage: Image(
            image: AssetImage("assets/images/venus_image.png"),
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        PlanetLists(
          planetName: "Venus",
          planetImage: Image(
            image: AssetImage(
              "assets/images/earth_image.png",
            ),
            width: 70,
            height: 70,
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.overlay,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        PlanetLists(
          planetName: "Mercury",
          planetImage: Image(
            image: AssetImage(
              "assets/images/earth_image.png",
            ),
            width: 70,
            height: 70,
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.overlay,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        PlanetLists(
          planetName: "Jupiter",
          planetImage: Image(
            image: AssetImage(
              "assets/images/earth_image.png",
            ),
            width: 70,
            height: 70,
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.overlay,
          ),
        ),
      ],
    );
  }
}

class PlanetLists extends StatelessWidget {
  final String planetName;
  final Image planetImage;
  const PlanetLists({
    super.key,
    required this.planetName,
    required this.planetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              spreadRadius: -3,
              blurRadius: 13,
              blurStyle: BlurStyle.outer,
              offset: const Offset(1, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                planetImage,
                Text(
                  planetName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
