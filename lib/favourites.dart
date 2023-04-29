import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:planets/include/drawer.dart';

import 'include/footer.dart';
import 'include/header.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Draw(),
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
              title: 'Favorites',
              subtitle: '',
            ),
            Expanded(
              child: ListView(
                children: const [
                  FavoriteList(
                    text: 'Mercury',
                    title:
                        'Mercury is the smallest planet in the Solar System and the closest to the Sun.',
                  ),
                  FavoriteList(
                    text: 'Venus',
                    title:
                        'Venus is the second planet from the Sun and is Earth\'s closest planetary neighbor.',
                  ),
                  FavoriteList(
                    text: 'Earth',
                    title:
                        'Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System.',
                  ),
                  FavoriteList(
                    text: 'Mars',
                    title:
                        'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System',
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

class FavoriteList extends StatelessWidget {
  final String title;
  final String text;
  const FavoriteList({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width < 450 ? 3 : 10,
          horizontal: 10),
      height: MediaQuery.of(context).size.width < 450 ? 230 : 160,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/tile_background.png"),
            fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage("assets/images/earth_image.png"),
              width: 70,
              height: 70,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          InnerColumnText1(
            text: title,
            title: text,
          ),
        ],
      ),
    );
  }
}

class InnerColumnText1 extends StatelessWidget {
  final String title;
  final String text;
  const InnerColumnText1({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color(0xFF11dce8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                color: const Color(0xFFffffff),
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 180,
          child: Text(
            text,
            style: const TextStyle(
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
