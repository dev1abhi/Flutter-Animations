import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart'; // Assuming mainpagecolor is defined here

class ScaleText extends StatefulWidget {
  const ScaleText({Key? key}) : super(key: key);

  @override
  _ScaleTextState createState() => _ScaleTextState();
}

class _ScaleTextState extends State<ScaleText> {
  @override
    Key animatedTextKitKey = UniqueKey();

  void restartAnimation() {
    setState(() {
      // Changing the key forces the widget to rebuild and restart animation.
      animatedTextKitKey = UniqueKey();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainpagecolor,
      appBar: AppBar(
        title: const Text("Scale Text Animation"),
        centerTitle: true,
        backgroundColor: mainpagecolor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ // The SizedBox must be part of the children list
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Canterbury',
                )  ,
                child: AnimatedTextKit(
                 key: animatedTextKitKey ,
                  animatedTexts: [
                    ScaleAnimatedText('FLUTTER'),
                    ScaleAnimatedText('ANIMATIONS'),
                    ScaleAnimatedText('COLLECTION'),
                  ],
                  repeatForever: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          
          ],
        ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: restartAnimation,child: Icon(Icons.restart_alt),),);
  }
}
