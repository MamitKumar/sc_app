import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/modules/home/controllers/home_controller.dart';

import '../widgets/dailly_reward_item_design.dart';
import '../widgets/daily_reward_appbar.dart';
import '../widgets/daily_reward_card_gift.dart';
import '../widgets/daily_reward_tabbar.dart';
import '../widgets/refer_earn_design.dart';

class DailyRewardsView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
      children: [
        DailyRewardAppBar(),
        DailyRewardCardGift(),
        DailyRewardTabBar(),
        // ReferEarnStep(
        //   stepNum: "Step #1",
        //   stepDiscripction: "Invite your friends to Simple Cash using your refferal code",
        // ),
        // ReferEarnStep(
        //   stepNum: "Step #2",
        //   stepDiscripction: "Your friends sign up on Easy Cash",
        // ),
        // ReferEarnStep(
        //   stepNum: "Step #3",
        //   stepDiscripction: "When your friend will complete 5 offer then you will get  ₹10",
        // ),
        ListView.builder(itemBuilder: (context,indux)=>
        DailyRewardTileDesign(
          reward: controller.dailyRewardList[indux],),
          itemCount: controller.dailyRewardList.length,
          shrinkWrap: true,
        ),
        
      ],
    )
    );
  }
}
