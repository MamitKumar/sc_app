import 'package:get/get.dart';

import '../controllers/daily_rewards_controller.dart';

class DailyRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DailyRewardsController>(
      DailyRewardsController()
    );
  }
}
