import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/modules/home/controllers/home_controller.dart';
import '../widgets/offer_tile_widget.dart';
import '../widgets/upcomming_app_bar.dart';
import '../widgets/upcomming_timer_card.dart';

class UpcommingTabView extends GetView <HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        UpcommingAppBar(),
        UpcommingTimerCard(),
          ListView.builder(itemBuilder: (context,indux)=>
        OfferTileCard(
          offer: controller.upcommingList[indux],),
          itemCount: controller.upcommingList.length,
          shrinkWrap: true,
        )
      ],
      ),
    );
  }
}
