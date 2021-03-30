import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtubeclonegetx/getxcontroller/bottom_navagator.dart';

class Home extends GetView<BottomNavgatorWidget> {
  @override
  Widget build(BuildContext context) {
    // Get.put(BottomNavgatorWidget());
    return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
    showSelectedLabels: true,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svg/icons/home_off.svg",
          ),
          label: "홈",
          activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg")),
      BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/svg/icons/compass_off.svg",
              height: 22, width: 22),
          label: "탐색",
          activeIcon: SvgPicture.asset("assets/svg/icons/compass_on.svg", height: 22, width: 22)),
      BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/svg/icons/plus.svg", width: 35),
          label: ""),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svg/icons/subs_off.svg",
          ),
          label: "구독",
          activeIcon: SvgPicture.asset("assets/svg/icons/subs_on.svg")),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svg/icons/library_off.svg",
          ),
          label: "보관함",
          activeIcon: SvgPicture.asset("assets/svg/icons/library_on.svg"))
    ],
    currentIndex: controller.currentindex.value,
    selectedItemColor: Colors.black,
    onTap: controller.updateCurrentPage,
  )),
        body: Container());
  }
}

