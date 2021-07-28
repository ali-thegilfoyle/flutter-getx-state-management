import 'package:get/get.dart';

class CountController extends GetxController {
  //obs observe the count variable and update whenever it change.
  // var count = 0.obs;

  //don't need obs with value when use get builder.
  var count = 0;

  //method to update count value;
  increment() {
    count++;
    update();
  }
}
