
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/colors.gen.dart';
import '../../../data/daily_reward.dart';

class ReferEarnStep extends StatelessWidget {
  const ReferEarnStep({
    Key? key, required this.stepNum, required this.stepDiscripction,
  }) : super(key: key);
  final String stepNum;
  final String stepDiscripction;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
    Padding(
      padding: EdgeInsets.only(top: 29.sp,left: 22.sp),
      child: Text(stepNum,style: refer_StepNum,),
    ),
    Padding(
     padding: EdgeInsets.only(top: 2.sp,left: 22.sp,right: 22.sp,bottom: 16.sp),
      child: Text(stepDiscripction,style: referDis,),
    ),
    Divider( color: ColorName.taskSubtitleGrey,),
      ],
    );
  }
}