import 'package:flutter/material.dart';

class MySubscription extends StatelessWidget {
  const MySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'My Subscription',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
