import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/main_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange, // Main color of the app
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.orange, // AppBar color
          iconTheme: IconThemeData(color: Colors.white), // AppBar icon color
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.orange, // Selected icon color
          unselectedItemColor: Colors.grey, // Unselected icon color
        ),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      home: MainView(), // Your main view with bottom navigation
    );
  }
}
