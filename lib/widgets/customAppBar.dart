import 'package:flutter/material.dart';

import '../Colors/colors.dart';
import '../Controllers/drawercontroller.dart';

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
        icon: Icon(Icons.menu),
        onPressed: () => _handleMenuPressed(context),
        hoverColor: Colors.white,
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
