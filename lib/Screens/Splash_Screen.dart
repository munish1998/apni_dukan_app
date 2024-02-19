import 'package:apni_dukan_app/Screens/Tutorial_Screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animationApni;
  late Animation<Offset> _animationDukan;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _animationApni = Tween<Offset>(
      begin: const Offset(-1.0, -1.0),
      end: const Offset(1.0, 1.0),
    ).animate(_controller);
    _animationDukan = Tween<Offset>(
      begin: const Offset(1.0, 1.0),
      end: const Offset(-1.0, -1.0),
    ).animate(_controller);

    // Start the animation
    _controller.forward();

    // Use Future.delayed to navigate after 8 seconds
    Future.delayed(const Duration(seconds: 4), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const TutorialScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideTransition(
              position: _animationApni,
              child: Text(
                'Apni',
                style: TextStyle(
                    color: Color.fromARGB(255, 195, 90, 52), fontSize: 45),
              ),
            ),
            SlideTransition(
              position: _animationDukan,
              child: Text(
                'Dukan',
                style: TextStyle(
                    color: Color.fromARGB(255, 195, 90, 52), fontSize: 45),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
