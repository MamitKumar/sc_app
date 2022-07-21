import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../../gen/assets.gen.dart';
import '../widgets/offerde..Imagebanner.dart';
import '../widgets/offerde..aboutapp.dart';
import '../widgets/offerde..app_task.dart';
import '../widgets/offerde..appbar.dart';
import '../widgets/offerde..apptile.dart';
import '../controllers/offer_detail_controller.dart';

class OfferDetailView extends GetView<OfferDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              child: Assets.backgroundimageofferdetail.image(
                width: 474.sp,
                height: 572.sp,
              )),
          SingleChildScrollView(
            child: Column(
              children: [
                AppbarOfferDetail(),
                OfferDetail_ImageBanner(
                  bannerImage:
                      'https://static.toiimg.com/thumb/91128298.cms?resizemode=4&width=1200&height=900',
                ),
                AppTile(
                  appIcon:
                      'https://static.toiimg.com/thumb/91128298.cms?resizemode=4&width=1200&height=900',
                  appTitle: 'Moj: Short Video App',
                  appSubTitle: 'Short Video Application',
                ),
                AboutApp(),
                TasksAppOfferDetail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
