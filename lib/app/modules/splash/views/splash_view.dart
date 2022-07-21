import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/modules/home/views/home_view.dart';
import 'package:simple_cash_app_day/app/routes/app_pages.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';
import '../../../data/splash_decoraction.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
      decoration: splashBackground(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.only(top: 19.sp, right: 161.sp,left: 0),
              child:  Image.asset('assets/simplecashbcimage.png',height: 509,width: 220,),
              ),
          ),

             Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 22.sp,top: 40.sp),
                    child: Text("Simple Cash",style: TextStyle(
                      fontSize: 36.sp,fontWeight: FontWeight.w700,
                      color: ColorName.white,
                    ),),
                  ),
                   Padding(
                 padding:  EdgeInsets.only(left: 22.sp,right: 22.sp),
                child: Text("An easy and simple method to earn money without any investment",style: TextStyle(
                  fontSize: 20.sp,fontWeight: FontWeight.w300,
                  color: ColorName.white,
                ),),
              ),
                    InkWell(
                      onTap: (){
                        Get.offNamed(Routes.HOME);
                      },
                      child: Padding(
                        padding:  EdgeInsets.only(top: 78.sp ,bottom: 50.sp),
                        child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: ColorName.white,
                                      boxShadow: [
                      BoxShadow(
                        color: ColorName.black,
                        offset: Offset(3,3),
                                
                      ),
                      BoxShadow(
                        color: ColorName.black,
                        offset: Offset(3,3),
                        
                      )
                                      ]
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 16.sp,horizontal: 128.sp),
                                      child: Text("Get Started",style: TextStyle(
                        fontSize: 20.sp,fontWeight: FontWeight.w300,
                        color: ColorName.black,
                      )),
                                    ),
                                  ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    ));
  }
}
