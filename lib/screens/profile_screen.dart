import 'package:doctors/theme/colors.dart';
import 'package:doctors/theme/font_style.dart';
import 'package:doctors/widgets/custom_profile_options_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 223, 238, 250),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 223, 238, 250), Colors.white])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(100)),
                  child: GestureDetector(
                    child: const Icon(Icons.arrow_back_ios_new,
                        size: 18, color: Colors.black),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            CustomColors.primaryColor,
                            Colors.blue[100]!
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.KHalid Abb',
                            style: montserrat.copyWith(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'dummydr@gmail.com',
                            style: montserrat.copyWith(
                                color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(
                                Icons.person,
                                size: 40,
                              ),
                            ),
                            Positioned(
                                bottom: 3,
                                right: 3,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: CustomColors.primaryColor,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                customProfileOptionTile('Edit profile', Icons.edit),
                customProfileOptionTile('My Jobs', Icons.category),
                customProfileOptionTile(
                    'Privacy policy', Icons.privacy_tip_outlined),
                customProfileOptionTile(
                    'Terms & conditions', Icons.description_outlined),
                customProfileOptionTile(
                    'Edit profile', Icons.support_agent_rounded),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.red,
                    size: 20,
                  ),
                  title: Text(
                    'Log out',
                    style: montserrat.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                        fontSize: 14),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: const Icon(
                    Icons.delete_outline,
                    color: Colors.grey,
                    size: 20,
                  ),
                  title: Text(
                    'Remove account',
                    style: montserrat.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
