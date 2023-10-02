import 'package:flutter/material.dart';
import 'package:flutter_animations/Colors/colors.dart';
import 'package:get/get.dart';
import '../Controllers/drawercontroller.dart';


class animation2 extends GetView<MyDrawerController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: mainpagecolor,
        child: Center(
          child: Text(
            "abhilash"
          ),
        ),
      ),
    );
  }
}