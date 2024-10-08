import 'package:get/get.dart';
import 'package:makanenakreborn/views/drink_list_view.dart';
import 'package:makanenakreborn/views/favorite_list_view.dart';
import 'package:makanenakreborn/views/food_list_view.dart';
import 'package:makanenakreborn/views/main_view.dart';
import 'package:makanenakreborn/binding/binding.dart'; // Import the binding

class AppRoutes {
  static const main = '/'; // Main view route
  static const food = '/food'; // Food view route
  static const drink = '/drink'; // Drink view route
  static const favorites = '/favorites'; // Favorites view route
}

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.main,
      page: () => MainView(),
      binding: MainBinding(), // Use the MainBinding to inject dependencies
    ),
    GetPage(
      name: AppRoutes.food,
      page: () => FoodListView(),
      binding: MainBinding(), // Use the same binding if it uses the same controller
    ),
    GetPage(
      name: AppRoutes.drink,
      page: () => DrinkListView(),
      binding: MainBinding(), // Reusing the same binding
    ),
    GetPage(
      name: AppRoutes.favorites,
      page: () => FavoriteListView(),
      binding: MainBinding(), // Reusing the same binding
    ),
  ];
}
