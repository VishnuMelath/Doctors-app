import 'package:doctors/screens/splash_screen.dart';
import 'package:doctors/screens/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctors',
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: const SplashScreen(),
    );
  }
}
