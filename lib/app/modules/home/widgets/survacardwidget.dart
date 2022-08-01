import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../data/home_decoraction.dart';

class SurveyCardWidget extends StatelessWidget {
  const SurveyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 134.sp,
          margin: EdgeInsets.only(left: 22.sp, right: 22.sp, top: 51.sp),
          width: double.infinity,
          decoration: homeSureysDec,
          child: Padding(
            padding: EdgeInsets.only(left: 21.sp, top: 16.sp, bottom: 19.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 154.sp),
                  child: Text(
                    "Best featured surveys for you!",
                    style: surveyTitle,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "173 Surveys",
                      style: surveyNum,
                    ),
                    DiviDer(),
                    Text(
                      "1200 Participants",
                      style: surveyNum,
                    ),
                    DiviDer(),
                    Text(
                      "₹45,132 Winnings",
                      style: surveyNum,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 15.sp,
          child: Assets.clipboard.image(height: 210.sp, width: 134.sp),
        ),
      ],
    );
  }
}


class DiviDer extends StatelessWidget {
  const DiviDer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21,
      child: VerticalDivider(
        color: ColorName.verBoader,
        thickness: 1.sp,
        indent: 5,
        endIndent: 3,
        width: 16,
      ),
    );
  }
}
