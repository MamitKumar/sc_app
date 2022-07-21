import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/colors.gen.dart';

final offerAppBar = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500);
final offerBaannerImage = BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.transparent, Colors.black45, Colors.black],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  borderRadius: BorderRadius.circular(13.sp),
);

final offerButton = BoxDecoration(
    border: Border.all(color: ColorName.white),
    boxShadow: [
      BoxShadow(
        color: ColorName.verBoader.withOpacity(0.5),
      ),
      BoxShadow(
        color: ColorName.verBoader.withOpacity(0.5),
      ),
      BoxShadow(),
    ],
    color: ColorName.offfeButton,
    borderRadius: BorderRadius.circular(24.sp));
final offerAppTitle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
);
final offerSubTitle = TextStyle(
  fontSize: 12.sp,
  fontWeight: FontWeight.w500,
  color: ColorName.appsubtitlegrey,
);
final offerAbout = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 18.sp,
);
final offerDis = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: ColorName.offertilesubtitlecolor,
);
final offerTask = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 18.sp,
);
final offerTaskHeadingTrue = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 18.sp,
);

final offerTaskHeadingFalse = TextStyle(
  fontSize: 17.sp,
  fontWeight: FontWeight.w600,
);
final offerTaskSubHeadingTrue = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.lineThrough);
final offerTaskSubHeadingFalse =
    TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500);
