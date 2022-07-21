import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_cash_app_day/gen/colors.gen.dart';

class DailyRewardTile extends StatelessWidget {
  const DailyRewardTile({
    Key? key, required this.reward,
  }) : super(key: key);
  final reward;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.sp,left: 22.sp,right: 22.sp),
      decoration: BoxDecoration(
        border: reward.iscompleted == true && reward.isclamed == true
            ? Border.all(
          color: ColorName.dailrewardbuttongrey,
        )
            : reward.iscompleted == true && reward.isclamed == false
            ? Border.all(
          color: ColorName.dailyrewardborder,
        )
            : Border.all(color: ColorName.dailrewardbuttongreycollected),
        borderRadius: BorderRadius.circular(6.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 14.sp,left: 14.sp,right: 13.sp,),
            child: Row(
              children: [
                Text("Daily Login",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(width: 9.sp,),
                InkWell(
                  onTap: (){

                  },
                  child: reward.iscompleted == true && reward.isclamed == true
                      ? Text(
                    "Collected",
                    // style: defaltReward,
                  )
                      : reward.iscompleted == true && reward.isclamed == false
                      ? Text(
                    "Tap to collect",
                    // style: defaltReward2,
                  )
                      : reward.iscompleted == false &&
                      reward.isclamed == false
                      ? Text(
                    "Completed: 20%",
                    //TODO: some error in collect to tap in gift popup
                    // style: defaltReward,
                  )
                      : Text(""),),
                const Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 13.sp),
                  decoration: BoxDecoration(
                    color: ColorName.buttongreen,
                    borderRadius: BorderRadius.circular(24.sp),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5.sp,horizontal: 13.sp),
                    child: Text("₹ 50",),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.sp,left: 14.sp,bottom: 14.sp),
            child: Text("Login for 3 times a day",style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorName.dailrewardbuttongrey,
            ),),
          ),
        ],
      ),
    );
  }
}
