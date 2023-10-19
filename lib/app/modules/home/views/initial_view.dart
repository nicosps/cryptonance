import 'package:cryptonance/app/modules/account/views/account_view.dart';
import 'package:cryptonance/app/modules/card/views/card_view.dart';
import 'package:cryptonance/app/modules/home/views/home_view.dart';
import 'package:cryptonance/app/modules/track/views/track_view.dart';
import 'package:cryptonance/app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/home_controller.dart';

class InitialView extends StatelessWidget {
  const InitialView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.tabIndex.value,
          children: const [
            HomeView(),
            AccountView(),
            TrackView(),
            CardView(),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        selectedIndex: controller.tabIndex.value,
        onTabChange: controller.changeTabIndex,
        gap: 10,
        padding: const EdgeInsets.all(15),
        color: Colors.black,
        activeColor: AppColors.deepMauve,
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: LineIcons.userCircle,
            text: 'Accounts',
          ),
          GButton(
            icon: LineIcons.areaChart,
            text: 'Track',
          ),
          GButton(
            icon: LineIcons.addressCard,
            text: 'Card',
          )
        ],
      ),
    );
  }
}
