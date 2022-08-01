import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/colors.gen.dart';

final title=TextStyle(
    fontSize: 22.sp,
    color: ColorName.white,
    fontWeight: FontWeight.w500);
    final logoutSub=TextStyle(
      fontSize: 16.sp,
      color: ColorName.black,
      fontWeight: FontWeight.w400);
      final logoutConDecoraction=BoxDecoration(
      borderRadius:
          BorderRadius.circular(360.sp),
      color: ColorName.logutpopupprimary,
      boxShadow: [
        BoxShadow(
          color: ColorName.popupboxshadow,
          blurRadius: 24.sp,
        )
      ]
    );

    final logoutTextDec=TextStyle(
    fontSize: 18.sp,
    color: ColorName.white,
    fontWeight: FontWeight.w500);

    final oppsDis=TextStyle(
                    fontSize: 18.sp,
                    color: ColorName.black,
                    fontWeight: FontWeight.w400);

                    final oppsContanerDec=BoxDecoration(
    borderRadius:
        BorderRadius.circular(360.sp),
    color: ColorName.red,
    boxShadow: [
      BoxShadow(
        color: ColorName.popupboxshadow,
        blurRadius: 24.sp,
      )
    ]
                    );

final oppsTryAgainDec=TextStyle(
                    fontSize: 18.sp,
                    color: ColorName.white,
                    fontWeight: FontWeight.w500);


final succesDis=TextStyle(
                    fontSize: 14.sp,
                    color: ColorName.greenDisPoppup,
                    fontWeight: FontWeight.w400);
    
    final sucessContainerDec=BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(360.sp),
                      color: ColorName.greenpoppup,
                      boxShadow: [
                        BoxShadow(
                          color: ColorName.popupboxshadow,
                          blurRadius: 24.sp,
                        )
                      ]
                    );

                    final oppsOkayText=TextStyle(
                    fontSize: 18.sp,
                    color: ColorName.white,
                    fontWeight: FontWeight.w500);