import 'package:blume_shopping_app/utils/theme_services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:blume_shopping_app/screens/intro_screens/intro_screen.dart';
import 'package:blume_shopping_app/screens/landing_screens/landing_screen.dart';
import 'package:blume_shopping_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  await GetStorage.init();
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
      themeMode:ThemeService().theme,
      home:  IntroScreen(),
    );
  }
}



