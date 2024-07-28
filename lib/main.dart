import 'package:flutter/material.dart';
import 'package:pijar_app/pages/content/home_screen.dart';
import 'package:pijar_app/pages/detail_concert.dart';
import 'package:pijar_app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
