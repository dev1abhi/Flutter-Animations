import 'package:flutter/material.dart';
import 'package:flutter_animations/Text/move_udlr_screen.dart';
import 'package:flutter_animations/helpers/colors.dart';
import 'package:flutter_animations/widgets/customAppBar.dart';
import 'package:get/get.dart';

class AnimatedTextWidget extends StatefulWidget {
  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 6));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainpagecolor,
      appBar: const CustomAppBar(title: "Text Animation"),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Opacity(
                  opacity: _animation.value,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Flutter',
                          style: TextStyle(fontSize: 24),
                        ),
                        _buildButtonRow(context, 'UP', 'down'),
                        _buildButtonRow(context, 'right', 'left'),
                        _buildButtonRow(context, 'Rotate', 'Scale'),
                        _buildSingleButton(context, 'colorize','Colorize' )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Row _buildButtonRow(BuildContext context, String type1, String type2) {
    return Row(
      children: [
        Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AnimatedTextWidget2(animationType: type1),
                  ),
                );
              },
              child: Text(type1),
            );
          },
        ),
        const SizedBox(width: 15),
        Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AnimatedTextWidget2(animationType: type2),
                  ),
                );
              },
              child: Text(type2),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSingleButton(
      BuildContext context, String animationType, String label) {
    return Builder(
      builder: (context) {
        return ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AnimatedTextWidget2(animationType: animationType),
              ),
            );
          },
          child: Text(label),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
