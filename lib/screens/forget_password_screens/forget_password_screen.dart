import 'package:blume_shopping_app/constant/app_icon.dart';
import 'package:blume_shopping_app/utils/extension.dart';
import 'package:blume_shopping_app/widget/app_button.dart';
import 'package:blume_shopping_app/widget/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_text.dart';
import '../../theme/text_style.dart';
import '../update_password_screens/update_password_screen.dart';

class ForgetPassWordScreen extends StatelessWidget {
  const ForgetPassWordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: AppIcon.backTextIcon(context).paddingOnly(left: 10).marginOnly(top: 40)),
            Text(
              AppConstText.forGetPassWord,
              style: AppTextStyle.largeTextStyle(context),
            ).paddingOnly(left: 20).marginOnly(top: 40),
            10.0.addHSpace(),
            Text(
              "Please enter your email address and we will send your password by email immadiatly.",
              style: AppTextStyle.smallText(context,color: AppColor.textLightColor),
            ).marginOnly(top: 40,right: 30,left: 30),

            Container(
              height: size/20,
            ),

            AppTextField(labelText: "Email",).marginOnly(top: 40,right: 30,left: 30),

            Container(
              height: size/40,
            ),
            
            AppButton(text: "SEND", onTap: (){
              Get.to(const UpdatePassWordScreen());
            }),

            10.0.addHSpace(),

          ],
        ),
      ),
    );
  }
}
