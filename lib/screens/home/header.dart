import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.green,
      width: double.infinity,
      height: Get.height * 0.1,
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.translate(
                offset: const Offset(4, 0),
                child: Image.asset(
                  'Assets/Photos/Youtube_logo.jpg',
                  width: 45,
                  height: 45,
                ),
              ),
              Transform.translate(
                offset: const Offset(5, 7),
                child: const Text(
                  'Youtube',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Get.height * 0.1);
}
