import 'package:flutter/material.dart';
import 'package:flutter_animations/Text/Colourize.dart';
import 'package:flutter_animations/Text/Scale_text.dart';
import 'package:flutter_animations/Text/Text_Animations.dart';
import 'package:flutter_animations/Text/Typewriter.dart';
import 'package:flutter_animations/helpers/colors.dart';

class AnimatedTextWidget2 extends StatefulWidget {
  final String animationType;
  AnimatedTextWidget2({required this.animationType});
  @override
  _AnimatedTextWidgetState2 createState() => _AnimatedTextWidgetState2();
}

class _AnimatedTextWidgetState2 extends State<AnimatedTextWidget2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    // Setup animations based on the type
    _animation = _getAnimation(widget.animationType);
    _controller.forward();
  }

  Animation<Offset> _getAnimation(String animationType) {
    switch (animationType) {
      case 'left':
        return Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0, 0))
            .animate(_controller);
      case 'right':
        return Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(_controller);
      case 'up':
        return Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(_controller);
      case 'down':
        return Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0, 0))
            .animate(_controller);
      default:
        return Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0, 0))
            .animate(_controller);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Handle special 'R' case by adding a button or logic here
    if (widget.animationType == 'Rotate') {
      Future.microtask(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TextAnimations(),
          ),
        );
      });
    }
    else if(widget.animationType=='Scale'){
      Future.microtask((){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScaleText(),),);
      });
    }
    else if(widget.animationType=='colorize'){
      Future.microtask((){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Colourize()));
      });
    }
    else if(widget.animationType=='writer'){
      Future.microtask((){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Typewriter()));
      });
    }

    return Scaffold(
      backgroundColor: mainpagecolor,
      appBar: AppBar(
        title: const Text('Text Animation'),
        backgroundColor: mainpagecolor,
      ),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: const Text(
            'Flutter Animation',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
