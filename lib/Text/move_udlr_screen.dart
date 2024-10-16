import 'package:flutter/material.dart';

class AnimatedTextWidget2 extends StatefulWidget {
  final String animationType;

  const AnimatedTextWidget2({super.key, required this.animationType});

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
    if (widget.animationType == 'left') {
      _animation = Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0, 0))
          .animate(_controller);
    } else if (widget.animationType == 'right') {
      _animation = Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
          .animate(_controller);
    } else if (widget.animationType == 'up') {
      _animation = Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
          .animate(_controller);
    } else if (widget.animationType == 'down') {
      _animation = Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0, 0))
          .animate(_controller);
    }
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Animation'),
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
