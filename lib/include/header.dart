import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class Header extends StatelessWidget {
  final String title;
  final String subtitle;
  const Header({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: MediaQuery.of(context).size.width < 400 ? 20 : 55),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/home_1.png"), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            spreadRadius: -3,
            blurRadius: 13,
            blurStyle: BlurStyle.outer,
            offset: const Offset(1, 2),
          ),
        ],
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            color: Colors.white,
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu_rounded),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 10),
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
            ],
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(FontAwesome5.user_circle),
          ),
        ],
      ),
    );
  }
}

class Header1 extends StatelessWidget {
  const Header1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: MediaQuery.of(context).size.width < 400 ? 20 : 55),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/home_1.png"), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            spreadRadius: -3,
            blurRadius: 13,
            blurStyle: BlurStyle.outer,
            offset: const Offset(1, 2),
          ),
        ],
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            color: const Color(0xFFffffff),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width / 2) - 120,
          ),
          const Text(
            "My Profile",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
          ),
        ],
      ),
    );
  }
}
