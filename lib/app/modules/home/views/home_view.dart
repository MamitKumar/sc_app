import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/modules/home/daily_rewards/views/daily_rewards_view.dart';
import 'package:simple_cash_app_day/app/modules/home/upcoming/views/upcoming_view.dart';
import 'package:simple_cash_app_day/app/modules/home/views/home_tab_view.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';
import '../controllers/home_controller.dart';

import '../offer_detail/views/offer_detail_view.dart';
class HomeView extends GetView<HomeController> {
   final TextStyle unselectedLabelStyle = TextStyle(
      color: ColorName.verBoader,
      fontWeight: FontWeight.w500,
      fontSize: 14);

  final TextStyle selectedLabelStyle =
      TextStyle(color: ColorName.buttonOther, fontWeight: FontWeight.w500, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:
          Obx(()=>BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: ColorName.buttonOther,
            unselectedItemColor: ColorName.verBoader,
            selectedItemColor: ColorName.buttonOther,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(Icons.home,
                  size: 28.sp,)
                ),
                label: 'Home',
                backgroundColor: ColorName.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child:Icon(Icons.shopping_bag_outlined)
                ),
                label: 'My Offers',
               backgroundColor: ColorName.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(Icons.adobe_outlined)
                ),
                label: 'Rewards',
     backgroundColor: ColorName.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(Icons.abc_outlined)
                ),
                label: 'Upcoming',
   backgroundColor: ColorName.white,
              ),
            ],
          ),),
          
      body:PageView(
        controller: controller.pageController,
        onPageChanged: (value) => controller.tabIndex.value = value,
        children: [
          HomeTabView(),
          OfferDetailView(),
          DailyRewardsView(),
          UpcomingView(),
        ],
      )
    );
  }
}
