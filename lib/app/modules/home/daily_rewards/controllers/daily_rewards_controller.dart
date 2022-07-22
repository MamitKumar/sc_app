import 'package:get/get.dart';

import '../../../models/daily_reward_list.dart';

class DailyRewardsController extends GetxController {
  //TODO: Implement DailyRewardsController
  List<DailyReward> dailyRewardList = [];
  final count = 0.obs;
  @override
  void onInit() {
    dailyRewardList = [
      DailyReward(
        title: "ds",
        isCompleted: true,
        isClamed: false,
        offer: "44",
        discripstion: "dfsdlkjsdl",
      ),
    ];
    super.onInit();
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
