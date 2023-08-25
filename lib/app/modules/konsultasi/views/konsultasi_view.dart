import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/konsultasi_controller.dart';

class KonsultasiView extends GetView<KonsultasiController> {
  const KonsultasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Konsultasi",
                  style: TextStyle(fontFamily: 'Poppins-Medium'),
                ),
                SizedBox(height: 7),
                Text(
                  "Cari mentor terbaikmu untuk temukan jalan masa depan yang cemerlang",
                  style: TextStyle(
                      color: Color(0xFF777777),
                      fontSize: 12,
                      fontFamily: 'Poppins-Regular'),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 13),
                TextField(
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontSize: 12,
                      color: Color(0xFF023047)),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Cari Mentor/Konsultan ...",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(
                              0xFF023047)), // Ganti warna border saat fokus
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 6, horizontal: 12), // Ganti warna hint
                  ),
                  cursorWidth: 1.5,
                  cursorColor: Color(0xFF023047),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(
                        8.0), // Ganti dengan border radius yang diinginkan
                  ),
                  child: Obx(
                    () => DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      value: controller.selectedValue.value,
                      onChanged: (newValue) {
                        controller.selectedValue.value = newValue!;
                      },
                      items: controller.dropdownItems.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Poppins-Regular'),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
