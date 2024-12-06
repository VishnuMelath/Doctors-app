import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _docAnimation;
  late Animation<Offset> _findAnimation;
  late double padding;
  late double opacity;
  late double leftPadding;
  @override
  void initState() {
    // padding = 100;
    // leftPadding = 40;
    // opacity = 0;
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   startAnimation();
    // });

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _docAnimation = Tween<Offset>(
      begin: const Offset(-.5, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _findAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 4),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 111, 207),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: SizedBox(
                child: Image.asset(
                  'assets/splash_image.png',
                  fit: BoxFit.fill,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  width: MediaQuery.sizeOf(context).width,
                ),
              )),
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [
                  0.35,
                  1
                ],
                    colors: [
                  const Color.fromARGB(228, 21, 101, 192)!,
                  const Color.fromARGB(0, 30, 52, 151)
                ])),
            child: Center(
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlideTransition(
                      position: _docAnimation,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 1),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'DOC',
                            style: GoogleFonts.cormorantSc(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.blueAccent),
                          )),
                    ),
                    SlideTransition(
                      position: _findAnimation,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'FIND',
                          //   style: TextStyle(fontSize: 25, color: Colors.white),
                          style: GoogleFonts.cormorantSc(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void startAnimation() {
    setState(() {
      padding = 0;
      leftPadding = 0;
      opacity = 1;
    });
  }
}
