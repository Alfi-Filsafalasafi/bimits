import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_perguruan_tinggi_controller.dart';

class ListPerguruanTinggiView extends GetView<ListPerguruanTinggiController> {
  const ListPerguruanTinggiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListPerguruanTinggiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ListPerguruanTinggiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
