import 'package:flutter/material.dart';

class AddHere extends StatelessWidget {
  const AddHere({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Add Here',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
