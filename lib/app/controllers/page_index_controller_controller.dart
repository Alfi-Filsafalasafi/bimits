import 'package:get/get.dart';

import '../routes/app_pages.dart';

class PageIndexController extends GetxController {
  RxInt pageIndex = 0.obs;

  void ChangePage(int i) async {
    switch (i) {
      case 0:
        pageIndex.value = i;
        Get.offAllNamed(Routes.HOME);
        break;
      case 1:
        pageIndex.value = i;
        Get.offAllNamed(Routes.HOME);
        break;
      case 2:
        pageIndex.value = i;
        Get.offAllNamed(Routes.HOME);
        break;
      default:
        Get.offAllNamed(Routes.HOME);
    }
  }
}
