
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




