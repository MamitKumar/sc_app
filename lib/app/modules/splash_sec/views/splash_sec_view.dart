import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:simple_cash_app_day/gen/assets.gen.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';

import '../controllers/splash_sec_controller.dart';

class SplashSecView extends GetView<SplashSecController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [ColorName.splashSPrimary,ColorName.splashSSecondry],begin: Alignment.topCenter,end: Alignment.bottomCenter),
        ),
        child: Stack(

          children: [
            Column(
              children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 290.sp,),
                  child: Assets.simpleCashLogoAppday.image(height: 280.sp,width: 280.sp),
                )),
                Text("Simple Cash",style: TextStyle(
                  fontSize: 38.sp,fontWeight: FontWeight.w700
                ),),
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: Assets.coin.image(alignment: Alignment.bottomCenter)),
          ],
        ),
      )
    );
  }
}
