import 'package:get/get.dart';

import '../controllers/univ_profile_controller.dart';

class UnivProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnivProfileController>(
      () => UnivProfileController(),
    );
  }
}
