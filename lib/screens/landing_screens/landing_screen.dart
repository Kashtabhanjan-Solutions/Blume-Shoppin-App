import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'landing_screen_controller.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(BuildContext context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: context.theme.backgroundColor,
            unselectedItemColor: context.theme.cardColor,
            selectedItemColor: const Color(0xffEC9D5C),
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 25.0,
                ),
                label: '',
                backgroundColor: context.theme.backgroundColor,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.location_on,
                  size: 25.0,
                ),
                label: '',
                backgroundColor: context.theme.backgroundColor,
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25.0,
                ),
                label: '',
                // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                  size: 25.0,
                ),
                label: '',
                // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),

              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  size: 25.0,
                ),
                label: '',
                // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),

            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingScreenController landingPageController =
    Get.put(LandingScreenController(), permanent: false);
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
          body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              // HomePage(),
              // ExplorePage(),
              // PlacesPage(),
              // SettingsPage(),
            ],
          )),
        ));
  }
}