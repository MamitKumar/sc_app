import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/colors.gen.dart';

class OfferDetail_ImageBanner extends StatelessWidget {
  const OfferDetail_ImageBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 204.sp,
          margin: EdgeInsets.only(left: 22.sp, right: 22.sp, top: 22.sp),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.sp),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  'https://static.toiimg.com/thumb/91128298.cms?resizemode=4&width=1200&height=900',
                ),
              )),
          child: Container(
            height: 204.sp,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black45, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(13.sp),
            ),
          ),
        ),
        Positioned(
          bottom: -20.sp,
          right: 42.sp,
          child: Container(
            decoration: BoxDecoration(
                color: ColorName.backgroundPrimary,
                borderRadius: BorderRadius.circular(24.sp)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 22.sp),
              child: Text("Get ₹100"),
            ),
          ),
        ),
      ],
    );
  }
}
