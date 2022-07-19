import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payouts_controller.dart';

class PayoutsView extends GetView<PayoutsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PayoutsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PayoutsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
