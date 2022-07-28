import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';

import '../../../../../gen/assets.gen.dart';
import '../controllers/app_usage_controller.dart';

class AppUsageView extends GetView<AppUsageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(children: [
        Positioned(
            right: 0,
            top: 0,
            child: Assets.backgroundimageofferdetail.image(
              width: 474.sp,
              height: 572.sp,
            ),
            ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding:  EdgeInsets.only(top: 40.sp,left: 15.sp,bottom: 15.sp),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                        Get.back();
                    }, icon:  Icon(Icons.arrow_back),),
                      Text("App Usage",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                     ),),
                  ],
                ),
              ),
             Divider( color: ColorName.verBoader,),
             Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 11.sp,left: 22.sp,bottom: 11.sp,right: 9.sp),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: CachedNetworkImageProvider('https://images.unsplash.com/photo-1658828911730-ffe8fd2e4aed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80'),
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("HealthKart",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("com.healthkart.healthkart",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: ColorName.appusedis),),
                        Padding(
                          padding: EdgeInsets.only(left: 50.sp,right: 22.sp),
                          child: Text("16.35 MB",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: ColorName.appusedis),),
                        ),
                      ],
                    )
                  ],
                )
              ],
             )
          ]
        )
      ]
      )
    );
  }
}
