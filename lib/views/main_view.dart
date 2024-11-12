import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/main_controller.dart';
import '../views/food_list_view.dart';
import '../views/drink_list_view.dart';
import '../views/favorite_list_view.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();

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
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              selectedItemColor: Colors.deepOrange,
              unselectedItemColor: Colors.grey,
              backgroundColor: Theme.of(context).cardColor,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant_menu),
                  label: "Food",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_bar),
                  label: "Drinks",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorites",
                ),
              ],
              onTap: controller.changeTab,
            ),
          ),
        );
      }),
    );
  }
}
