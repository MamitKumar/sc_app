import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/routes/app_pages.dart';

class SplashSecController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 2),() => Get.offNamed(Routes.SPLASH),);
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
