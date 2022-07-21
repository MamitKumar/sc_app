import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/appbar.dart';
import '../widgets/offer_tile_widget.dart';
import '../widgets/survacardwidget.dart';

class HomeTabView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarSimpleCash(),
        SurveyCardWidget(),
        OfferTileCard( 
          //balance chip
          offerTileBalanceChip: 450,
          ),

      ],
    );
  }
}
