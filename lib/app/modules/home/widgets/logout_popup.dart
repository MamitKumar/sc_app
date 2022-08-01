
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/colors.gen.dart';
import '../../../data/all_popup_dec.dart';

class LogoutPopup extends StatelessWidget {
  const LogoutPopup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.sp,
      color: ColorName.greenpopbc,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: ColorName.logutpopupprimary,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 20.sp),
              child: Text(
                "Congratulations",
                style: title,textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            color: ColorName.greenpopbc,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
      top: 31.sp,bottom: 21.sp),
                  child: Center(
    child: Text(
        "Do you want to Logout?",
                style: logoutSub,textAlign: TextAlign.center,),
                  ),
                ),
                InkWell(
                  onTap: () {
    Get.back();
                  },
                  child: Container(
    decoration: logoutConDecoraction,
    child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: 15.sp, horizontal: 65.sp),
      child: Text("No",
                style: logoutTextDec),
    ),
                  ),
                ),
              TextButton(onPressed: (){

              }, child: Text("Yes",style: TextStyle(
                color: ColorName.logutpopupgrey
              ),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
