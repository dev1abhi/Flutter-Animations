import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';

class Colourize extends StatefulWidget {
  const Colourize({ Key? key }) : super(key: key);

  @override
  _ColourizeState createState() => _ColourizeState();
}

class _ColourizeState extends State<Colourize> {
      Key animatedTextKitKey = UniqueKey();

  void restartAnimation() {
    setState(() {
      // Changing the key forces the widget to rebuild and restart animation.
      animatedTextKitKey = UniqueKey();
    });
  }
  @override
             static const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

static const colorizeTextStyle = TextStyle(
  fontSize: 35.0,
  fontFamily: 'Horizon',
);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Colourize Text"),
        backgroundColor: mainpagecolor,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(
  width: 200.0,
  child: AnimatedTextKit(
    key:  animatedTextKitKey,
    animatedTexts: [
      ColorizeAnimatedText(
        'Cross-Platform',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),
      ColorizeAnimatedText(
        'Fast',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),
      ColorizeAnimatedText(
        'Flexible',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),
      ColorizeAnimatedText(
        'Open-Source',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),

    ],
    isRepeatingAnimation: true,
    repeatForever: true,
    onTap: () {
      print("Tap Event");
    },
  ),
),
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: restartAnimation,child: Icon(Icons.repeat),),
      
    );
  }
}