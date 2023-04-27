import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
        child: SingleChildScrollView(
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
