import 'package:day1/screens/home/body.dart';
import 'package:day1/screens/home/explore.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Explore(),
          MyBody(),
        ],
      ),
    );
  }
}
