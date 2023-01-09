import 'package:blume_shopping_app/theme/text_style.dart';
import 'package:blume_shopping_app/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';
import '../landing_screens/landing_screen.dart';

class StartShoppingScreen extends StatelessWidget {
  const StartShoppingScreen({Key? key}) : super(key: key);

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

            Container(
              height: size/ 8,
            ),

            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 170,
                  width: 170,
                  decoration: const BoxDecoration(
                    color: Color(0xff2D333E),
                    shape: BoxShape.circle
                  ),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Color(0xff1F252F),
                        shape: BoxShape.circle
                    ),

                    child: Center(child: AppIcon.localIcon()),

                  ).paddingAll(7),
                ),

                CircleAvatar(
                  radius: 25,
                  backgroundColor: const  Color(0xff4AC258),
                  child: Center(
                    child: AppIcon.checkIcon(),
                  ),
                ),



              ],
            ),


            Container(
              height: size/ 8,
            ),

            Text("Hello Cassie!",style: AppTextStyle.largeTextStyle(context),),
            Container(
              height: size/ 30,
            ),
            Text("Your password has been reset!",style: AppTextStyle.smallText(context,color: const Color(0xff515155)),),

            Container(
              height: size/ 8,
            ),
            
            AppButton(text: "START SHOPPING", onTap: (){
              Get.to(LandingPage());
            })
            
          ],
        ),
      ),
    );
  }
}
