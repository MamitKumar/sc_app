import 'package:get/get.dart';

import '../controllers/app_usage_controller.dart';

class AppUsageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppUsageController>(
      () => AppUsageController(),
    );
  }
}
