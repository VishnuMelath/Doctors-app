import 'package:doctors/screens/splash_screen.dart';
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
      title: 'Doctors',
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: const SplashScreen(),
    );
  }
}
