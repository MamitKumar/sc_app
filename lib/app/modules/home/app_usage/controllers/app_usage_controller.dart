import 'package:get/get.dart';

import '../../../models/app_use_list.dart';

class AppUsageController extends GetxController {
  //TODO: Implement AppUsageController

  final count = 0.obs;
  List<AppUsage> appUsage = [];
  @override
  void onInit() {
    appUsage = [
      AppUsage(
        dataCollect: "16.35 MB",
        dis: "com.healthkart.healthkart",
        image:
            "https://images.unsplash.com/photo-1658509901976-71540da04613?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
        title: "HealthKart",
      )
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
