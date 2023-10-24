import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';
import 'package:flutter_animations/screens/homepage.dart';
import 'package:flutter_animations/Text/tex_screen.dart';

import 'controllers/drawercontroller.dart';
import 'screens/fade_in_fade_out.dart';
import 'package:get/get.dart';
import 'screens/SplashScreen.dart';

void main() {
  Get.put<MyDrawerController>(MyDrawerController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Animations',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        routes: {
          '/fade_in': (context) => const fade_in_fade_out(),
          '/homepage': (context) => MyHomePage(),
          '/text_animat': (context) => AnimatedTextWidget(),
        },
        home: SplashScreen());
  }
}
