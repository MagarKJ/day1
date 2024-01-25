import 'package:flutter/material.dart';

class AppHeader2 extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader2({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'Assets/Photos/Youtube_logo.jpg',
            width: 45,
            height: 45,
          ),
          const Text(
            'Youtube',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 8);
}
