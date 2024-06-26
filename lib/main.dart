import 'package:flutter/material.dart';
import 'package:pijar_app/pages/auth/login_screen.dart';
import 'package:pijar_app/pages/auth/register_screen.dart';
import 'package:pijar_app/pages/bottom_navbar.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
