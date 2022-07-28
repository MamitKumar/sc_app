import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_cash_app_day/app/modules/home/payouts/widgets/payout_appbar.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../data/payouts_design.dart';

class PayoutListDesign extends StatelessWidget {
  const PayoutListDesign({
    Key? key, required this.payout,
  }) : super(key: key);
final payout;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PayoutAppbar(),
        Padding(
          padding: EdgeInsets.only(top: 28.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20.sp,
                ),
                height: 44.sp,
                width: 44.sp,
                decoration: payoutPatymLogoBc,
                child: Center(
                  child: Assets.paytmlogo.image(
                    height: 13.sp,
                    width: 34.sp,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 17.sp, left: 9.sp),
                    child: Text(
                      payout.number,
                      style: payoutPaytmNum,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 6.sp,
                            left: 9.sp,
                            bottom: 18.sp,
                            right: 158.sp),
                        child: Text(
                          payout.timeDate,
                          style: payoutPaytmDate,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 6.sp, bottom: 18.sp, right: 22.sp),
                        child: payout.iscompleted== true ?Text(
                          "Successful",
                          style: payoutPaytmSucessful,
                        ):Text(
                          "Failed",
                          style: payoutPaytmFailed,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(color: ColorName.verBoader, thickness: 1),
      ],
    );
  }
}
