import 'dart:ui';

import 'package:doctors/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 7,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width - 40,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Positioned(
                      bottom: 185,
                      child: Image.asset(
                        'assets/injection.png',
                        height: 40,
                        filterQuality: FilterQuality.none,
                      )),
                  Positioned(
                      bottom: 185,
                      right: 0,
                      child: Image.asset(
                        'assets/medical.png',
                        height: 40,
                        filterQuality: FilterQuality.none,
                      )),
                  Positioned(
                      bottom: 0,
                      child: Transform.rotate(
                        angle: -0.3,
                        child: Image.asset(
                          'assets/smiley.png',
                          height: 40,
                          filterQuality: FilterQuality.none,
                        ),
                      )),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/doctor.png'))
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [Colors.blue[600]!, Colors.blue[50]!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Hey Doctors.!',
                    style: GoogleFonts.montserrat(
                        fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text(
                'Don\'t Fear this is Right Platforms for you',
                style: regularSizeBlackFont,
              ),
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [Colors.blue[600]!, Colors.blue[50]!],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.srcIn,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '10,000+',
                        style: regularSizeBlackFont,
                      ),
                    ),
                  ),
                  Text(
                    ' Jobs Available for your ',
                    style: regularSizeBlackFont,
                  ),
                ],
              ),
              const Text('Interested.'),
              const Spacer(
                flex: 3,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue[600]),
                    child: Text(
                      'Explore all jobs',
                      style: montserrat.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
