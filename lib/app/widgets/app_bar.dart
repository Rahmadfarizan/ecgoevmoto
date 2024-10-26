import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Landing Page'),
      actions: [
        TextButton(onPressed: () => Get.toNamed('/home'), child: Text('Home')),
        TextButton(onPressed: () => Get.toNamed('/about'), child: Text('About')),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
