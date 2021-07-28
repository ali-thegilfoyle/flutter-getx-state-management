import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/controllers/count_controller.dart';
import 'package:flutter_getx_statemanagement/controllers/user_controller.dart';
import 'package:flutter_getx_statemanagement/screens/second_screen.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  // we can directly initialize controller inside the get builder widget.
  // final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX | State Management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // On update approach of GetX state management.
            GetBuilder<CountController>(
              init: CountController(),
              builder: (_) {
                return Text('Update State and Increase Count:   ${_.count}');
              },
            ),
            SizedBox(height: 16),
            // Reactive approach of GetX state management.
            GetX<UserController>(
              init: UserController(),
              builder: (_) {
                return Column(
                  children: [
                    Text('Name: ${_.user.value.name}'),
                    Text('Count: ${_.user.value.count}'),
                  ],
                );
              },
            ),
            RaisedButton(
              onPressed: () {
                Get.find<UserController>().updateUser(3);
              },
              child: Text('Update Name & Count'),
            ),
            RaisedButton(
              onPressed: () {
                Get.to(SecondScreen());
              },
              child: Text('Go to second screen'),
            ),
            RaisedButton(
              onPressed: () {
                Get.snackbar(
                    'Snackbar', 'Hello world this is the GetX snackbar',
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text('Snakbar'),
            ),
            RaisedButton(
              onPressed: () {
                Get.dialog(
                  Text('Hello how are you?'),
                );
              },
              child: Text('Dialog'),
            ),
            RaisedButton(
              onPressed: () {
                Get.bottomSheet(
                  Text('Hello this is bottom sheet.'),
                );
              },
              child: Text('Bottom sheet'),
            ),
            SizedBox(height: 40),
            RaisedButton(
              onPressed: () {
                Get.toNamed(SecondScreen.id);
              },
              child: Text('Named Routes: go to second screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CountController>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
