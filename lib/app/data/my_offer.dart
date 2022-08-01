import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/colors.gen.dart';

final myOfferTitle=TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500);

final myOfferCard=BoxDecoration(
                          border: Border.all(
                              color: ColorName.backgroundSecondry, width: 1.6),
                          borderRadius: BorderRadius.circular(28.sp));

final myOfferCardMoney=BoxDecoration(
        borderRadius: BorderRadius.circular(13.sp),
        gradient: LinearGradient(colors: [
          ColorName.backgroundPrimary,
          ColorName.backgroundSecondry
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),);

final myOfferCardTitle=TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w600,
                color: ColorName.white
            );

            final myOfferCardRuppes=TextStyle(
                fontSize: 43.sp,
                fontWeight: FontWeight.w600,
                color: ColorName.white
            );
            

