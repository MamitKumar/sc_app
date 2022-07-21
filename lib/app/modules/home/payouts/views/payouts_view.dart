import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../gen/assets.gen.dart';
import '../widgets/payout_list_design.dart';
import '../controllers/payouts_controller.dart';

class PayoutsView extends GetView<PayoutsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              child: Assets.backgroundimageofferdetail.image(
                width: 474.sp,
                height: 572.sp,
              )),
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  PayoutListDesign(
                      payout: controller.payoutsList[index],),
              itemCount: controller.payoutsList.length,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
