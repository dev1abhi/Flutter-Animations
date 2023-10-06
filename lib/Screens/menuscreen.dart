import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animations/Colors/colors.dart';
import 'package:get/get.dart';
import '../Controllers/drawercontroller.dart';

class MenuScreen extends GetView<MyDrawerController> {
  final Function(int) onMenuItemClicked;

  MenuScreen({required this.onMenuItemClicked});

  // Menu items for illustration
  final List<String> menuItems = [
    'Guidelines',
    'Fade in/out',
    'Text Animation',
    'Water Drop Effect'
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: menupagecolor,
        child: Column(
          children: [
            Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      menuItems[index],
                      style: TextStyle(
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
