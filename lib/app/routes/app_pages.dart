import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/konsultasi/bindings/konsultasi_binding.dart';
import '../modules/konsultasi/views/konsultasi_view.dart';
import '../modules/list_perguruan_tinggi/bindings/list_perguruan_tinggi_binding.dart';
import '../modules/list_perguruan_tinggi/views/list_perguruan_tinggi_view.dart';
import '../modules/univ_profile/bindings/univ_profile_binding.dart';
import '../modules/univ_profile/views/univ_profile_view.dart';

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
    GetPage(
      name: _Paths.UNIV_PROFILE,
      page: () => UnivProfileView(),
      binding: UnivProfileBinding(),
    ),
    GetPage(
      name: _Paths.KONSULTASI,
      page: () => const KonsultasiView(),
      binding: KonsultasiBinding(),
    ),
  ];
}
