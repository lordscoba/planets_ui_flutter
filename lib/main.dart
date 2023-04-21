import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/cosmic_1.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Logo(),
              Flutter(),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: const [
        Positioned(
          child: Image(
            image: AssetImage("assets/images/ellipse_3.png"),
          ),
        ),
        Positioned(
          child: Image(
            image: AssetImage("assets/images/ellipse_2.png"),
          ),
        ),
        Positioned(
          child: Image(
            image: AssetImage("assets/images/shad.png"),
          ),
        ),
        Positioned(
          // top: 195,
          child: Image(
            image: AssetImage("assets/images/ellipse_1.png"),
          ),
        ),
        Positioned(
          child: Image(
            image: AssetImage("assets/images/cosmic_logo.png"),
          ),
        ),
      ],
    );
  }
}

class Flutter extends StatelessWidget {
  const Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      width: 400,
      image: AssetImage("assets/images/flutter_logo.png"),
    );
  }
}
