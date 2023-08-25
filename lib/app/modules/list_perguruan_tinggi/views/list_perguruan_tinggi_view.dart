import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/province_model.dart';
import '../../../routes/app_pages.dart';
import '../controllers/list_perguruan_tinggi_controller.dart';

class ListPerguruanTinggiView extends GetView<ListPerguruanTinggiController> {
  const ListPerguruanTinggiView({Key? key}) : super(key: key);
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
              SizedBox(height: 13),
              TextField(
                style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 12,
                    color: Color(0xFF023047)),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Cari Perguruan Tinggi ...",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            Color(0xFF023047)), // Ganti warna border saat fokus
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
                  child: FutureBuilder<List<Province>>(
                    future: controller.loadDropdownItems(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // Tampilkan indikator loading jika data sedang diambil
                        return DropdownButton(
                          value: 'option1',
                          underline: Container(),
                          isExpanded: true,
                          items: [
                            DropdownMenuItem(
                              value: 'option1',
                              child: Text(
                                'Pilih Berdasarkan Provinsi',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Regular'),
                              ),
                            ),
                          ],
                          onChanged: (value) {
                            print("ini default value $value");
                          },
                        );
                      } else if (snapshot.hasError) {
                        // Tampilkan pesan kesalahan jika terjadi error
                        return Text('Error: ${snapshot.error}');
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        // Tampilkan pesan jika data kosong atau tidak ada
                        return Text('No data available');
                      } else {
                        // Tampilkan dropdown jika data berhasil diambil
                        return Obx(
                          () => DropdownButton<Province>(
                            isExpanded: true,
                            underline: Container(),
                            value: controller.selectedValue.value ??
                                snapshot.data![0],
                            onChanged: (newValue) {
                              if (newValue!.id != '0') {
                                controller.selectedValue.value = newValue;
                                print("value nya ${newValue.name}");
                              }
                            },
                            items: snapshot.data!.map((Province item) {
                              return DropdownMenuItem<Province>(
                                value: item,
                                child: Text(
                                  item.name,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins-Regular'),
                                ),
                              );
                            }).toList(),
                          ),
                        );
                      }
                    },
                  )),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 9),
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
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 9),
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
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 9),
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
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 9),
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
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 9),
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
                height: 20,
              ),
              listUniv(
                  image: "AsiaMalang",
                  namaUniv:
                      "Sekolah Tinggi Manajemen Ilmu Komputer Asia Malang",
                  buka: true,
                  lokasi: "Malang, Jawa Timur"),
              listUniv(
                  image: "dicoding",
                  namaUniv: "Dicoding Indonesia",
                  buka: false,
                  lokasi: "Bandung, Jawa Barat"),
              listUniv(
                  image: "unmer",
                  namaUniv: "Universitas Merdeka Malang",
                  buka: false,
                  lokasi: "Malang, Jawa Timur"),
              listUniv(
                  image: "stiki",
                  namaUniv: "Sekolah Tinggi Ilmu Komputer Indonesia",
                  buka: false,
                  lokasi: "Malang, Jawa Timur"),
              listUniv(
                  image: "unikama",
                  namaUniv: "Universitas PGRI Kanjuruhan Malang",
                  buka: false,
                  lokasi: "Malang, Jawa Timur"),
            ],
          ),
        ),
      ),
    ));
  }
}

class listUniv extends StatelessWidget {
  const listUniv({
    super.key,
    required this.image,
    required this.namaUniv,
    required this.lokasi,
    required this.buka,
  });
  final String image;
  final String namaUniv;
  final String lokasi;
  final bool buka;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(bottom: 20),
      leading: Image.asset("assets/image/univ/$image.png", width: 55),
      onTap: () => Get.toNamed(Routes.UNIV_PROFILE,
          arguments: [image, namaUniv, lokasi]),
      title: Text(
        namaUniv,
        style: TextStyle(fontFamily: "Poppins-Medium", fontSize: 12),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lokasi,
            style: TextStyle(fontFamily: "Poppins-Regular", fontSize: 10),
          ),
          SizedBox(height: 4), // Spasi antara subtitle dan teks tambahan
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: buka ? Color(0xFF008033) : Color(0xFFD70000),
                ),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
            child: Text(
              buka ? "Pendaftaran dibuka" : "Belum dibuka",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: 6,
                  color: buka ? Color(0xFF008033) : Color(0xFFD70000)),
            ),
          ),
        ],
      ),
    );
  }
}
