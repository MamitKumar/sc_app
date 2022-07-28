
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import '../controllers/home_controller.dart';
// import '../../../../gen/assets.gen.dart';
// import '../../../../gen/colors.gen.dart';

// class BottomNavBar extends StatelessWidget {
//    BottomNavBar({
//     Key? key,
//     required this.unselectedLabelStyle,
//     required this.selectedLabelStyle,
//   }) : super(key: key);

//   final TextStyle unselectedLabelStyle;
//   final TextStyle selectedLabelStyle;
//   @override
  
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       showUnselectedLabels: true,
//       showSelectedLabels: true,
//       onTap: HomePageController.changeTabIndex,
//       currentIndex: HomePageController.tabIndex.value,
//       backgroundColor: ColorName.button,
//       unselectedItemColor: ColorName.verBoader,
//       selectedItemColor: ColorName.button,
//       unselectedLabelStyle: unselectedLabelStyle,
//       selectedLabelStyle: selectedLabelStyle,
//       items: [
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: EdgeInsets.only(bottom: 7),
//             child: Icon(Icons.home,
//             size: 28.sp,)
//           ),
//           label: 'Home',
//           backgroundColor: ColorName.white,
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: EdgeInsets.only(bottom: 7),
//             child:Assets.myrewardofferbottemicon.image(width: 22.sp,height: 22.sp)
//           ),
//           label: 'My Offers',
//          backgroundColor: ColorName.white,
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: EdgeInsets.only(bottom: 7),
//             child: Assets.myrewardbottemicon.image(width: 22.sp,height: 22.sp,)
//           ),
//           label: 'Rewards',
//      backgroundColor: ColorName.white,
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: EdgeInsets.only(bottom: 7),
//             child: Assets.upcommingbottemicon.image(width: 22.sp,height: 22.sp)
//           ),
//           label: 'Upcoming',
//    backgroundColor: ColorName.white,
//         ),
//       ],
//     );
//   }
// }



