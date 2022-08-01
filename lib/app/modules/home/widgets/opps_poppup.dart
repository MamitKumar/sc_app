
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/colors.gen.dart';
import '../../../data/all_popup_dec.dart';

class OppsPopPup extends StatelessWidget {
  const OppsPopPup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.sp,
      color: ColorName.redBgPoppup,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: ColorName.red,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 20.sp),
              child: Text(
                "Opps!",
                style: title,textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            color: ColorName.redBgPoppup,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
    top: 31.sp, left: 17.sp, right: 17.sp,bottom: 40.sp),
                  child: Text(
    "Wait! some error has occured. \n \n Your transaction was not completed successfully due to some error. \n\nPlease try again.",
                style: oppsDis,textAlign: TextAlign.center,),
                ),
                
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    decoration:  oppsContanerDec,
                    child: Padding(
    padding: EdgeInsets.symmetric(
        vertical: 15.sp, horizontal: 65.sp),
    child: Text("Try again",
                style: oppsTryAgainDec,),
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
