
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../data/wallet_decoraction.dart';

class Wallet_Total_Ear_Card extends StatelessWidget {
  const Wallet_Total_Ear_Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 5.sp, left: 22.sp),
            decoration: BoxDecoration(
                color: ColorName.moneycard,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Earning",
                    style: walletTotalEarning,
                  ),
                  Text(
                    "₹ 1893.20",
                    style: walletTotalEarBalance,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              right: 23.sp,
              left: 5.sp,
            ),
            decoration: BoxDecoration(
                color: ColorName.moneycard,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Withdrawl",
                    style: walletWithraw,
                  ),
                  Text(
                    "₹ 360",
                    style: walletWitrallBalance,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WalletAppBar extends StatelessWidget {
  const WalletAppBar({
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
            style: walletAppBar,
          ),
        ],
      ),
    );
  }
}
