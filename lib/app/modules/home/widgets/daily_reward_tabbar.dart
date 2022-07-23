import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/colors.gen.dart';

class DailyRewardTabBar extends StatelessWidget {
  const DailyRewardTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding:  EdgeInsets.only(top: 24.sp,left: 22.sp),
          child: Row(
                children: [
                  InkWell(
                      onTap: () {
                     
                      },
                      child: Text(
                        "Daily Rewards",
                        style: TextStyle(
                            color: ColorName.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600),
                      )),
                      SizedBox(width: 42.sp,),
                   InkWell(
                      onTap: () {
                     
                      },
                      child: Text(
                        "Refer & Earn",
                        style: TextStyle(
                            color: ColorName.dailrewardbuttongrey,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600),
                      )),
                ],
              ),
        );
  }
}