import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/my_offer.dart';

class MyOfferMonetCard extends StatelessWidget {
  const MyOfferMonetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 22.sp, right: 22.sp, top: 51.sp),
      width: double.infinity,
      decoration: myOfferCardMoney,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 26.sp,left: 19.sp),
            child: Text("Total money earned so far",style: myOfferCardTitle,),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 11.sp,left: 20.sp,bottom: 22.sp),
            child: Text("₹ 2643",style: myOfferCardRuppes,),
          ),
        ],
      ),
    );
  }
}
