import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../gen/colors.gen.dart';
import '../../../../data/offer_detail.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    Key? key, required this.appIcon, required this.appTitle, required this.appSubTitle,
  }) : super(key: key);
final String appIcon;
final String appTitle;
final String appSubTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.sp, top: 30.sp,bottom: 20.sp),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorName.backgroundPrimary,
            backgroundImage: CachedNetworkImageProvider(
              appIcon,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appTitle,
                  style: offerAppTitle,
                ),
                Text(
                  appSubTitle,
                  style: offerSubTitle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
