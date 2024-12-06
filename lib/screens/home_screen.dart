import 'package:doctors/theme/colors.dart';
import 'package:doctors/theme/font_style.dart';
import 'package:doctors/widgets/custom_bottom_nav.dart';
import 'package:doctors/widgets/custom_job_tile.dart';
import 'package:doctors/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        bottomNavigationBar: const CustomBottomNavBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 20, right: 20, bottom: 10),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: CustomColors.primaryColor),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                    title: Text(
                      'Dr.Khalid Abbed',
                      style: montserrat.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 15,
                          color: CustomColors.primaryColor,
                        ),
                        Text(
                          'Coimbatore, Tamilnadu',
                          style: montserrat.copyWith(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    trailing: Badge(
                        backgroundColor: Colors.orange,
                        smallSize: 8,
                        largeSize: 7,
                        padding: const EdgeInsets.all(1),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.notifications,
                            color: CustomColors.primaryColor,
                          ),
                        )),
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Let\' Get you',
                          style: montserrat.copyWith(
                              color: Colors.black, fontSize: 17),
                          children: [
                        TextSpan(
                            text: ' Hired',
                            style: montserrat.copyWith(
                                color: CustomColors.primaryColor,
                                fontSize: 16)),
                        TextSpan(
                            text: ' for the Job you',
                            style: montserrat.copyWith(fontSize: 17)),
                        TextSpan(
                            text: ' Deserved',
                            style: montserrat.copyWith(
                                color: CustomColors.primaryColor,
                                fontSize: 17)),
                        TextSpan(
                            text: '...!',
                            style: montserrat.copyWith(
                                color: CustomColors.primaryColor,
                                fontSize: 17)),
                      ])),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                const CSearchBar(),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 0.1),
                      ),
                      // border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Job match with you',
                              style: montserrat.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'see all',
                              style: montserrat.copyWith(
                                  color: CustomColors.primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const CustomJobTile(),
                        Builder(builder: (context) {
                          return const CustomJobTile();
                        }),
                        Builder(builder: (context) {
                          return const CustomJobTile();
                        }),
                        Builder(builder: (context) {
                          return const CustomJobTile();
                        }),
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
