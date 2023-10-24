import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';
import '../controllers/drawercontroller.dart';


class fade_in_fade_out extends StatefulWidget {
  const fade_in_fade_out({super.key});

  @override
  State<fade_in_fade_out> createState() => _fade_in_fade_out();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _fade_in_fade_out extends State<fade_in_fade_out> {
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
    onPressed:() {
      MyDrawerController.to.toggleDrawer();
      MyDrawerController.to.update();

    },
    hoverColor: Colors.white,
    ),
    elevation: 0,
        ),

      body: Center(
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.green,
            ),

          ),
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

