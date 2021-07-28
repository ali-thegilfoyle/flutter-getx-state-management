import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final user = User().obs;

  updateUser(int count) {
    user.update((value) {
      value.name = "Ali";
      value.count = count;
    });
  }
}
