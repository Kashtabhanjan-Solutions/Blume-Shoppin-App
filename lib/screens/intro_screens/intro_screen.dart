import 'package:blume_shopping_app/constant/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_assets.dart';
import '../../constant/app_text.dart';
import '../../theme/text_style.dart';
import '../../utils/extension.dart';
import '../../widget/app_button.dart';
import '../../widget/app_divider.dart';
import '../login_screens/login_screen.dart';
import '../sign_up_email_screens/sign_up_email_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppAssets.introPageImage),
          fit: BoxFit.fitHeight,
        )),
        child: Column(
          children: [

            Container(
              height: size/100,
            ),

            InkWell(
              onTap: (){
                Get.to(const LoginScreen());
              },
              child: AppIcon.forwardTextIcon(context,color: Colors.white).paddingOnly(right: 10).marginOnly(top: 30),
            ),

            Container(
              height: size/2,
            ),
        //    const Spacer(flex: 2),

            Text(AppConstText.introScreenText,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),).marginSymmetric(horizontal: 30),
            Container(
              height: size/50,
            ),

            AppDivider(thickness: 0.5,).marginSymmetric(horizontal: 30),

            Container(
              height: size/20,
            ),

            AppButton(text: "SIGN UP WITH EMAIL",onTap: (){
              Get.to(const SignUpEmailScreen());
            }),

          ],
        ),
      ),
    );
  }
}
