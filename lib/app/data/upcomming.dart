import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';

final upcommingTitle = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500);

final upcommingContainer=BoxDecoration(
                          border: Border.all(
                              color: ColorName.backgroundSecondry, width: 1.6),
                          borderRadius: BorderRadius.circular(28.sp));

                         final upcommingTimerCard=BoxDecoration(
            borderRadius: BorderRadius.circular(13.sp),
            gradient: LinearGradient(colors: [
              ColorName.backgroundPrimary,
              ColorName.backgroundSecondry
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          );

final upcommingCardTitle= TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorName.white);
final upcommingCardTime=TextStyle(
                      fontSize: 43.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorName.white);

