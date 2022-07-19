import 'package:get/get.dart';

import '../../../models/transction_list.dart';

class TransactionsController extends GetxController {
  //TODO: Implement TransactionsController

  final count = 0.obs;
  List <Transction> transctionList=[];
  @override
  void onInit() {
    transctionList=[
      Transction(rewardName: "SKJDSKL", balance: "balance", dateTime: "dateTime")
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
