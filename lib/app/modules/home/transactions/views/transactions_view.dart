import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/modules/home/widgets/appbar_transction.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../widgets/transction_list_design.dart';
import '../controllers/transactions_controller.dart';

class TransactionsView extends GetView<TransactionsController> {
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
          // MediaQuery.removePadding(
          //   context: context,
          //   removeTop: true,
          //   child: ListView.builder(
          //     itemBuilder: (context, index) =>
          //         PayoutListDesign(
          //           payout: controller.payoutsList[index],),
          //     itemCount: controller.payoutsList.length,
          //     shrinkWrap: true,
          //   ),
          // ),
          Column(
            children: [
              TransctionAppBar(),
              TransctionListDesign(
                transction: null,
              ),
              ListView.builder(
                itemBuilder: (context, indux) =>
                    TransctionListDesign(transction: controller.transctionList[indux],),
                itemCount: controller.transctionList.length,
                shrinkWrap: true,
              ),
              Divider(color: ColorName.appsubtitlegrey, thickness: 1),
            ],
          ),
        ],
      ),
    );
  }
}
