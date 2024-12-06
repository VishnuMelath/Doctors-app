import 'dart:developer';

import 'package:doctors/screens/profile_screen.dart';
import 'package:doctors/theme/colors.dart';
import 'package:doctors/utils/animated_routing.dart';
import 'package:flutter/material.dart';

//todo  complete bottom nav bar ontap and switching selected option
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(100))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customBNItem(
              context,
              const Icon(
                Icons.home,
                color: Colors.white,
              ),
              0,
              true),
          customBNItem(
              context,
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white30,
              ),
              1),
          customBNItem(
              context,
              const Icon(
                Icons.chat,
                color: Colors.white30,
              ),
              2),
          customBNItem(
              context,
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white30,
                ),
              ),
              3)
        ],
      ),
    );
  }
}

Widget customBNItem(BuildContext context, Widget child, int index,
    [bool selected = false]) {
  return InkWell(
    onTap: () {
      log('tapped');
      if (index == 3) {
        log('profile');
        Navigator.push(context, createRoute(child: const ProfileScreen()));
      }
    },
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: selected ? CustomColors.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(100)),
      child: child,
    ),
  );
}
