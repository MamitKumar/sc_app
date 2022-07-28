
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/colors.gen.dart';

class SucessPopPup extends StatelessWidget {
  const SucessPopPup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.sp,
      color: ColorName.greenpopbc,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: ColorName.greenpoppup,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 20.sp),
              child: Text(
                "Congratulations",
                style: TextStyle(
                    fontSize: 22.sp,
                    color: ColorName.white,
                    fontWeight: FontWeight.w500),textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            color: ColorName.greenpopbc,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 31.sp, left: 17.sp, right: 17.sp),
                  child: Text(
                      "Congratulations! Your amount has been sent to your Paytm wallet number +91 98765-4310",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: ColorName.black,
                    fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 28.sp, horizontal: 31.sp),
                  child: Text(
                      "If you have not received the payment, thenplease wait for sometime to reflect in your wallet",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: ColorName.greenDisPoppup,
                    fontWeight: FontWeight.w400),textAlign: TextAlign.center),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(360.sp),
                      color: ColorName.greenpoppup,
                      boxShadow: [
                        BoxShadow(
                          color: ColorName.popupboxshadow,
                          blurRadius: 24.sp,
                        )
                      ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.sp, horizontal: 65.sp),
                      child: Text("Okay",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: ColorName.white,
                    fontWeight: FontWeight.w500),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

