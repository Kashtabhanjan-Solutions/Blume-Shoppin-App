import 'package:blume_shopping_app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  String text;
  VoidCallback onTap;

   AppButton({Key? key,required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        // splashColor: Colors.transparent,
        // borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.theme.buttonColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(child: Text(text , style: AppTextStyle.buttonStyle(context))),
      ).paddingSymmetric(horizontal: 27),
    );
  }
}

