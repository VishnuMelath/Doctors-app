import 'package:doctors/theme/font_style.dart';
import 'package:flutter/material.dart';

class CSearchBar extends StatelessWidget {
  const CSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]!,
                ), // Background color
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(Icons.search, color: Colors.black54),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: montserrat.copyWith(
                            color: Colors.black87, fontSize: 13),
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(Icons.mic, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[200]!,
              ),
              // Background color
              shape: BoxShape.circle, // Circular button
            ),
            child: const Icon(Icons.tune, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
