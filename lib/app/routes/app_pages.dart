import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/list_perguruan_tinggi/bindings/list_perguruan_tinggi_binding.dart';
import '../modules/list_perguruan_tinggi/views/list_perguruan_tinggi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIST_PERGURUAN_TINGGI,
      page: () => const ListPerguruanTinggiView(),
      binding: ListPerguruanTinggiBinding(),
    ),
  ];
}
