import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/culinary_controller.dart';
import '../widgets/favorite_card.dart';

class FavoriteListView extends StatelessWidget {
  final CulinaryController controller = Get.put(CulinaryController());

  @override
  Widget build(BuildContext context) {
    controller.loadFavorites();

    return Scaffold(
      appBar: AppBar(
         title: Text("Favorite List"),
         centerTitle: true, 
         titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: Obx(() {
        if (controller.favoriteFoods.isEmpty && controller.favoriteDrinks.isEmpty) {
          return Center(child: Text("Looks like you haven't added any favorite food/drink here"));
        }
        return ListView(
          children: [
            ...controller.favoriteFoods.map((food) => FoodDrinkCard(
              item: food,
              isFavorite: food.isFavorite,
              onFavoriteToggle: () {
                controller.removeFromFavoritesFood(food);
              },
            )),
            ...controller.favoriteDrinks.map((drink) => FoodDrinkCard(
              item: drink,
              isFavorite: drink.isFavorite,
              onFavoriteToggle: () {
                controller.removeFromFavoritesDrink(drink);
              },
            )),
          ],
        );
      }),
    );
  }
}
