import 'package:flutter/material.dart';
import 'package:flutter_animations/Screens/homepage.dart';
import 'package:flutter_animations/controllers/drawercontroller.dart';
import 'package:flutter_animations/helpers/colors.dart';
import 'package:get/get.dart';

class Bounce extends StatefulWidget {
  const Bounce({super.key});



  @override
  State<Bounce> createState() => _BounceState();
}

class _BounceState extends State<Bounce> {
  bool shouldRefresh = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainpagecolor,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              setState(() {
                shouldRefresh = !shouldRefresh;
              });
          },
              icon: Icon(Icons.refresh_rounded))
          ],
          backgroundColor: mainpagecolor,
          title: const Text('bounce animation'),
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
            key: Key(shouldRefresh.toString()),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // bounceInOut
                  TweenAnimationBuilder(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.greenAccent,
                    ),
                    duration: Duration(milliseconds: 6000),
                    curve: Curves.bounceInOut,
                    tween: Tween(begin: 1.0, end: 0.0),
                    builder: (context, value, child) {
                      // horizontal disposition of the widget.
                      return Transform.translate(
                        offset: Offset(
                            value * 500,
                            0.0
                        ),
                        child: child,
                      );
                    },
                  ),
                  SizedBox(height: 20,),

                  //bounceOut


                  TweenAnimationBuilder(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.redAccent,
                    ),
                    duration: Duration(milliseconds: 6000),
                    curve: Curves.bounceOut,
                    tween: Tween(begin: 1.0, end: 0.0),
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(
                            value * 500,
                            0.0
                        ),
                        child: child,
                      );
                    },
                  ),
                  SizedBox(height: 20,),

                  TweenAnimationBuilder(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.yellowAccent,
                    ),
                    duration: Duration(milliseconds: 6000),
                    curve: Curves.bounceIn,
                    tween: Tween(begin: 1.0, end: 0.0),
                    builder: (context, value, child) {
                      // horizontal disposition of the widget.
                      return Transform.translate(
                        offset: Offset(
                            value * 500,
                            0.0
                        ),
                        child: child,
                      );
                    },
                  ),
                  SizedBox(height: 20,),

                ]
            ))
    );





  }

}




