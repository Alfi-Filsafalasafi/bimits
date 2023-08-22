import 'package:get/get.dart';

import '../controllers/list_perguruan_tinggi_controller.dart';

class ListPerguruanTinggiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListPerguruanTinggiController>(
      () => ListPerguruanTinggiController(),
    );
  }
}
