
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/routes/app_pages.dart';
import '../../../../gen/colors.gen.dart';
import '../../../data/user_name.dart';

class AppBarSimpleCash extends StatelessWidget {
  const AppBarSimpleCash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: InkWell(
              onTap: (){
                Get.toNamed(Routes.PROFILE);
              },
              child: Row(
                children: [
                  Text(
                    "Hey! ",
                    style:
                        homeUserName01,
                  ),
                  Text(
                    "Shubham",
                    style: homeUserName,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){
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
                        left: 18.sp, top: 13.sp, bottom: 13.sp, right: 78.sp),
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
                    backgroundImage: CachedNetworkImageProvider(
                        'https://images.unsplash.com/photo-1644982647711-9129d2ed7ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80'),
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


class BalanceChip extends StatelessWidget {
  const BalanceChip({
    Key? key,
    required this.money,
  }) : super(key: key);
  final String money;
  @override
  Widget build(BuildContext context) {
    return Text(
      money,
      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
    );
  }
}
