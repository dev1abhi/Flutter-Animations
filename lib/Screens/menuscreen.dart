import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';

import 'package:get/get.dart';
import '../controllers/drawercontroller.dart';

class MenuScreen extends GetView<MyDrawerController> {
  final Function(int) onMenuItemClicked;

  MenuScreen({required this.onMenuItemClicked});

  // Menu items for illustration
  final List<String> menuItems = [
    'Guidelines',
    'Fade in/out',
    'Text Animation',
    'Water Drop Effect',
    'Ripple Effect',
    'Bounce Animation',
    "Explicit Animation",
    "Animated Dialog",
    "FlipCounter Animation",
    "Loading Animation",
    "Hero-Animation",
    "Colorize Text Animation"
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: menupagecolor,
        child: Column(
          children: [
            const Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      menuItems[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {
                      // Call onMenuItemClicked when an item is clicked
                      onMenuItemClicked(index);
                      // Close the drawer by calling toggleDrawer on the controller
                      controller.toggleDrawer;
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
