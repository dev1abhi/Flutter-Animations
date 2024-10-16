import 'package:flutter/material.dart';
import 'package:flutter_animations/helpers/colors.dart';
import '../controllers/drawercontroller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  void _handleMenuPressed(BuildContext context) {
    MyDrawerController.to.toggleDrawer();
    MyDrawerController.to.update();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: mainpagecolor,
      title: Text(title),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () => _handleMenuPressed(context),
        hoverColor: Colors.white,
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
