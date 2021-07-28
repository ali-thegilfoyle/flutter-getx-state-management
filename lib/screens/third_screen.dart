import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const String id = 'second_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Third screen'),
          ],
        ),
      ),
    );
  }
}
