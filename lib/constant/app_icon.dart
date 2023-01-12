import 'package:blume_shopping_app/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  /// STARTING SHOPPING SCREEN ICON
  static Widget localIcon(){
    return SvgPicture.asset(AppAssets.lockIcon,color: Colors.white,width: 55,height: 55,);
  }

  static Widget checkIcon(){
    return const  Icon(Icons.check,color: Colors.white,size: 30,);
  }


  /// SCREEN SCREEN ICON
  static Widget searchIcon(BuildContext context){
    return SvgPicture.asset(AppAssets.searchIcon,color: context.theme.backgroundColor,width: 20,height: 20,);
  }

  /// HOME SCREEN BOTTOM NAVIGATION ICON
  static Widget homeIcon({Color? color}){
    return SvgPicture.asset(AppAssets.homeIcon,color: color,width: 15,height: 15,);
  }

}