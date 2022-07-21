import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/daily_rewards/bindings/daily_rewards_binding.dart';
import '../modules/home/daily_rewards/views/daily_rewards_view.dart';
import '../modules/home/offer_detail/bindings/offer_detail_binding.dart';
import '../modules/home/offer_detail/views/offer_detail_view.dart';
import '../modules/home/payouts/bindings/payouts_binding.dart';
import '../modules/home/payouts/views/payouts_view.dart';
import '../modules/home/transactions/bindings/transactions_binding.dart';
import '../modules/home/transactions/views/transactions_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/wallet/bindings/wallet_binding.dart';
import '../modules/home/wallet/views/wallet_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.WALLET,
          page: () => WalletView(),
          binding: WalletBinding(),
        ),
        GetPage(
          name: _Paths.PAYOUTS,
          page: () => PayoutsView(),
          binding: PayoutsBinding(),
        ),
        GetPage(
          name: _Paths.TRANSACTIONS,
          page: () => TransactionsView(),
          binding: TransactionsBinding(),
        ),
        GetPage(
          name: _Paths.OFFER_DETAIL,
          page: () => OfferDetailView(),
          binding: OfferDetailBinding(),
        ),
        GetPage(
          name: _Paths.DAILY_REWARDS,
          page: () => DailyRewardsView(),
          binding: DailyRewardsBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
