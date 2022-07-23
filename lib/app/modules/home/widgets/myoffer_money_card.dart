import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';

class MyOfferMonetCard extends StatelessWidget {
  const MyOfferMonetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 22.sp, right: 22.sp, top: 51.sp),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.sp),
        gradient: LinearGradient(colors: [
          ColorName.backgroundPrimary,
          ColorName.backgroundSecondry
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 26.sp,left: 19.sp),
            child: Text("Total money earned so far",style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w600,
                color: ColorName.white
            ),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 11.sp,left: 20.sp,bottom: 22.sp),
            child: Text("₹ 2643",style: TextStyle(
                fontSize: 43.sp,
                fontWeight: FontWeight.w600,
                color: ColorName.white
            ),),
          ),
        ],
      ),
    );
  }
}