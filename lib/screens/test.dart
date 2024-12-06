import 'package:flutter/material.dart';

class AnimatedTextScreen extends StatefulWidget {
  @override
  _AnimatedTextScreenState createState() => _AnimatedTextScreenState();
}

class _AnimatedTextScreenState extends State<AnimatedTextScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _docAnimation;
  late Animation<Offset> _findAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _docAnimation = Tween<Offset>(
      begin: const Offset(-.5, 0), // Start offscreen to the left
      end: const Offset(0, 0), // Final position
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    // Animation for "FIND" - From bottom-left to final position
    _findAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 4), // Start offscreen (bottom-left)
      end: const Offset(0, 0), // Final position
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Match the blue background
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Center the elements
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Animated "DOC"
                SlideTransition(
                  position: _docAnimation,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      "DOC",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8), // Space between DOC and FIND
                // Animated "FIND"
                SlideTransition(
                  position: _findAnimation,
                  child: const Text(
                    "FIND",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
