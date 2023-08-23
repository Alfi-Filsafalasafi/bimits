import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_perguruan_tinggi_controller.dart';

class ListPerguruanTinggiView extends GetView<ListPerguruanTinggiController> {
  const ListPerguruanTinggiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "List Perguruan Tinggi",
              style: TextStyle(fontFamily: 'Poppins-Medium'),
            ),
            SizedBox(height: 7),
            Text(
              "Cari Perguruan Tinggi impianmu dan jadilah bagian di dalamnya",
              style: TextStyle(
                  color: Color(0xFF777777),
                  fontSize: 12,
                  fontFamily: 'Poppins-Regular'),
            ),
          ],
        ),
      ),
    ));
  }
}
