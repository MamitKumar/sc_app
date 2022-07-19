
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

class TransctionListDesign extends StatelessWidget {
  const TransctionListDesign({
    Key? key, required this.transction,
  }) : super(key: key);
final transction;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // image
        Container(
          margin: EdgeInsets.only(
            top: 15.sp,
            left: 20.sp,
            bottom: 14.sp,
          ),
          height: 44.sp,
          width: 44.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.sp),
            color: ColorName.white,
          ),
          child: Center(
            child: Assets.transctionIcon.image(
              height: 33.sp,
              width: 33.sp,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 17.sp, left: 21.sp),
              child: Text(
                "Daily Reward",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.sp, left: 21.sp,bottom: 18.sp),
              child: Text(
                "12 Jan 2022, 02:05:43 PM",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: ColorName.buttongrey,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding:  EdgeInsets.only(right: 19.sp),
          child: Text("₹ 50",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp
          ),),
        )
      ],
    );
  }
}
