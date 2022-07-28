import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../offer_detail/views/offer_detail_view.dart';

class OfferTileCard extends StatelessWidget {
  const OfferTileCard({
    Key? key, required this.offer,
  }) : super(key: key);
  final offer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.sp, right: 22, left: 22),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Assets.mojdeail.image(
              width: 240.sp,
              height: 196.sp,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white,ColorName.white, Colors.white10],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                border: Border.all(color: ColorName.buttonOther),
                borderRadius: BorderRadius.circular(13.sp)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 12.sp, top: 12.sp, bottom: 12.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: CachedNetworkImage(
                      imageUrl: offer.imageAppIcon,
                      height: 50.sp,
                      width: 50.sp,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13.sp,
                    ),
                    child: Text(
                      offer.title,
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.sp, bottom: 8.sp),
                    child: Text(
                      offer.subTitle,
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(OfferDetailView(),);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.sp),
                              color: ColorName.buttonOther,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.sp, horizontal: 13.sp),
                              child: Text("Get ₹${offer.cashOffer}",style: TextStyle(color: ColorName.white),),
                            ),
                          ),  
                        ),
                      Padding(
                        padding:  EdgeInsets.only(left: 11.sp,right: 3.5.sp),
                        child: Assets.profileAvtar.image(width: 18.sp,
                        height: 14.sp),
                      ),
                      Text("${offer.user}",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
