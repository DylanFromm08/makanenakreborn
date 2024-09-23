import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makanenakreborn/views/drink_list_view.dart';
import 'package:makanenakreborn/views/favorite_list_view.dart';
import 'package:makanenakreborn/views/food_list_view.dart';
import '../controllers/main_controller.dart'; // Import the controller
import '../controllers/route.dart'; // Import the routes

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: AppRoutes.food, // Default tab view
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case AppRoutes.food:
              return GetPageRoute(page: () => FoodListView());
            case AppRoutes.drink:
              return GetPageRoute(page: () => DrinkListView());
            case AppRoutes.favorites:
              return GetPageRoute(page: () => FavoriteListView());
            default:
              return null;
          }
        },
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: Get.find<MainController>().currentIndex.value,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Food"),
            BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: "Drink"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          ],
          onTap: (index) {
            Get.find<MainController>().changeTab(index);
          },
        );
      }),
    );
  }
}
