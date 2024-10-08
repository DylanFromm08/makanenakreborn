import 'package:get/get.dart';

class MainController extends GetxController {
  // Current index for bottom navigation
  var currentIndex = 0.obs;

  // Function to change the tab index
  void changeTab(int index) {
    currentIndex.value = index;
  }
}
  