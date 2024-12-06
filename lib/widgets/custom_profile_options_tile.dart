import 'package:doctors/theme/font_style.dart';
import 'package:flutter/material.dart';

Widget customProfileOptionTile(String title, IconData icon) {
  return ListTile(
    contentPadding: const EdgeInsets.all(0),
    leading: Icon(
      icon,
      size: 20,
    ),
    title: Text(
      title,
      style: montserrat.copyWith(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
    ),
    trailing: const Icon(
      Icons.arrow_forward_ios,
      size: 16,
    ),
  );
}
