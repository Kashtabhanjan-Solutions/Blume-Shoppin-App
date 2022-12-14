import 'package:blume_shopping_app/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {

  static TextStyle smallText = GoogleFonts.rubik(
      fontWeight: FontWeight.bold,
      fontSize: 12,
      color: AppColor.introScreenTextColor);


  static TextStyle introScreenStyle = GoogleFonts.rubik(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: AppColor.introScreenTextColor);
}
