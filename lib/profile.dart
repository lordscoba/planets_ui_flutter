import 'package:flutter/material.dart';
import 'package:planets/include/header.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            const Header1(),
            Expanded(
              child: ListView(
                children: const [
                  Top1(),
                  SizedBox(
                    height: 20,
                  ),
                  Bottom1(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Top1 extends StatelessWidget {
  const Top1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/profile_1.png"),
            fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/avatar.png')),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Arthur Dent",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
                textAlign: TextAlign.left,
              ),
              Text(
                "Space Adventurer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 310,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              color: const Color(0xFFffffff),
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}

class Bottom1 extends StatefulWidget {
  const Bottom1({super.key});

  @override
  State<Bottom1> createState() => _Bottom1State();
}

class _Bottom1State extends State<Bottom1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/profile_2.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 85.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Switch(
                  value: true,
                  onChanged: (bool value) {},
                ),
                const Text(
                  "Show Planetary progress",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              const Positioned(
                child: Image(
                  image: AssetImage('assets/images/progressbar_1.png'),
                ),
              ),
              const Positioned(
                child: Image(
                  image: AssetImage('assets/images/progressbar_2.png'),
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Progress",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "Personal",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "87.1%",
                      style: TextStyle(
                        color: Color(0xFF859af4),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: const Color(0xFF0eb9c3),
                  checkColor: const Color(0xFF0eb9c3),
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white.withOpacity(.32);
                    }
                    return Colors.black45;
                  }),
                  onChanged: (bool? value) {},
                  value: true,
                ),
                const Text(
                  "Show me in Planet Rating",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: const Color(0xFF0eb9c3),
                  checkColor: const Color(0xFF0eb9c3),
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white.withOpacity(.32);
                    }
                    return Colors.black45;
                  }),
                  onChanged: (bool? value) {},
                  value: true,
                ),
                const Text(
                  "Notifications",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
