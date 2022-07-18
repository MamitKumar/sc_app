import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WalletView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WalletView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WalletView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
