import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';

class Typewriter extends StatefulWidget {
  const Typewriter({ Key? key }) : super(key: key);

  @override
  _TypewriterState createState() => _TypewriterState();
}

class _TypewriterState extends State<Typewriter> {
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
        title: Text("Type Writer Animation"),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(
  width: 250.0,
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 30.0,
      fontFamily: 'Agne',
    ),
    child: AnimatedTextKit(
      key: animatedTextKitKey,
      animatedTexts: [
        TypewriterAnimatedText('Single codebase for all platforms.'),
        TypewriterAnimatedText('Expressive and customizable UIs.'),
        TypewriterAnimatedText('High performance with fast rendering.'),
        TypewriterAnimatedText('Quick deployment and reduced costs.'),
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
      floatingActionButton: FloatingActionButton(onPressed: restartAnimation,child: Icon(Icons.repeat),),
      
    );
  }
}