import 'package:doctors/screens/job_details_screen.dart';
import 'package:doctors/theme/colors.dart';
import 'package:doctors/theme/font_style.dart';
import 'package:flutter/material.dart';

class CustomJobTile extends StatelessWidget {
  const CustomJobTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: () {
          showJobDetails(context);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/company_icon.png'),
                  ),
                  title: Text(
                    'Duty Doctor / Medical Officer',
                    style: montserrat.copyWith(
                        fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Koval Medical Center and Hospitals',
                    style: montserrat.copyWith(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 13,
                      color: CustomColors.primaryColor,
                    ),
                    Flexible(
                        child: Text(
                      ' 5+ Year Experience ',
                      overflow: TextOverflow.ellipsis,
                      style: montserrat.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )),
                    const Text('|'),
                    Icon(
                      Icons.currency_rupee_sharp,
                      size: 13,
                      color: CustomColors.primaryColor,
                    ),
                    Flexible(
                      child: Text(
                        ' 10-15 laks ',
                        overflow: TextOverflow.ellipsis,
                        style: montserrat.copyWith(
                            fontSize: 11, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Text('|'),
                    Icon(
                      Icons.location_on_outlined,
                      size: 13,
                      color: CustomColors.primaryColor,
                    ),
                    Flexible(
                        child: Text(
                      ' Coimbatore, Tamilnadu ',
                      overflow: TextOverflow.ellipsis,
                      style: montserrat.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )),
                  ],
                ),
                Text(
                  'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join our team',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: montserrat.copyWith(
                      fontSize: 10, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Apply the Position',
                  overflow: TextOverflow.ellipsis,
                  style: montserrat.copyWith(
                      color: CustomColors.primaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Posted:30+ days ago | Openings:2 | Applicants: 1110',
                    style: montserrat.copyWith(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
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
