import 'package:get/get.dart';

import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/hub/bindings/hub_binding.dart';
import '../modules/hub/views/hub_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/showCategory/bindings/show_category_binding.dart';
import '../modules/showCategory/views/show_category_view.dart';

import '../modules/store/bindings/store_binding.dart';
import '../modules/store/views/store_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.STORE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HUB,
      page: () => const HubView(),
      binding: HubBinding(),
    ),
    GetPage(
      name: _Paths.STORE,
      page: () => const StoreView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.SHOW_CATEGORY,
      page: () => const ShowCategoryView(),
      binding: ShowCategoryBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
  ];
}
