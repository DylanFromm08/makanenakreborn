import 'package:get/get.dart';
import '../models/food.dart';
import '../models/drink.dart';

class CulinaryController extends GetxController {
  var favoriteFoods = <Food>[].obs;
  var favoriteDrinks = <Drink>[].obs;

  var foods = <Food>[
    Food(name: "Nasi Goreng", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ksNt29EXAMrAnFmj5mKyv8m-qMFJQ1uW3A&s", description: "Fried rice with a mix of vegetables and chicken."),
    Food(name: "Rendang", imageUrl: "https://akcdn.detik.net.id/visual/2022/06/10/ilustrasi-rendang-1_169.jpeg?w=650", description: "Spicy beef stew slow-cooked in coconut milk."),
    Food(name: "Sate", imageUrl: "https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/07/14053934/Mudah-Dibuat-di-Rumah-Ini-Resep-Sate-Ayam-Bumbu-Kacang-yang-Lezat-.jpg", description: "Grilled skewered meat served with peanut sauce."),
    Food(name: "Gado-Gado", imageUrl: "https://img.jakpost.net/c/2017/01/31/2017_01_31_20436_1485827331._large.jpg", description: "Vegetable salad with peanut sauce."),
    Food(name: "Bakso", imageUrl: "https://assets.unileversolutions.com/recipes-v2/245281.jpg", description: "Meatballs served in savory broth."),
  ].obs;

  var drinks = <Drink>[
    Drink(name: "Teh Tarik", imageUrl: "https://cdn0-production-images-kly.akamaized.net/u3Gg97ZxdVnLolkxHCMTW-N4-w8=/0x266:6000x3648/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4704666/original/007240700_1704248548-shutterstock_2303619675.jpg", description: "Pulled tea with condensed milk."),
    Drink(name: "Jus Mangga", imageUrl: "https://cdn1-production-images-kly.akamaized.net/CnUG7WDE-5Ig4XDFo09qnaw3K74=/500x281/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3267602/original/032516000_1602679181-shutterstock_573811555.jpg", description: "Fresh mango juice."),
    Drink(name: "Es Teh", imageUrl: "https://asset.kompas.com/crops/GRGOpdUcySMF4sTvMlSEpJpFcTM=/0x0:4939x3293/750x500/data/photo/2022/09/25/63300cfd403f0.jpg", description: "Iced sweet tea."),
    Drink(name: "Kopi", imageUrl: "https://cdn.rri.co.id/berita/Takengon/o/1717123848169-IMG_7383/nos50gadq67gvfd.jpeg", description: "Strong brewed coffee."),
    Drink(name: "Soda", imageUrl: "https://d324bm9stwnv8c.cloudfront.net/article/20180919192822.4561412166079.png", description: "Carbonated soft drink."),
  ].obs;

   
  void addToFavoritesFood(food) {
    favoriteFoods.add(food);
  }


  void removeFromFavoritesFood(food) {
    favoriteFoods.remove(food);
  }


  void addToFavoritesDrink(drink) {
    favoriteDrinks.add(drink);
  }


  void removeFromFavoritesDrink(drink) {
    favoriteDrinks.remove(drink);
  }
}

