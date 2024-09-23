import 'package:get/get.dart';
import 'package:makanenakreborn/controllers/route.dart'; // Import routes for navigation

class MainController extends GetxController {
  var currentIndex = 0.obs;

  final List<String> routes = [
    AppRoutes.food,
    AppRoutes.drink,
    AppRoutes.favorites,
  ];

  void changeTab(int index) {
    currentIndex.value = index;
    Get.toNamed(routes[index], id: 1); // Use nested navigation for the tabs
  }
}
