import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            width: double.maxFinite,
            height: double.maxFinite,
            filterQuality: FilterQuality.high,
            image: AssetImage(
              "assets/images/background_details.png",
            ),
            fit: BoxFit.cover,
          ),
          const Image(
            opacity: AlwaysStoppedAnimation(0.35),
            width: double.maxFinite,
            height: double.maxFinite,
            filterQuality: FilterQuality.high,
            image: AssetImage(
              "assets/images/background_color.png",
            ),
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const Header2(),
              Expanded(
                child: Stack(
                  children: [
                    const Body2(),
                    Positioned(
                      right: (MediaQuery.of(context).size.width / 2) - 50,
                      child: Container(
                        transform: Matrix4.translationValues(0, -40, 0),
                        child: const Image(
                          image: AssetImage("assets/images/earth_image.png"),
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Header2 extends StatelessWidget {
  const Header2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            color: const Color(0xFFffffff),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          IconButton(
            color: const Color(0xFFffffff),
            onPressed: () {
              Navigator.pushNamed(context, '/favourites');
            },
            icon: const Icon(Icons.favorite_outline),
          ),
        ],
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background_black.png"),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 75.0, bottom: 20),
              child: Text(
                "Earth",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Toolers(),
            SizedBox(
              height: 40,
            ),
            Button3(),
          ],
        ),
      ),
    );
  }
}

class Button3 extends StatelessWidget {
  const Button3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 130,
      margin: const EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFac5ad2),
            Color(0xFF22a8c6),
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: const Text('Visit'),
        onPressed: () {},
      ),
    );
  }
}

class Toolers extends StatelessWidget {
  const Toolers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: const [
        About2(
          title: "Mass",
          units: "(10^24Kg)",
          value: "5.97",
          iconValue: FontAwesome5.weight_hanging,
        ),
        About2(
          title: "Gravity",
          units: "(m/s2)",
          value: "9.8",
          iconValue: FontAwesome5.magnet,
        ),
        About2(
          title: "Day",
          units: "(hours)",
          value: "24",
          iconValue: Icons.wb_sunny,
        ),
        About2(
          title: "Esc Velocity",
          units: "(km/s)",
          value: "11.2",
          iconValue: FontAwesome5.rocket,
        ),
        About2(
          title: "Mean",
          units: "(Temp(C))",
          value: "15",
          iconValue: FontAwesome5.thermometer_three_quarters,
        ),
        About2(
          title: "Distance From",
          units: "Sun(106km)",
          value: "5.97",
          iconValue: FontAwesome5.ruler,
        ),
      ],
    );
  }
}

class About2 extends StatelessWidget {
  final String title;
  final String units;
  final String value;
  final dynamic iconValue;
  const About2({
    super.key,
    required this.title,
    required this.units,
    required this.value,
    required this.iconValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Column(
        children: [
          IconButton(
            iconSize: 33,
            color: const Color(0xFFffffff),
            onPressed: () {},
            icon: Icon(iconValue),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w200),
          ),
          Text(
            units,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            value,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
