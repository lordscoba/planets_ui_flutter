import 'package:flutter/material.dart';
import 'package:planets/login.dart';
import 'package:planets/splash.dart';
import 'package:planets/home.dart';

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
      initialRoute: '/home',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
      },
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
    );
  }
}
