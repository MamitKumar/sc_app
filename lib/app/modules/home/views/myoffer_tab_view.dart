import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/modules/home/widgets/myoffer_appbar.dart';
import 'package:simple_cash_app_day/app/modules/home/widgets/myoffer_money_card.dart';

import '../controllers/home_controller.dart';
import '../widgets/offer_tile_widget.dart';

class MyofferTabView extends GetView <HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyOfferAppBar(),
          MyOfferMonetCard(),
          ListView.builder(itemBuilder: (context,indux)=>
        OfferTileCard(
          offer: controller.myOfferList[indux],),
          itemCount: controller.myOfferList.length,
          shrinkWrap: true,
        )
        ],
      )
    );
  }
}
