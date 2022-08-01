import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';

final dailyR_appbarTitle =
    TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500);
final dailyR_cardDeco = BoxDecoration(
  borderRadius: BorderRadius.circular(13.sp),
  gradient: LinearGradient(
      colors: [ColorName.backgroundPrimary, ColorName.backgroundSecondry],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter),
);

final dailyR_total_Gift = TextStyle(
    fontSize: 19.sp, fontWeight: FontWeight.w600, color: ColorName.white);

final dailyReward_price = TextStyle(
    fontSize: 43.sp, fontWeight: FontWeight.w600, color: ColorName.white);

final dailyR_Title = TextStyle(
    color: ColorName.black, fontSize: 22.sp, fontWeight: FontWeight.w600);

final dailyR_Reffer = TextStyle(
    color: ColorName.dailrewardbuttongrey,
    fontSize: 22.sp,
    fontWeight: FontWeight.w600);

final refer_StepNum = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: ColorName.buttonOther);
final referDis = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, color: ColorName.black);

final DailyReDesignTitle =
    TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);

final dailyR_collect = TextStyle(
  fontSize: 11.sp,
  color: ColorName.dailrewardbuttongreycollected,
  fontWeight: FontWeight.w400,
);

final dailyR_TapToCollect = TextStyle(
  fontSize: 11.sp,
  color: ColorName.buttonOther,
  fontWeight: FontWeight.w400,
);

final dailyRewardProcess = TextStyle(
  fontSize: 11.sp,
  color: ColorName.dailrewardbuttongrey,
  fontWeight: FontWeight.w400,
);

final dailyR_Dis = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: ColorName.dailrewardbuttongrey,
);

