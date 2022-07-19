import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';
import '../controllers/home_controller.dart';
import '../widgets/appbar.dart';
import '../widgets/offer_tile_widget.dart';
import '../widgets/survacardwidget.dart';
class HomeView extends GetView<HomeController> {
   final TextStyle unselectedLabelStyle = TextStyle(
      color: ColorName.verBoader,
      fontWeight: FontWeight.w500,
      fontSize: 14);

  final TextStyle selectedLabelStyle =
      TextStyle(color: ColorName.buttonOther, fontWeight: FontWeight.w500, fontSize: 14);

      // ignore: non_constant_identifier_names
      buildBottomNavigationMenu(context, HomePageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 68,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: HomePageController.changeTabIndex,
            currentIndex: HomePageController.tabIndex.value,
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
          ),
        )));
  }
  @override
   final HomeController HomePageController =
        Get.put(HomeController(), permanent: false);
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:
          buildBottomNavigationMenu(context, HomePageController),
          
      body: Column(
        children: [
          AppBarSimpleCash(),
          ServaCardWidget(),
          OfferTileCard()
        ],
      ),
      // body: Column(
      //   children: [
      //     // Obx(() => IndexedStack(
      //     //       index: HomePageController.tabIndex.value,
      //     //       children: [
      //     //         HomeView(),
      //     //         WalletView(),
      //     //         HomeView(),
      //     //         WalletView(),
      //     //       ],
      //     //     )),
      //            AppBarSimpleCash(),
      //     SurveysCard(),
      //     OfferTileCard() 
      //   ],
      // ),
    );
  }
}
