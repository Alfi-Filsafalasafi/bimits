import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/univ_profile_controller.dart';

class UnivProfileView extends GetView<UnivProfileController> {
  const UnivProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Image.asset(
              'assets/icon/back.png',
              width: 13,
            ),
          ),
          title: const Text(
            'Sekolah Tinggi Ilmu Komputer Indonesia, Malang',
            style: TextStyle(
                color: Color(0xFF777777),
                fontFamily: 'Poppins-Medium',
                fontSize: 16),
            maxLines: 2, // Set maksimal dua baris
            overflow: TextOverflow.ellipsis,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/image/univ/stiki.png",
                width: 113,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/icon/tentang.png",
                        width: 50,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("tentang",
                          style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 12,
                              fontFamily: 'Poppins-Regular'))
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/icon/biayaKuliah.png",
                        width: 50,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Biaya Kuliah",
                          style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 12,
                              fontFamily: 'Poppins-Regular'))
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/icon/alumni.png",
                        width: 50,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Alumni",
                          style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 12,
                              fontFamily: 'Poppins-Regular'))
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/icon/beasiswa.png",
                        width: 50,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Beasiswa",
                          style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 12,
                              fontFamily: 'Poppins-Regular'))
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yuk, Konsultasi",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF03050F),
                            fontFamily: 'Poppins-Regular'),
                      ),
                      Text(
                        "Orang Kepercayaan STIKI",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF777777),
                            fontFamily: 'Poppins-Regular'),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF172359),
                          fontFamily: 'Poppins-Regular'),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  MyCard(
                    image: "rizkiyana",
                    nama: "Rizkiyana Amalina Putri",
                    title: "Cumlaude STIKI'19",
                  ),
                  MyCard(
                    image: "maudya",
                    nama: "Maudiya Aruma",
                    title: "Duta Kampus STIKI",
                  ),
                  MyCard(
                    image: "cornaldo",
                    nama: "Cornaldo Brilian",
                    title: "Mahasiswa Karyawan",
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.image,
    required this.nama,
    required this.title,
  });
  final String image;
  final String nama;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, top: 15, bottom: 30),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF172359).withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(10)),
      width: 121,
      height: 182,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 76,
                  height: 76,
                  child: ClipOval(
                    child: Image.asset("assets/image/person/$image.png"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  nama,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF777777),
                    fontFamily: 'Poppins-Regular',
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 9,
                    color: Color(0xFF999999),
                    fontFamily: 'Poppins-Regular',
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 46,
                height: 19,
                decoration: BoxDecoration(
                    color: Color(0xFF273A96),
                    borderRadius: BorderRadius.circular(2)),
                child: Center(
                  child: Text(
                    "Ajukan",
                    style: TextStyle(
                        fontFamily: 'Poppins-Medium',
                        fontSize: 7,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 46,
                height: 19,
                decoration: BoxDecoration(
                    color: Color(0xFFFF9B08),
                    borderRadius: BorderRadius.circular(2)),
                child: Center(
                  child: Text(
                    "CV",
                    style: TextStyle(
                        fontFamily: 'Poppins-Medium',
                        fontSize: 7,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
