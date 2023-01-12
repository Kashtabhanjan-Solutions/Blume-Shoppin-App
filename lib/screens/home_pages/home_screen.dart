import 'package:blume_shopping_app/constant/app_assets.dart';
import 'package:blume_shopping_app/constant/app_icon.dart';
import 'package:blume_shopping_app/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../theme/text_style.dart';
import '../../utils/theme_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Column(
          children: [
            Container(
              height: size / 3,
              decoration: BoxDecoration(
                  color: Colors.white,
                image: DecorationImage(image: NetworkImage(AppAssets.homeScreenImage),fit: BoxFit.fitWidth)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      InkWell(
                          onTap : ThemeService().switchTheme,
                          child: Lottie.asset(AppAssets.themeChangeLottie,height: 45,width: 45).marginOnly(top: 0)
                      ),

                      InkWell(
                          onTap: (){},
                          child: AppIcon.searchIcon(context).marginOnly(top: 0,right: 10)
                      ),

                    ],
                  ),
                  const Spacer(),
                  Text("Winter Collections",style: AppTextStyle.largeTextStyle(context,color: Colors.white),).marginOnly(left: 5),
                  Text("30 items",style: AppTextStyle.smallText(context,color: Colors.white),).marginOnly(left: 5),
                  5.0.addHSpace(),
                ],
              ),
            ),
            Container(
              color: context.theme.backgroundColor,
            )
          ],
        ),
      ),
    );
  }
}
