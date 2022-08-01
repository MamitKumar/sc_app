import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/upcomming.dart';

class UpcommingTimerCard extends StatelessWidget {
  const UpcommingTimerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(left: 22.sp, right: 22.sp, top: 51.sp),
          width: double.infinity,
          decoration: upcommingTimerCard,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 26.sp, left: 19.sp),
                child: Text(
                  "Total Gifts Value",
                  style:  upcommingCardTitle,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 11.sp, left: 20.sp, bottom: 22.sp),
                child: Text(
                  "12h 32m 12s",
                  style: upcommingCardTime,
                ),
              ),
            ],
          ),
        );
  }
}
