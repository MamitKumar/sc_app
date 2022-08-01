import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';

import '../../../data/daily_reward.dart';

class DailyRewardTileDesign extends StatelessWidget {
  const DailyRewardTileDesign({
    Key? key,
    required this.reward,
  }) : super(key: key);
  final reward;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: EdgeInsets.only(top: 25.sp, left: 22.sp, right: 22.sp),
      decoration: BoxDecoration(
         color: reward.isCompleted == true &&
                                  reward.isClamed == false ||
                              reward.isCompleted == false &&
                                  reward.isClamed == true? ColorName.backgroundPrimary.withOpacity(0.1) : ColorName.white,
        border: reward.isCompleted == true && reward.isClamed == true
            ? Border.all(
                color: ColorName.dailrewardbuttongreycollected,
              )
            : reward.isCompleted == true && reward.isClamed == false ||
                    reward.isCompleted == false && reward.isClamed == true
                ? Border.all(
                    color: ColorName.dailyrewardborder,
                  )
                : Border.all(color: ColorName.dailrewardbuttongrey),
        borderRadius: BorderRadius.circular(6.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 14.sp,
              left: 14.sp,
              right: 13.sp,
            ),
            child: Row(
              children: [
                Text(
                  "Daily Login",
                  style:
                       DailyReDesignTitle,
                ),
                SizedBox(
                  width: 9.sp,
                ),
                InkWell(
                  onTap: () {},
                  child: reward.isCompleted == true && reward.isClamed == true
                      ? Text(
                          "Collected",
                          style: dailyR_collect,
                        )
                      : reward.isCompleted == true &&
                                  reward.isClamed == false ||
                              reward.isCompleted == false &&
                                  reward.isClamed == true
                          ? Text(
                              "Tap to collect",
                              style: dailyR_TapToCollect,
                            )
                          : reward.isCompleted == false &&
                                  reward.isClamed == false
                              ? Text(
                                  "Completed: 20%",
                                  style: dailyRewardProcess,
                                )
                              : Text(""),
                ),
                const Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 13.sp),
                  decoration: BoxDecoration(
                    color: reward.isCompleted == true && reward.isClamed == true
                        ? ColorName.dailrewardbuttongreycollected
                        : reward.isCompleted == true &&
                                    reward.isClamed == false ||
                                reward.isCompleted == false &&
                                    reward.isClamed == true
                            ? ColorName.buttongreen
                            : reward.isCompleted == false &&
                                    reward.isClamed == false
                                ? ColorName.dailrewardbuttongrey
                                : null,
                    borderRadius: BorderRadius.circular(24.sp),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.sp, horizontal: 13.sp),
                    child: Text(
                      "₹ 50",
                      style: TextStyle(color: ColorName.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.sp, left: 14.sp, bottom: 14.sp),
            child: Text(
              "Login for 3 times a day",
              style: dailyR_Dis,
            ),
          ),
        ],
      ),
    );
  }
}
