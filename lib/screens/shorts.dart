import 'package:flutter/material.dart';

class MyShorts extends StatelessWidget {
  const MyShorts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'My Shorts',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
