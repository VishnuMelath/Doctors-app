import 'package:doctors/screens/boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  late Animation<double> _opacityAnimation;
  late Image image1;
  late Image image2;
  @override
  void initState() {
    image1 = Image.asset('assets/doctor.png');
    image2 = Image.asset('assets/company_icon.png');
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 27, 111, 207),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _docAnimation = Tween<Offset>(
      begin: const Offset(0.2, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.decelerate),
    );

    _findAnimation = Tween<Offset>(
      begin: const Offset(-0.1, 1),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();
    _controller.addListener(
      () {
        if (_controller.isAnimating == false) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BoardingScreen(),
              ));
        }
      },
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromARGB(255, 27, 111, 207),
      child: SafeArea(
        child: Scaffold(
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
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                      0.35,
                      1
                    ],
                        colors: [
                      Color.fromARGB(228, 21, 101, 192),
                      Color.fromARGB(0, 30, 52, 151)
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
                                  borderRadius: BorderRadius.circular(100)),
                              child: Text(
                                'DOC',
                                style: GoogleFonts.cormorantSc(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.blueAccent),
                              )),
                        ),
                        SlideTransition(
                          position: _findAnimation,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: FadeTransition(
                              opacity: _opacityAnimation,
                              child: Text(
                                'FIND',
                                //   style: TextStyle(fontSize: 25, color: Colors.white),
                                style: GoogleFonts.cormorantSc(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
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
        ),
      ),
    );
  }
}
