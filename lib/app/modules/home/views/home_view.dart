import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/modules/home/views/wallet_view.dart';
import 'package:simple_cash_app_day/gen/assets.gen.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';
import '../controllers/home_controller.dart';

// import 'package:flutter/foundation.dart';
class HomeView extends GetView<HomeController> {
   final TextStyle unselectedLabelStyle = TextStyle(
      color: ColorName.verBoader,
      fontWeight: FontWeight.w500,
      fontSize: 14);

  final TextStyle selectedLabelStyle =
      TextStyle(color: ColorName.button, fontWeight: FontWeight.w500, fontSize: 14);

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
            backgroundColor: ColorName.button,
            unselectedItemColor: ColorName.verBoader,
            selectedItemColor: ColorName.button,
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
                  child:Assets.myrewardofferbottemicon.image(width: 22.sp,height: 22.sp)
                ),
                label: 'My Offers',
               backgroundColor: ColorName.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Assets.myrewardbottemicon.image(width: 22.sp,height: 22.sp,)
                ),
                label: 'Rewards',
     backgroundColor: ColorName.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Assets.upcommingbottemicon.image(width: 22.sp,height: 22.sp)
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
          SurveysCard(),
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

class OfferTileCard extends StatelessWidget {
  const OfferTileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.sp, right: 22, left: 22),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Assets.mojdeail.image(
              width: 240.sp,
              height: 190.sp,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white,ColorName.white, Colors.white10],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                border: Border.all(color: ColorName.button),
                borderRadius: BorderRadius.circular(13.sp)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 12.sp, top: 12.sp, bottom: 12.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Assets.simpleCashLogo.image(
                      height: 50.sp,
                      width: 50.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13.sp,
                    ),
                    child: Text(
                      "Simple Cash",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.sp, bottom: 8.sp),
                    child: Text(
                      "AppDay Technologies Private Limited",
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.sp),
                          color: ColorName.button,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.sp, horizontal: 13.sp),
                          child: Text("Get ₹300"),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 11.sp,right: 3.5.sp),
                        child: Assets.profileAvtar.image(width: 16.sp,
                        height: 12.sp),
                      ),
                      Text("863",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DiviDer extends StatelessWidget {
  const DiviDer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21,
      child: VerticalDivider(
        color: ColorName.verBoader,
        thickness: 1.sp,
        indent: 5,
        endIndent: 3,
        width: 16,
      ),
    );
  }
}

class SurveysCard extends StatelessWidget {
  const SurveysCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 129.sp,
          margin: EdgeInsets.only(left: 22.sp, right: 22.sp, top: 51.sp),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.sp),
              gradient: LinearGradient(colors: [
                ColorName.backgroundPrimary,
                ColorName.backgroundSecondry
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: EdgeInsets.only(left: 21.sp, top: 16.sp, bottom: 19.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 154.sp),
                  child: Text(
                    "Best featured surveys for you!",
                    style: TextStyle(
                        color: ColorName.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "173 Surveys",
                      style: TextStyle(
                          color: ColorName.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    DiviDer(),
                    Text(
                      "1200 Participants",
                      style: TextStyle(
                          color: ColorName.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    DiviDer(),
                    Text(
                      "₹45,132 Winnings",
                      style: TextStyle(
                          color: ColorName.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 15.sp,
          child: Assets.clipboard.image(height: 210.sp, width: 134.sp),
        ),
      ],
    );
  }
}

class AppBarSimpleCash extends StatelessWidget {
  const AppBarSimpleCash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.sp,
        right: 22.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 53.sp),
            child: Row(
              children: [
                Text(
                  "Hey! ",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Shubham",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorName.backgroundSecondry),
                ),
              ],
            ),
          ),
          Spacer(),
          Stack(
            alignment: Alignment.bottomRight,
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.sp),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: ColorName.backgroundSecondry, width: 1.6),
                    borderRadius: BorderRadius.circular(28.sp)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 18.sp, top: 13.sp, bottom: 13.sp, right: 78.sp),
                  child: Text("₹ 1523.20"),
                ),
              ),
              Positioned(
                top: 42.5.sp,
                child: CircleAvatar(
                  radius: 34.sp,
                  backgroundColor: ColorName.backgroundPrimary,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1658114675929-5faae0441b7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
