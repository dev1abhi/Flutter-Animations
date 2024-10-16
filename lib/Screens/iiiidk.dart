import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';
import '../controllers/drawercontroller.dart';

class IdK extends StatefulWidget {
  const IdK({super.key});

  @override
  State<IdK> createState() => _IdK();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _IdK extends State<IdK> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _slideAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleVisibility() {
    setState(() {
      _visible = !_visible;
      if (_visible) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainpagecolor,
      appBar: AppBar(
        backgroundColor: mainpagecolor,
        title: const Text('hello'),
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
        child: SlideTransition(
          position: _slideAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleVisibility,
        tooltip: 'Toggle Scale & Slide',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
