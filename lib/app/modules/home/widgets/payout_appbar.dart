import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/colors.gen.dart';

class PayoutAppbar extends StatelessWidget {
  const PayoutAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 54.sp, left: 27.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: ColorName.black,
              size: 32.sp,
            ),
          ),
          Text(
            "Payout",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
