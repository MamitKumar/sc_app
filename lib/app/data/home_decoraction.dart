import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/colors.gen.dart';

final homeSureysDec=BoxDecoration(
              borderRadius: BorderRadius.circular(13.sp),
              gradient: LinearGradient(colors: [
                ColorName.backgroundPrimary,
                ColorName.backgroundSecondry
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter));

              final surveyTitle=TextStyle(
                        color: ColorName.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600);
                        final surveyNum=TextStyle(
                          color: ColorName.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400);