import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 55),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/home_3.png"), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            spreadRadius: -3,
            blurRadius: 13,
            blurStyle: BlurStyle.outer,
            offset: const Offset(1, 2),
          ),
        ],
        // borderRadius: BorderRadius.circular(50),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              IconButton(
                color: const Color(0xFF11dce8),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: const Icon(FontAwesome5.globe),
              ),
              const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                color: const Color(0xFF11dce8),
                onPressed: () {
                  Navigator.pushNamed(context, '/favourites');
                },
                icon: const Icon(FontAwesome.heart_empty),
              ),
              const Text(
                'Favorites',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                color: const Color(0xFF11dce8),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.more_horiz),
              ),
              const Text(
                'More',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
