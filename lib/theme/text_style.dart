import 'package:blume_shopping_app/constant/app_assets.dart';
import 'package:blume_shopping_app/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';









class AppTextStyle {

  static TextStyle smallText(BuildContext context,{Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      fontFamily: AppAssets.defaultFont,
      color: color ??  context.theme.textTheme.headline1?.color,
    );
  }

  static TextStyle largeTextStyle(BuildContext context,{Color? color}){
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      fontFamily: AppAssets.defaultFont,
      color: color ??  context.textTheme.headline1!.color,
    );
  }

  static TextStyle buttonStyle(BuildContext context){
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 17,
      fontFamily: AppAssets.defaultFont,
    );
  }
}
