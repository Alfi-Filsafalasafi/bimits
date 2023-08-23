import 'package:get/get.dart';

class HomeController extends GetxController {
  var box1Clicked = false.obs;
  var box2Clicked = false.obs;

  void toggleBox1() {
    box1Clicked.value = true;
    box2Clicked.value = false;
  }

  void toggleBox2() {
    box1Clicked.value = false;
    box2Clicked.value = true;
  }
}
