import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_cash_app_day/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';
import '../widgets/appbar.dart';
import '../widgets/offer_tile_widget.dart';
import '../widgets/opps_poppup.dart';
import '../widgets/sucessfull_popup.dart';
import '../widgets/survacardwidget.dart';

class HomeTabView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarSimpleCash(),
        SurveyCardWidget(),
        ListView.builder(
          itemBuilder: (context, indux) => OfferTileCard(
            offer: controller.offerTileList[indux],
          ),
          itemCount: controller.offerTileList.length,
          shrinkWrap: true,
        ),
        Row(
          children: [
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  Get.dialog(
                    AlertDialog(
                    titlePadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.zero,
                    content: SucessPopPup(),
                  ));
                },
                child: Text("succes popup")),
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  Get.dialog(
                    AlertDialog(
                       titlePadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.zero,
                      content: OppsPopPup(),
                  )
                  );
                },
                child: Text("cancel popup")),
                // ignore: deprecated_member_use
                FlatButton(
                onPressed: () {
                  Get.toNamed(Routes.SPLASH_SEC);
                },
                child: Text("splash"))
          ],
        ),
      ],
    );
  }
}
