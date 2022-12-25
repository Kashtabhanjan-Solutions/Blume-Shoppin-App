

import 'package:blume_shopping_app/constant/app_assets.dart';
import 'package:blume_shopping_app/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// BuildContext context = context;


 TextStyle  smallText(BuildContext ctx){
   return TextStyle(
       fontWeight: FontWeight.bold,
       fontSize: 13,
       fontFamily: AppAssets.defaultFont,
        color: ctx.theme.textTheme.headline1?.color,
   );

 }

class AppTextStyle{
   BuildContext? ctx;

   late TextTheme textTheme;

   AppTextStyle({required this.ctx}) {
   //   textTheme  = Theme.of(context).textTheme;
   }

 //  AppTextStyle({required this.context});
  // BuildContext context = context;

  // var BuildContext? context = Get.key.currentContext;
 //  late BuildContext? context;
  
  static TextStyle smallText = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      fontFamily: AppAssets.defaultFont,
      color: AppColor.introScreenTextColor);


  static TextStyle largeTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      fontFamily: AppAssets.defaultFont,
     //  color: this.ctx.textTheme.headline1!.color,
  );

  static TextStyle buttonStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 17,
      fontFamily: AppAssets.defaultFont,
      color: AppColor.introScreenTextColor
  );
}
class MyUtility {
  BuildContext context;

  MyUtility(this.context) : assert (context != null);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}