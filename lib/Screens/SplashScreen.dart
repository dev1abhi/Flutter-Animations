import 'package:flutter/material.dart';
import 'package:flutter_animations/Screens/homepage.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay the navigation to the HomeScreen after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      // Use Get.off to replace the current screen with MyHomePage
      Get.off(() => MyHomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/FlutterAnimation.json'),
      ),
    );
  }
}
