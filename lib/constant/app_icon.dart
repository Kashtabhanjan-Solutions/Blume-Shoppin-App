import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_text.dart';

class AppIcon{
  static Widget backTextIcon(BuildContext context,{IconData? icon,Color? color}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.arrow_back_ios_outlined, color: color ??  context.theme.textTheme.headline2!.color, size: 15),
        Text(AppConstText.backText,style: TextStyle(color: color ?? context.theme.textTheme.headline2!.color,fontWeight: FontWeight.bold),),
      ],
    );
  }


  static Widget forwardTextIcon(BuildContext context,{IconData? icon,Color? color}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(AppConstText.signINText,style: TextStyle(color: color ??  context.theme.textTheme.headline2!.color,fontWeight: FontWeight.bold),),
        Icon(Icons.arrow_forward_ios_outlined, color: color ??  context.theme.textTheme.headline2!.color, size: 15),
      ],
    );
  }

}