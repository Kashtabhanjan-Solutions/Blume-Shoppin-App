import 'package:flutter/material.dart';
import '../constant/app_color.dart';

class Themes{


  static final light = ThemeData.dark().copyWith(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    buttonColor: const Color(0xff242529),
    bottomAppBarColor: Colors.white,
    colorScheme: ThemeData().colorScheme.copyWith(primary:const Color(0xff17181A)),
    cardColor: const Color(0xff242529), /// APP BOTTOMNAVIGATION COLOR SET
    textTheme: const TextTheme(
         headline1: TextStyle(color: Color(0xff17181A)), /// App Text Theme color set,
         headline2: TextStyle(color: Color(0xff17181A)) /// APP BAR BACK AND GO BUTTON AND TEXT THEME SET
    ),
  );

  static final dark = ThemeData.light().copyWith(
    brightness: Brightness.dark,
    backgroundColor: const Color(0xff242529),
    buttonColor: const Color(0xff2F3541),
    bottomAppBarColor: const Color(0xff2F3541),
    colorScheme: ThemeData().colorScheme.copyWith(primary:  const Color(0xff17181A)),
    cardColor: const Color(0xffFFFFFF), /// APP BOTTOMNAVIGATION COLOR SET
    textTheme: const TextTheme(
       headline1: TextStyle(color: Colors.white), /// App Text Theme color set,
        headline2: TextStyle(color: Colors.white)  /// APP BAR BACK AND GO BUTTON AND TEXT THEME SET
    ),
  );


}