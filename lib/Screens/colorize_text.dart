import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/drawercontroller.dart';

class colorize_text extends StatefulWidget {
  const colorize_text({super.key});

  @override
  State<colorize_text> createState() => _colorize_text();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _colorize_text extends State<colorize_text> {
  // Whether the green box should be visible
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainpagecolor,
      appBar: AppBar(
        backgroundColor: mainpagecolor,
        title: const Text('Fade in / Fade out demo'),
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
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            ColorizeAnimatedText(
              'Hello Aliens!',
              textStyle: GoogleFonts.cabin(
                  color: const Color.fromARGB(255, 174, 176, 229),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.blue,
                Colors.teal,
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
