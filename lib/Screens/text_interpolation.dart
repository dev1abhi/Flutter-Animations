import 'package:flutter/material.dart';
import 'package:flutter_animations/controllers/drawercontroller.dart';
import 'package:flutter_animations/helpers/colors.dart';

class text_interpolation extends StatefulWidget {
  const text_interpolation({super.key});

  @override
  State<text_interpolation> createState() => _text_interpolation();
}

class _text_interpolation extends State<text_interpolation> {
  bool refresh = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainpagecolor,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              setState(() {
                refresh = !refresh;
              });
            }, icon: const Icon(Icons.refresh_rounded))
          ],
          backgroundColor: mainpagecolor,
          title: const Text('Fade in / Fade out demo'),
          leading: IconButton(
            icon: const Icon(Icons.menu), // You can use any icon you prefer
            onPressed: () {
              MyDrawerController.to.toggleDrawer();
              MyDrawerController.to.update();
            },
            hoverColor: Colors.white,
          ),
          elevation: 0,
        ),
        body: Center(
          key: Key(refresh.toString()),
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 1.0, end: 30.0),
            duration: const Duration(seconds: 2),
            builder: (BuildContext context, double value, Widget? child) {
              return Text('Text Animation',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: value));
            },
          ),
        ));
  }
}
