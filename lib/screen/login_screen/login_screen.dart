import 'package:blume_shopping_app/utils/extension.dart';
import 'package:blume_shopping_app/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_text.dart';
import '../../theme/text_style.dart';
import '../../widget/app_textfield.dart';
import '../forget_password_screens/forget_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.arrow_back_ios_outlined,
                            color: Colors.white, size: 15),
                        Text(
                          AppConstText.backText,
                          style: smallText(context),
                        ),
                      ],
                    ).paddingOnly(left: 10).marginOnly(top: 40),
                  ),

                  Text(
                    AppConstText.loginINYAccount,
                    style: AppTextStyle.largeTextStyle,
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
                    labelText: "Email",
                  ).paddingSymmetric(horizontal: 30),
                  Container(
                    height: size / 35,
                  ),
                  AppTextField(
                    labelText: "Password",
                  ).paddingSymmetric(horizontal: 30),
                  Container(
                    height: size / 5,
                  ),
                  AppButton(text: "SIGN IN", onTap: () {
                    Get.to(const ForgetPassWordScreen());
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
