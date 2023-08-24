import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../data/models/province_model.dart';

class ListPerguruanTinggiController extends GetxController {
  final RxList<Province> dropdownItems = <Province>[].obs;
  final Rx<Province?> selectedValue = Rx<Province?>(null);
  final RxBool isDataLoaded = false.obs;
  final RxString defaultValue = 'Pilih Salah Satu'.obs;

  @override
  void onInit() {
    super.onInit();
    loadDropdownItems();
  }

  Future<List<Province>> loadDropdownItems() async {
    try {
      final items = await fetchDropdownItems();

      return items;
    } catch (e) {
      print('Error loading dropdown items: $e');
      return [];
    }
  }

  Future<List<Province>> fetchDropdownItems() async {
    final response = await http.get(Uri.parse(
        'https://www.emsifa.com/api-wilayah-indonesia/api/provinces.json'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      // final List<Province> items =
      //     data.map((item) => Province.fromJson(item)).toList();
      final List<Province> items = [
        Province(id: '0', name: 'Pilih Berdasarkan Provinsi'),
        ...data.map((item) => Province.fromJson(item)),
      ];
      return items;
    } else {
      throw Exception('Failed to load dropdown items');
    }
  }
}
