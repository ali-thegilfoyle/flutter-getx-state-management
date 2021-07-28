import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/screens/forth_screen.dart';
import 'package:flutter_getx_statemanagement/screens/third_screen.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  static const String id = 'second_screen';
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var dataFromFourth = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Second Screen'),
            RaisedButton(
              onPressed: () {
                Get.off(ThirdScreen());
              },
              child: Text('Go to Third and remore this screen from stack.'),
            ),
            RaisedButton(
              onPressed: () {
                /* it will remove all the screens from stack included home screen. it means you app will close after pressing it. */
                Get.offAll(ThirdScreen());
              },
              child: Text('Go to Third and remove everything from stack'),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Data from Fourth Screen: '),
                Text(dataFromFourth)
              ],
            ),
            RaisedButton(
              onPressed: () async {
                dataFromFourth = await Get.to(FourthScreen());
                setState(() {});
              },
              child: Text('Return Data from forth'),
            ),
            RaisedButton(
              onPressed: () {
                Get.to(FourthScreen(), arguments: 'Hello from second screen');
              },
              child: Text('Pass parameter to Fourth Screen'),
            )
          ],
        ),
      ),
    );
  }
}
