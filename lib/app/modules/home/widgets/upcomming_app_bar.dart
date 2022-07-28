import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/colors.gen.dart';
import '../../../routes/app_pages.dart';
import 'appbar.dart';

class UpcommingAppBar extends StatelessWidget {
  const UpcommingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: EdgeInsets.only(
            left: 22.sp,
            right: 22.sp,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 53.sp),
                child: Text(
                  "Daily Rewards",
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.WALLET);
                },
                child: Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50.sp),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorName.backgroundSecondry, width: 1.6),
                          borderRadius: BorderRadius.circular(28.sp)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 18.sp,
                            top: 13.sp,
                            bottom: 13.sp,
                            right: 78.sp),
                        child: BalanceChip(
                          money: "₹ 1523.20",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 42.5.sp,
                      child: CircleAvatar(
                        radius: 34.sp,
                        backgroundColor: ColorName.backgroundPrimary,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1658114675929-5faae0441b7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}