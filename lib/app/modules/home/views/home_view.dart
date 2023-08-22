import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/page_index_controller_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final pageC = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            ClipPath(
              child: Container(
                width: Get.width,
                child: Image.asset(
                  "assets/image/bgAppHome.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hai, Alfi Filsafalasafi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins-SemiBold'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/icon/maps.png",
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Malang, Jawa Timur",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFBEBEBE)))
                                ],
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 14, top: 5),
                                  width: 19,
                                  height: 24,
                                  child: Image.asset(
                                      "assets/icon/notification.png"),
                                ),
                                Positioned(
                                  top:
                                      1, // Sesuaikan posisi vertikal lingkaran dengan kebutuhan Anda
                                  right:
                                      5, // Sesuaikan posisi horizontal lingkaran dengan kebutuhan Anda
                                  child: Center(
                                    child: Text(
                                      '1', // Angka yang ingin Anda tampilkan
                                      style: TextStyle(
                                        color: Color(0xFFFFB13E),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xFFD3D7EA),
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedItemColor: Color(0xFF172359),
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    "assets/icon/home.png",
                    width: 18,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    "assets/icon/chat.png",
                    width: 18,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset(
                    "assets/icon/profile.png",
                    width: 18,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
