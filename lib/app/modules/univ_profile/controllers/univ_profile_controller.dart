import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class UnivProfileController extends GetxController {
  void openCatalog() async {
    try {
      final dir = await getTemporaryDirectory();
      final file = File("${dir.path}/cv.pdf");
      print(file);
      var data = await rootBundle.load("assets/file/cv.pdf");
      var bytes = data.buffer.asUint8List();
      //memasukkan data pada bytes
      await file.writeAsBytes(bytes);

      await OpenFile.open(file.path);
      print("berhasil");
    } catch (e) {
      print(e);
    }
  }
}
