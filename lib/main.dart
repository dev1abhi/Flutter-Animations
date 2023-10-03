import 'package:flutter/material.dart';
import 'package:flutter_animations/Screens/homepage.dart';
import 'Colors/colors.dart';
import 'Controllers/drawercontroller.dart';
import 'Screens/fade_in_fade_out.dart';
import 'package:get/get.dart';
import 'Screens/SplashScreen.dart';

void main() {
  Get.put<MyDrawerController>(MyDrawerController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animations',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes:
      {
        '/fade_in':(context) => const fade_in_fade_out(),
        '/homepage':(context)=>  MyHomePage(),
      },

      home: SplashScreen()
    );
  }
}



