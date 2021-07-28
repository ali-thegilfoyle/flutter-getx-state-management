import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/screens/forth_screen.dart';
import 'package:flutter_getx_statemanagement/screens/main_screen.dart';
import 'package:flutter_getx_statemanagement/screens/second_screen.dart';
import 'package:flutter_getx_statemanagement/screens/third_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //this is get material app.
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
      getPages: [
        GetPage(name: SecondScreen.id, page: () => SecondScreen()),
        GetPage(name: ThirdScreen.id, page: () => ThirdScreen()),
        GetPage(name: FourthScreen.id, page: () => FourthScreen()),
      ],
    );
  }
}
