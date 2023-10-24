import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter_animations/helpers/colors.dart';
import '../controllers/drawercontroller.dart';
import 'menuscreen.dart';

class MyHomePage extends GetView<MyDrawerController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: MenuScreen(
          onMenuItemClicked: (int index) {
            // Handle the click event and update the main screen
            _.updateMainScreen(index);
          },
        ),
        mainScreen:  _.currentMainScreen,
        menuBackgroundColor: menupagecolor,
        mainScreenTapClose: true,
        borderRadius: 24.0,
        showShadow: true,
        angle: -12.0,
        drawerShadowsBackgroundColor: Colors.grey,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
      ),
    );
  }
}
