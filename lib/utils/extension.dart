
import 'package:flutter/material.dart';


/// ADD THIS TO HEIGHT AND WIDTH
extension SpaceWidget on double{
  addHSpace(){
    return SizedBox(
      height: this,
    );
  }

  addWSpace(){
    return SizedBox(
      width: this,
    );
  }
}

class SizeConfig {
  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenWidth = 0.5;
  static double screenHeight =1 ;
  // static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    // orientation = _mediaQueryData.orientation;
  }
}


///



