import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../controllers/drawercontroller.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({Key? key}) : super(key: key);

  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationcontroller;
  late Animation<Color?> coloranimation;

  @override
  void initState() {
    super.initState();
    animationcontroller = AnimationController(vsync: this, duration: const Duration(seconds: 5));

    coloranimation = ColorTween(begin: Colors.green, end: Colors.orange).animate(animationcontroller);
    animation = Tween<double>(begin: 220, end: 50).animate(animationcontroller);

    animationcontroller.addListener(() {
      setState(() {});
    });
    animationcontroller.forward();
  }

  void onPressed() {
    
    animationcontroller.forward(from: 0.0);
  }

  @override
  void dispose() {
    animationcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainpagecolor,
        title: const Text('Tween Animation'),
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
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: coloranimation.value,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(Icons.replay),
      ),
    );
  }
}
