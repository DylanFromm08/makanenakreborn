import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/main_controller.dart';
import '../views/food_list_view.dart'; // Import FoodListView
import '../views/drink_list_view.dart'; // Import DrinkListView
import '../views/favorite_list_view.dart'; // Import FavoriteListView

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find(); // Get the controller from bindings

    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.currentIndex.value,
          children: [
            FoodListView(),
            DrinkListView(),
            FavoriteListView(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Food"),
            BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: "Drink"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          ],
          onTap: (index) {
            controller.changeTab(index);
          },
        );
      }),
    );
  }
}
