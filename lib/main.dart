import 'package:flutter/material.dart';
import 'package:planets/favourites.dart';
import 'package:planets/login.dart';
import 'package:planets/profile.dart';
import 'package:planets/splash.dart';
import 'package:planets/home.dart';

import 'package:planets/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
        '/details': (context) => const Details(),
        '/favourites': (context) => const Favourites(),
        '/profile': (context) => const Profile(),
      },
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
    );
  }
}
