import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/wallet_decoraction.dart';

class TransctionButton extends StatelessWidget {
  const TransctionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(left: 22.sp, right: 22.sp, top: 18.sp, bottom: 18.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transactions",
            style: walletTransctionText,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          )
        ],
      ),
    );
  }
}
