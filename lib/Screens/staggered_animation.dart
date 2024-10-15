import 'package:flutter/material.dart';
import 'package:flutter_animations/controllers/drawercontroller.dart';
import 'package:flutter_animations/helpers/colors.dart';

class StaggeredAnimation extends StatefulWidget {
  const StaggeredAnimation({Key? key}) : super(key: key);

  @override
  _StaggeredAnimationState createState() => _StaggeredAnimationState();
}

class _StaggeredAnimationState extends State<StaggeredAnimation>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late List<Animation<Offset>> animations = [];
  final int count = 5;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    animations = List.generate(
      count,
      (index) => Tween(begin: const Offset(-1, 0), end: Offset.zero).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Interval(index * 0.2, 1, curve: Curves.easeOut),
        ),
      ),
    );

    // Add listener to trigger rebuild when animation completes
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed || status == AnimationStatus.dismissed) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  bool isCompleted() {
    return animationController.isCompleted;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainpagecolor,
        title: const Text('Staggered Animations'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            MyDrawerController.to.toggleDrawer();
            MyDrawerController.to.update();
          },
          hoverColor: Colors.white,
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: count,
        itemBuilder: (context, index) {
          return SlideTransition(
            position: animations[index],
            child: ListTile(
              title: Text("Hello, This app contains all the animations ${index + 1}"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (animationController.isCompleted) {
            animationController.reverse();
          } else {
            animationController.forward();
          }
        },
        child: Icon(
          isCompleted() ? Icons.repeat : Icons.play_arrow,
        ),
      ),
    );
  }
}
