import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/routes/app_pages.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../data/wallet_decoraction.dart';
import '../Widgets/wallet_payoutbutton.dart';
import '../Widgets/wallet_total_ear_card.dart';
import '../Widgets/wallet_transction_button.dart';
import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            right: 0,
            top: 0,
            child: Assets.backgroundimageofferdetail.image(
              width: 474.sp,
              height: 572.sp,
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //app bar back button and title
            WalletAppBar(),
            //text
            TotalBalanceText(),
            //balance 1523
            Padding(
              padding: EdgeInsets.only(bottom: 23.sp, left: 22.sp),
              child: Text(
                "₹ 1523.20",
                style: walletMyMoney,
              ),
            ),
            // container total earning and total wodroall
            Wallet_Total_Ear_Card(),
            SizedBox(
              height: 18.sp,
            ),
            Divider(
              color: ColorName.buttongrey,
            ),
            // transction button
            InkWell(
                onTap: () {
                  Get.toNamed(Routes.TRANSACTIONS);
                },
                child: TransctionButton()),
            Divider(
              color: ColorName.buttongrey,
            ),
            //payout button
            InkWell(
                onTap: () {
                  Get.toNamed(Routes.PAYOUTS);
                },
                child: PayoutButton()),
            Divider(
              color: ColorName.buttongrey,
            ),
          ],
        )
      ]),
    );
  }

  Padding TotalBalanceText() {
    return Padding(
      padding: EdgeInsets.only(top: 38.sp, bottom: 10.sp, left: 22.sp),
      child: Text(
        "Total Balance",
        style: walletTotalBalance,
      ),
    );
  }
}

