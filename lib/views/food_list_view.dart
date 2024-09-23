import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/culinary_controller.dart';
import '../widgets/food_drink_card.dart';

class FoodListView extends StatelessWidget {
  final CulinaryController controller = Get.put(CulinaryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food List")),
      body: Obx(() {
        return ListView(
          children: controller.foods.map((food) {
            bool isFavorite = controller.favoriteFoods.contains(food);

            return FoodDrinkCard(
              item: food,
              isFavorite: isFavorite,
              onFavorite: () {
                if (isFavorite) {
                  controller.removeFromFavoritesFood(food);
                } else {
                  controller.addToFavoritesFood(food);
                }
              },
            );
          }).toList(),
        );
      }),
    );
  }
}
