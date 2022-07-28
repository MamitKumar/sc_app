import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../gen/colors.gen.dart';
import '../../../../data/offer_detail.dart';

class OfferDetail_ImageBanner extends StatelessWidget {
  const OfferDetail_ImageBanner({
    Key? key,
    required this.bannerImage,
  }) : super(key: key);
  final String bannerImage;
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
                  bannerImage,
                ),
              )),
          child: Container(
            height: 204.sp,
            width: double.infinity,
            decoration: offerBaannerImage,
          ),
        ),
        Positioned(
          bottom: -20.sp,
          right: 42.sp,
          child: Container(
            decoration:  offerButton,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 22.sp),
              child: Text("Get ₹100",style: TextStyle(
                color: ColorName.white,
              ),),
            ),
          ),
        ),
      ],
    );
  }
}
