import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/route.dart'; // Import your route definitions

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.orange,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
        ),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      initialRoute: AppRoutes.main,
      getPages: AppPages.pages,
    );
  }
}
