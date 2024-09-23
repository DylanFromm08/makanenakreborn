import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/route.dart'; // Import your route definitions
import 'controllers/main_controller.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
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
      initialRoute: AppRoutes.main, // Start with MainView route
      getPages: AppPages.pages, // Use defined routes
    );
  }
}
