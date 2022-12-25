import 'package:blume_shopping_app/screen/forget_password_screens/forget_password_screen.dart';
import 'package:blume_shopping_app/screen/intro_screen/intro_screen.dart';
import 'package:blume_shopping_app/screen/login_screen/login_screen.dart';
import 'package:blume_shopping_app/theme/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.dark,
      home: const IntroScreen(),
    );
  }
}



