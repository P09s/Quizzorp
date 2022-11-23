import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _navigationtohome();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  bool videoPlaying = false;
  void _iconTapped() {
    if (videoPlaying == false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  _navigationtohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => QuizScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: AnimatedIcon(
                  icon: AnimatedIcons.search_ellipsis,
                  progress: _animationController,
                  size: 120),
            ),
            Container(
              child: Text(
                "Quizzorp",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
