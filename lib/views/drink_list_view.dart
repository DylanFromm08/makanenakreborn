import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/culinary_controller.dart';
import '../widgets/food_drink_card.dart';

class DrinkListView extends StatelessWidget {
  final CulinaryController controller = Get.put(CulinaryController());

  @override
  Widget build(BuildContext context) {
    controller.loadFavorites();

    return Scaffold(
      appBar: AppBar(
         title: Text("Drink List"),
         centerTitle: true, 
         titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: Obx(() {
        return ListView(
          children: controller.drinks.map((drink) {
            return FoodDrinkCard(
              item: drink,
              isFavorite: drink.isFavorite, // Gunakan isFavorite dari model
              onFavoriteToggle: () {
                if (drink.isFavorite) {
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
