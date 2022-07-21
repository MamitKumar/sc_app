import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../routes/app_pages.dart';
import '../../widgets/appbar.dart';
import '../controllers/daily_rewards_controller.dart';
import '../widgets/dailly_reward_item_design.dart';
import '../widgets/daily_reward_appbar.dart';
import '../widgets/daily_reward_card_gift.dart';

class DailyRewardsView extends GetView<DailyRewardsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        DailyRewardAppBar(),
        DailyRewardCardGift(),
        Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Daily Rewards",
                  style: TextStyle(
                      color: ColorName.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Refer & Earn",
                  style: TextStyle(
                      color: ColorName.offfeButton,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600),
                )),
          ],
        ),
        ListView.builder(
          itemBuilder: (context, index) =>
              DailyRewardTile(reward: controller.dailyRewardList[index],),
          itemCount: controller.dailyRewardList.length,
          shrinkWrap: true,
        ),
      ],
    ));
  }
}
