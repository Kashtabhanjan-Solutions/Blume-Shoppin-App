import 'package:blume_shopping_app/utils/extension.dart';
import 'package:blume_shopping_app/widget/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_text.dart';
import '../../theme/text_style.dart';

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
            Row(
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
            Text(
              AppConstText.forGetPassWord,
              style: AppTextStyle.largeTextStyle,
            ).paddingOnly(left: 20).marginOnly(top: 40),
            10.0.addHSpace(),
            Text(
              "Please enter your email address and we will send your password by email immadiatly.",
              style: smallText(context),
            ).marginOnly(top: 40,right: 30,left: 30),

            Container(
              height: size/20,
            ),

            AppTextField(labelText: "Email",).marginOnly(top: 40,right: 30,left: 30),

          ],
        ),
      ),
    );
  }
}
