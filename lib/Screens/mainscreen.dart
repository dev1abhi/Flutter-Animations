import 'package:flutter/material.dart';
import 'package:flutter_animations/Colors/colors.dart';
import 'package:get/get.dart';
import '../Controllers/drawercontroller.dart';


class MainScreen extends GetView<MyDrawerController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainpagecolor,
        title: Text('Flutter Animations'),
        leading: IconButton(
          icon: Icon(Icons.menu), // You can use any icon you prefer
          onPressed: controller.toggleDrawer,
          hoverColor: Colors.white,
        ),
        elevation: 0,

      ),
    body: Container(
      color: mainpagecolor,
      child: SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      "Contributing Guidelines:",
      style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      ),
      ),
      SizedBox(height: 20.0),
      Text(
      "👋 Welcome to Our Project!",
      style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      ),
      ),
      SizedBox(height: 10.0),
      Text(
      "We appreciate your interest in contributing to our project. Our Project is to make an app which contains various animations available in flutter.",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
      SizedBox(height: 20.0),
      Text(
      "## Getting Started",
      style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      ),
      ),
      SizedBox(height: 10.0),
      Text(
      "1. Fork this repository.",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
      Text(
      "2. Clone your forked repository to your local machine.",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
      // Add more steps as needed...
      SizedBox(height: 20.0),
      Text(
      "## How to Contribute",
      style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      ),
      ),
      SizedBox(height: 10.0),
      Text(
      "1. Create a new branch for adding your animation",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
        Text(
          "2. Add your implementation of animation under lib/Screens/<Your animation name>",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        Text(
          "3. take the scaffold from the fade_in_fade_out and only update the body part to show your animation",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),

        Text(
          "4. Under Screens/menuscreen , add your <animation name> in menuItems list",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),

        Text(
          "5. In Controllers/drawercontroller file , add your screen and switch case",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),

        Text(
          "5. Check once if ur animation is working or not , by running the app",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),

        Text(
          "5.  If something is breaking down, raise a issue and pin me #dev1abhi",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),

      Text(
      "7. Make your changes and commit them with descriptive messages.",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
      // Add more steps as needed...
      SizedBox(height: 20.0),
      Text(
      "## Submitting a Pull Request",
      style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      ),
      ),
      SizedBox(height: 10.0),
      Text(
      "1. Push your changes to your forked repository.",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
      Text(
      "2. Open a pull request with a clear title and description.",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
      // Add more steps as needed...
      SizedBox(height: 20.0),
      Text(
      "## Code Style",
      style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      ),
      ),
      SizedBox(height: 10.0),
      Text(
      "Follow the coding style and guidelines of the project. Be consistent with existing code.",
      style: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      ),
      ),
      // Add more guidelines...
      ],
      ),
      ),
    ),
    );

    }
}