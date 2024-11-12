import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/culinary_controller.dart';
import '../widgets/food_drink_card.dart';

class FoodListView extends StatelessWidget {
  final CulinaryController controller = Get.put(CulinaryController());

  @override
  Widget build(BuildContext context) {
    controller.loadFavorites();

    return Scaffold(
      appBar: AppBar(
         title: Text("Food List"),
         centerTitle: true, 
         titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: Obx(() {
        return ListView(
          children: controller.foods.map((food) {
            return FoodDrinkCard(
              item: food,
              isFavorite: food.isFavorite, // Gunakan isFavorite dari model
              onFavoriteToggle: () {
                if (food.isFavorite) {
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

