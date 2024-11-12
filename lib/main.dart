import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: Color(0xFF1F1F1F),
        cardColor: Color(0xFF2C2C2C),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF2C2C2C),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF2C2C2C),
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          elevation: 8,
        ),
      ),
      initialRoute: AppRoutes.main,
      getPages: AppPages.pages,
    );
  }
}
