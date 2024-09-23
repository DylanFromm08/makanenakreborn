import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/culinary_controller.dart';
import '../widgets/food_drink_card.dart';

class DrinkListView extends StatelessWidget {
  final CulinaryController controller = Get.put(CulinaryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drink List")),
      body: Obx(() {
        return ListView(
          children: controller.drinks.map((drink) {
            bool isFavorite = controller.favoriteDrinks.contains(drink);

            return FoodDrinkCard(
              item: drink,
              isFavorite: isFavorite,
              onFavorite: () {
                if (isFavorite) {
                  controller.removeFromFavoritesDrink(drink);
                } else {
                  controller.addToFavoritesDrink(drink);
                }
              },
            );
          }).toList(),
        );
      }),
    );
  }
}
