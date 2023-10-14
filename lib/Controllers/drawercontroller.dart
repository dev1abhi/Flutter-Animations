import 'package:flutter/widgets.dart';
import 'package:flutter_animations/Screens/explicit_animation.dart';
import 'package:flutter_animations/Screens/fade_in_fade_out.dart';
import 'package:flutter_animations/Screens/water_drop_effect.dart';
import 'package:flutter_animations/Screens/ripple_animation.dart';
import 'package:flutter_animations/Text/tex_screen.dart';
import 'package:flutter_animations/screens/bounce_animation.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import '../Screens/animated_dialog.dart';
import '../Screens/mainscreen.dart';

class MyDrawerController extends GetxController {
  final RxInt selectedMenuItem = 0.obs; // Use Rx for reactive programming
  final zoomDrawerController = ZoomDrawerController();

  static MyDrawerController get to => Get.find();

  // Add your screens here
  final mainScreen1 = const MainScreen();
  final mainScreen2 = const fade_in_fade_out();
  final mainScreen3 = AnimatedTextWidget();
  final mainScreen4 = const WaterDropEffect();
  final mainScreen5 = const RipplesAnimation();
  final mainScreen6 = Bounce();
  final mainScreen7 = ExplicitAnimations();
  final mainScreen8 = AnimatedDialog();


  // Getter to get the current main screen based on the selectedMenuItem
  Widget get currentMainScreen {
    switch (selectedMenuItem.value) {
      case 0:
        return mainScreen1;
      case 1:
        return mainScreen2;
      case 2:
        return mainScreen3;
      case 3:
        return mainScreen4;
      case 4:
        return mainScreen5;
      case 5 :
        return  mainScreen6 ;
      case 6 :
        return  mainScreen7 ;
      case 7 :
        return  mainScreen8 ;
    // Add more cases when you are adding new screen
      default:
        return mainScreen1; // Default to mainScreen1 if the selection is not recognized
    }
  }

  // Update the selected menu item and trigger a rebuild
  void updateMainScreen(int index) {
    selectedMenuItem.value = index;
    update();
  }

  //this is responsible for opening and closing of drawer
  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}
