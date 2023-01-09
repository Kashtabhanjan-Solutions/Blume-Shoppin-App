import 'package:blume_shopping_app/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../../constant/app_text.dart';
import '../../widget/app_button.dart';
import '../../widget/app_textfield.dart';

class SignUpEmailScreen extends StatelessWidget {
  const SignUpEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size / 3,
              color: AppColor.appBarColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child:  AppIcon.backTextIcon(context,color: Colors.white).paddingOnly(left: 10).marginOnly(top: 40),
                  ),

                  Text(
                    AppConstText.createAccount,
                    style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                  ).paddingOnly(left: 20).marginOnly(top: 40),


                ],
              ),
            ),

            Container(
              color: context.theme.backgroundColor,
              child: Column(
                children: [
                  Container(
                    height: size / 10,
                  ),
                  AppTextField(
                    labelText: "Name",
                  ).paddingSymmetric(horizontal: 30),
                  Container(
                    height: size / 35,
                  ),
                  AppTextField(
                    labelText: "Email",
                  ).paddingSymmetric(horizontal: 30),
                  Container(
                    height: size / 35,
                  ),
                  AppTextField(
                    labelText: "Password",
                  ).paddingSymmetric(horizontal: 30),
                  Container(
                    height: size / 15,
                  ),
                  AppButton(text: "Email", onTap: () {
                    // Get.to(const ForgetPassWordScreen());
                  }),
                  10.0.addHSpace(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
