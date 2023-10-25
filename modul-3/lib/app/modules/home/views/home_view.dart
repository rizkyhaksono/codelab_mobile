import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return controller.pages[controller.selectedTab.value];
      }),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            items: controller.bottomNavBarItems,
            currentIndex: controller.selectedTab.value,
            onTap: controller.changePage,
          );
        },
      ),
    );
  }
}
