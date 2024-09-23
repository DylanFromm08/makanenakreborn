import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/culinary_controller.dart';
import '../widgets/food_drink_card.dart';

class FavoriteListView extends StatelessWidget {
  final CulinaryController controller = Get.put(CulinaryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite List")),
      body: Obx(() {
        if (controller.favoriteFoods.isEmpty && controller.favoriteDrinks.isEmpty) {
          return Center(child: Text("Looks like you haven't added any favorite food/drink here"));
        }
        return ListView(
          children: [
            ...controller.favoriteFoods.map((food) => FoodDrinkCard(
              item: food,
              isFavorite: true, // Already a favorite in this view
              onFavorite: () {
                controller.removeFromFavoritesFood(food);
              },
            )),
            ...controller.favoriteDrinks.map((drink) => FoodDrinkCard(
              item: drink,
              isFavorite: true, // Already a favorite in this view
              onFavorite: () {
                controller.removeFromFavoritesDrink(drink);
              },
            )),
          ],
        );
      }),
    );
  }
}
