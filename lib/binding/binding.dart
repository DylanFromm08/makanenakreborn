import 'package:get/get.dart';
import 'package:makanenakreborn/controllers/main_controller.dart';
import 'package:makanenakreborn/controllers/culinary_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // Here we bind the MainController and CulinaryController
    Get.put(MainController()); // This binds MainController
    Get.put(CulinaryController()); // This binds CulinaryController
  }
}
