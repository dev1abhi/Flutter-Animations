import 'package:flutter/material.dart';
import 'package:flutter_animations/controllers/drawercontroller.dart';
import 'package:flutter_animations/helpers/colors.dart';
import 'package:vector_math/vector_math.dart' as math;

class AnimatedDialog extends StatefulWidget {
  const AnimatedDialog({Key? key}) : super(key: key);

  @override
  State<AnimatedDialog> createState() => _AnimatedDialogState();
}

class _AnimatedDialogState extends State<AnimatedDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainpagecolor,
      appBar: AppBar(
        backgroundColor: mainpagecolor,
        title: const Text('Animated Dialog Box'),
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
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan, // Change this color to your desired button color
          ),
          onPressed: () {
            showGeneralDialog(
              context: context,
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                return Center(
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Hello!!'),
                        Text('How are you?'),
                        // Add more content as needed
                      ],
                    ),
                  ),
                );
              },
              barrierDismissible: true,
              barrierColor: Colors.black.withOpacity(0.4),
              barrierLabel: '',
              transitionBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return Transform.rotate(
                  angle: math.radians(animation.value * 360),
                  child: AlertDialog(
                    backgroundColor: Colors.cyan,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    title: Text('Animated Dialog Example'),
                    content: Text('Github: Imsurajr'),
                  ),
                );
              },
              transitionDuration: Duration(milliseconds: 300),
            );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
