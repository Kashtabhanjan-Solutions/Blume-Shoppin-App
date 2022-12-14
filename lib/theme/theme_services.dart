import 'package:flutter/material.dart';
import '../constant/app_color.dart';

class Themes{
  static final light = ThemeData.light().copyWith(
    brightness: Brightness.dark,
    backgroundColor: AppColor.appLightThemeColor,
    buttonColor: AppColor.appDarkThemeColor,

    bottomAppBarColor: AppColor.appLightThemeBottomAppBarColor,
  );

  static final dark = ThemeData.light().copyWith(
    backgroundColor: AppColor.appLightThemeColor,
    buttonColor: AppColor.appDarkThemeButtonColor,
    bottomAppBarColor: AppColor.appDarkThemeBottomAppBarColor,
  );
}