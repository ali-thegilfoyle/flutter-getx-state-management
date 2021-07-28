import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthScreen extends StatelessWidget {
  static const String id = 'second_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Get.arguments != null ? Text(Get.arguments) : Text('NOTHING SENT'),
            RaisedButton(
              child: Text('Return: Hello'),
              onPressed: () {
                Get.back(result: 'Hello');
              },
            ),
            RaisedButton(
              child: Text('Return: World'),
              onPressed: () {
                Get.back(result: 'World');
              },
            )
          ],
        ),
      ),
    );
  }
}
