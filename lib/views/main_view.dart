import 'package:flutter/material.dart';
import 'food_list_view.dart';
import 'drink_list_view.dart';
import 'favorite_list_view.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _views = [
    FoodListView(),
    DrinkListView(),
    FavoriteListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.orange,  // Selected icon color
        unselectedItemColor: Colors.grey,  // Unselected icon color
        backgroundColor: Colors.white,     // BottomNav background color
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: "Drink"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
