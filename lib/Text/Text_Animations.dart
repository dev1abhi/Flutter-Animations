import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart'; // Assuming this holds mainpagecolor
import 'package:get/get.dart';

class TextAnimations extends StatefulWidget {
  const TextAnimations({Key? key}) : super(key: key);

  @override
  _TextAnimationsState createState() => _TextAnimationsState();
}

class _TextAnimationsState extends State<TextAnimations> {
  // Use a unique key to force the AnimatedTextKit to rebuild.
  Key animatedTextKitKey = UniqueKey();

  void restartAnimation() {
    setState(() {
      // Changing the key forces the widget to rebuild and restart animation.
      animatedTextKitKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainpagecolor,
      appBar: AppBar(
        backgroundColor: mainpagecolor,
        title: const Text('Text Animations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 20.0, height: 50.0),
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 43.0),
                ),
                const SizedBox(width: 20.0, height: 50.0),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(

                    key: animatedTextKitKey, // Assign the key here.
                    animatedTexts: [
                      RotateAnimatedText('UNIQUE'),
                      RotateAnimatedText('OPTIMISTIC'),
                      RotateAnimatedText('FAITHFUL'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },

                    repeatForever: true, // Ensure the animation continues.
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: restartAnimation,
              child: Icon(Icons.restart_alt),
            ),
          ),
        ],
      ),
    );
  }
}
