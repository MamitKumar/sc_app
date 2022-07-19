import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TransctionAppBar extends StatelessWidget {
  const TransctionAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 54.sp,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_rounded,
            ),
          ),
          Text(
            "Wallet",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
