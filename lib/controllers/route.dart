import 'package:get/get.dart';
import 'package:makanenakreborn/views/drink_list_view.dart';
import 'package:makanenakreborn/views/favorite_list_view.dart';
import 'package:makanenakreborn/views/food_list_view.dart';
import 'package:makanenakreborn/views/main_view.dart';


class AppRoutes {
  static const String main = '/main';
  static const String food = '/food';
  static const String drink = '/drink';
  static const String favorites = '/favorites';
}


class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.main, page: () => MainView()),
    GetPage(name: AppRoutes.food, page: () => FoodListView()),
    GetPage(name: AppRoutes.drink, page: () => DrinkListView()),
    GetPage(name: AppRoutes.favorites, page: () => FavoriteListView()),
  ];
}
