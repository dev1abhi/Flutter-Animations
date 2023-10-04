import 'package:flutter/material.dart';
import 'package:flutter_animations/Screens/homepage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the HomeScreen after 2 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });

    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/FlutterAnimation.json'), 

      ),
    );
  }
}
