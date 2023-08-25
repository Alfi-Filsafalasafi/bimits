import 'package:get/get.dart';

class KonsultasiController extends GetxController {
  final List<String> dropdownItems = [
    'Kelompokkan Berdasarkan Lembaga',
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  final RxString selectedValue = 'Kelompokkan Berdasarkan Lembaga'.obs;
}
