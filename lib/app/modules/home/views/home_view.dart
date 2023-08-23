import 'package:bimits/app/routes/app_pages.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                height: 180,
                color: Colors.amber,
                child: Image.asset(
                  "assets/image/bgAppHomee.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Row(
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
                                        fontSize: 12, color: Color(0xFFBEBEBE)))
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
                                child:
                                    Image.asset("assets/icon/notification.png"),
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
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pilih Jenjang",
                              style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: controller.toggleBox1,
                                  child: Obx(() {
                                    return Container(
                                      width: 42,
                                      height: 30,
                                      color: controller.box1Clicked.value
                                          ? Color(0xFF172359)
                                          : Color(0xFFD3D7EA),
                                      child: Center(
                                        child: Text(
                                          'S1/D3',
                                          style: TextStyle(
                                            color: controller.box1Clicked.value
                                                ? Colors.white
                                                : Color(0xFF172359),
                                            fontFamily: 'Poppins-Medium',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                  onTap: controller.toggleBox2,
                                  child: Obx(
                                    () {
                                      return Container(
                                        width: 42,
                                        height: 30,
                                        color: controller.box2Clicked.value
                                            ? Color(0xFF172359)
                                            : Color(0xFFD3D7EA),
                                        child: Center(
                                          child: Text(
                                            'S2',
                                            style: TextStyle(
                                              color:
                                                  controller.box2Clicked.value
                                                      ? Colors.white
                                                      : Color(0xFF172359),
                                              fontFamily: 'Poppins-Medium',
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Akses semua fitur dan informasi secara lengkap",
                              style: TextStyle(
                                  fontFamily: 'Poppins-Regular',
                                  fontSize: 8,
                                  color: Colors.white),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Aktifkan Premium",
                                style: TextStyle(
                                    fontFamily: 'Poppins-SemiBold',
                                    color: Color(0xFFFFB13E),
                                    fontSize: 8),
                              ),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                side: BorderSide(
                                  color:
                                      Color(0xFFFFB13E), // Warna garis kuning
                                  width: 1, // Lebar garis
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  Get.toNamed(Routes.LIST_PERGURUAN_TINGGI),
                              child: Container(
                                color: Colors.transparent,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/university.png",
                                      width: 32,
                                    ),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Text(
                                      "Perguruan Tinggi",
                                      style: TextStyle(
                                          color: Color(0xFF03050F),
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/icon/konsultasi.png",
                                  width: 32,
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  "Konsultasi",
                                  style: TextStyle(
                                      color: Color(0xFF03050F), fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/icon/financialPlanning.png",
                                  width: 32,
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  "Financial Planning",
                                  style: TextStyle(
                                      color: Color(0xFF03050F), fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 100,
                              autoPlay: true,
                              enlargeCenterPage: true,
                            ),
                            items: [
                              Image.asset('assets/image/bannerIklan.png'),
                              Image.asset('assets/image/bannerIklan.png'),
                              Image.asset('assets/image/bannerIklan.png'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pendaftaran Di Buka",
                                style: TextStyle(
                                  fontFamily: 'Poppins-Medium',
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 9),
                                      margin: EdgeInsets.only(right: 6),
                                      child: Text(
                                        "Semua",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: 'Poppins-Medium'),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Color(0xFF273A96),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 9),
                                      margin: EdgeInsets.only(right: 6),
                                      child: Text(
                                        "Universitas",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: 'Poppins-Medium'),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Color(0xFF6775B5),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 9),
                                      margin: EdgeInsets.only(right: 6),
                                      child: Text(
                                        "Politeknik",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: 'Poppins-Medium'),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Color(0xFF6775B5),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 9),
                                      margin: EdgeInsets.only(right: 6),
                                      child: Text(
                                        "Kedinasan",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: 'Poppins-Medium'),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Color(0xFF6775B5),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 9),
                                      margin: EdgeInsets.only(right: 6),
                                      child: Text(
                                        "Lembaga Kursus",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontFamily: 'Poppins-Medium'),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Color(0xFF6775B5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              itemPendaftaran(
                                  title:
                                      "Beasiswa DevOps Engineer dan Back-End Developer"),
                              itemPendaftaran(title: "Beasiswa Mobile Dev"),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
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

class itemPendaftaran extends StatelessWidget {
  const itemPendaftaran({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: Get.width,
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF172359).withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Container(
            width: Get.width * 0.36,
            height: 115,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              child: Image.asset(
                "assets/image/dicoding.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFfFFD89E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Lembaga Kursus",
                    style: TextStyle(
                        fontSize: 4,
                        color: Color(0xFFFF9B08),
                        fontFamily: 'Poppins-Medium'),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: Get.width * 0.46,
                  child: Text(
                    title,
                    style:
                        TextStyle(fontSize: 10, fontFamily: 'Poppins-Medium'),
                    maxLines: 2, // Maksimum 2 baris
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pendaftaran",
                  style: TextStyle(fontSize: 8, fontFamily: 'Poppins-Regular'),
                ),
                Text(
                  "16 Oktober 2022 - 24 November 2022",
                  style: TextStyle(fontSize: 8, fontFamily: 'Poppins-Medium'),
                ),
                Text(
                  "Pelaksanaan",
                  style: TextStyle(fontSize: 8, fontFamily: 'Poppins-Regular'),
                ),
                Text(
                  "Januari - April 2023",
                  style: TextStyle(fontSize: 8, fontFamily: 'Poppins-Medium'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
