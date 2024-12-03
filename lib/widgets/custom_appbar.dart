import 'package:flutter/material.dart';

class CustomAppbarr extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Text(
        "Counter App",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color(0xff742047),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
