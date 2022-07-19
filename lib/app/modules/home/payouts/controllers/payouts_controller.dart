import 'package:get/get.dart';

import '../../../models/withdraw_payout_list.dart';

class PayoutsController extends GetxController {
  //TODO: Implement PayoutsController
  List<Payouts> payoutsList = [];
  final count = 0.obs;
  @override

  void onInit() {
    payoutsList = [
      Payouts(
          image: "",
          number: "987654-43210 : ₹ 500",
          iscompleted: false,
          isfaild: true,
          timeDate: "12 Jan 2022, 02:05:43 PM"),
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
