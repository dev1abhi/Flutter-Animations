import 'package:flutter/material.dart';

import 'package:flutter_animations/controllers/drawercontroller.dart';
import 'package:flutter_animations/helpers/colors.dart';


class ExplicitAnimations extends StatefulWidget {
  const ExplicitAnimations({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimations> createState() => _ExplicitAnimationsState();
}

class _ExplicitAnimationsState extends State<ExplicitAnimations>
    with SingleTickerProviderStateMixin {

      bool shouldRefresh = false; 

  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {

              setState(() {
                shouldRefresh = !shouldRefresh;
              });


          },

              icon: const Icon(Icons.refresh_rounded))
          ],
          backgroundColor: mainpagecolor,
          title: const Text('explicit animation'),


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
     body: Container(
       
        child: AlignTransition(
          alignment: _alignAnimation,
          child: RotationTransition(
            turns: _rotationAnimation,
            child: Container(
    
              decoration: BoxDecoration(color: Colors.deepPurple,borderRadius: BorderRadius.circular(30)),
            
              
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}