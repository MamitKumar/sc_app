
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/colors.gen.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.sp, top: 30.sp,bottom: 20.sp),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorName.backgroundPrimary,
            backgroundImage: CachedNetworkImageProvider(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbiMyRpL0_N-pfMHSmZtG384Lq25HPySoNqL-vsHSszUFTlXN1apYhR3yPP6t250UNWfE&usqp=CAU',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Moj: Short Video App",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Short Video Application",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorName.appsubtitlegrey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
