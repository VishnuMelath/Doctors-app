import 'package:flutter/material.dart';

import '../theme/font_style.dart';

void showJobDetails(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true, // Allows full-screen height for the bottom sheet
    isDismissible: false, // Prevent dismiss by tapping outside
    enableDrag: false, // Disable drag-to-dismiss
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.9, // Occupy 90% of the screen height
        minChildSize: 0.9,
        maxChildSize: 0.9,
        builder: (_, controller) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
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
                        const Text(
                          'Job Details',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.1),
                              borderRadius: BorderRadius.circular(100)),
                          child: GestureDetector(
                            child: const Icon(Icons.file_upload_outlined,
                                size: 18, color: Colors.black),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
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
                            fontSize: 12, fontWeight: FontWeight.bold),
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
                        _buildChip(Icons.access_time, "5+ Year Exp."),
                        const SizedBox(width: 8),
                        _buildChip(Icons.currency_rupee, "10-15 lakhs"),
                        const SizedBox(width: 8),
                        _buildChip(Icons.location_on, "Coimbatore"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Job description:',
                      style: montserrat.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'We are seeking experienced Doctors with a minimum of 5 years of clinical experience to join our team.',
                      style: montserrat.copyWith(
                          fontSize: 11, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Position Description:',
                      style: montserrat.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'As a Doctor at HealthOk, you will play a vital role in providing exceptional medical care to our patients.\nYour responsibilities will include:',
                      style: montserrat.copyWith(
                          fontSize: 11, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Required skills:',
                      style: montserrat.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '• Valid medical license and relevant certifications\n'
                      '• Strong clinical skills and knowledge in your speciality\n'
                      '• Excellent communication and interpersonal skills\n'
                      '• Preferred language Hindi, English, Malayalam, Tamil, Telugu, Kannada, Marathi, Bengali',
                      style: montserrat.copyWith(
                          fontSize: 11, color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    _buildDetailRow('Role:', 'Doctor - Other'),
                    _buildDetailRow(
                        'Industry Type:', 'Medical Services / Hospital'),
                    _buildDetailRow(
                        'Department:', 'Healthcare & Life Sciences'),
                    _buildDetailRow('Employment Type:', 'Full Time, Permanent'),
                    _buildDetailRow('Role Category:', 'Doctor'),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black),
                      ),
                      child: const Text(
                        'Call Directly',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        'Apply this Job',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

Widget _buildChip(IconData icon, String label) {
  return Chip(
    labelPadding: const EdgeInsets.all(1),
    avatar: Icon(icon, size: 11, color: Colors.blue),
    label: Text(
      label,
      style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
    ),
    backgroundColor: Colors.grey[100],
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: Color.fromARGB(15, 153, 151, 151)),
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

Widget _buildDetailRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: value == 'Doctor' ? Colors.black26 : Colors.black),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
                fontSize: 12,
                color: value == 'Doctor' ? Colors.black26 : Colors.black),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}
