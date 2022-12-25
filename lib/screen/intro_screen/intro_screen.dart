import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_assets.dart';
import '../../constant/app_text.dart';
import '../../theme/text_style.dart';
import '../../utils/extension.dart';
import '../../widget/app_button.dart';
import '../../widget/app_divider.dart';
import '../login_screen/login_screen.dart';

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
                Get.to(LoginScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(AppConstText.signINText,style: smallText(context),),
                  const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white, size: 15)
                ],
              ).paddingOnly(right: 10).marginOnly(top: 30),
            ),

            Container(
              height: size/2,
            ),
        //    const Spacer(flex: 2),

            Text(AppConstText.introScreenText,style: AppTextStyle.largeTextStyle,).marginSymmetric(horizontal: 30),
            Container(
              height: size/50,
            ),

            AppDivider(thickness: 0.5,).marginSymmetric(horizontal: 30),

            Container(
              height: size/20,
            ),

            AppButton(text: "SIGN UP WITH EMAIL",onTap: (){}),

          ],
        ),
      ),
    );
  }
}
