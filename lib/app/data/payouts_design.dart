import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';

final payoutAppBarDesign =
    TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
final payoutPatymLogoBc = BoxDecoration(
  borderRadius: BorderRadius.circular(5.sp),
  color: ColorName.paytmbc,
);
final payoutPaytmNum = TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp);
final payoutPaytmDate=TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 14.sp,
  color: ColorName.buttongrey,
);
final payoutPaytmSucessful=TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 14.sp,
  color: ColorName.buttongreen,
);

final payoutPaytmFailed= TextStyle(
fontWeight: FontWeight.w700,
fontSize: 14.sp,
color: ColorName.red,
);
