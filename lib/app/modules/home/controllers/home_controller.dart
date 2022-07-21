import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../models/offer_tile_list.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var tabIndex = 0.obs;

  late final PageController pageController;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    pageController.jumpToPage(index);
  }

  List<OfferTileList> offerTileList = [];
  @override
  void onInit() {
    pageController = PageController();
    offerTileList = [
      OfferTileList(
          cashOffer: 435,
          imageAppIcon: "https://images.unsplash.com/photo-1658370640341-7eea6370dce4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
          subTitle: "AppDay Technologies Private Limited",
          title: "AppDay",
          user: 23)
    ];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
