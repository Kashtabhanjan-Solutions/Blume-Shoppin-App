import 'package:flutter/material.dart';
import '../constant/app_color.dart';

class Themes{

  static final light = ThemeData.dark().copyWith(
    brightness: Brightness.light,
    backgroundColor: AppColor.appLightThemeColor,
    buttonColor: AppColor.appDarkThemeColor,
    bottomAppBarColor: AppColor.appLightThemeBottomAppBarColor,
    colorScheme: ThemeData().colorScheme.copyWith(primary:const Color(0xff17181A)),
    textTheme: TextTheme(
         headline1: const TextStyle(color: Color(0xff17181A)), /// App Text Theme color set,
         headline2: const TextStyle(color: Color(0xff17181A)) /// APP BAR BACK AND GO BUTTON AND TEXT THEME SET
    ),
  );

  static final dark = ThemeData.light().copyWith(
    brightness: Brightness.dark,
    backgroundColor: AppColor.appDarkThemeColor,
    buttonColor: AppColor.appDarkThemeButtonColor,
    bottomAppBarColor: AppColor.appDarkThemeBottomAppBarColor,
    colorScheme: ThemeData().colorScheme.copyWith(primary:  const Color(0xff17181A)),
    textTheme: TextTheme(
       headline1: const TextStyle(color: Colors.white), /// App Text Theme color set,
        headline2: const TextStyle(color: Colors.white)  /// APP BAR BACK AND GO BUTTON AND TEXT THEME SET
    ),
  );


}