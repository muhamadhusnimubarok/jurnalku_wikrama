import 'package:flutter/material.dart';
import '../widgets/navbar_dummy.dart';
import '../widgets/panduan_tile.dart';

class PanduanPenggunaanPage extends StatelessWidget {
  const PanduanPenggunaanPage({super.key});


  Widget garis() {
    return Container(
      height: 1,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF7F9FC),
      body: Column(
        children: [
           NavbarDummy(),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 120, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                         Icon(
                          Icons.menu_book_outlined,
                          color: Color.fromARGB(255, 23, 58, 120),
                          size: 32,
                        ),
                         SizedBox(width: 16),
                         Text(
                          "Panduan Penggunaan",
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 23, 58, 120)),
                        ),
                      ],
                    ),
                     SizedBox(height: 10),
                     Text(
                      "Selamat datang di panduan penggunaan aplikasi ini. Panduan ini membantu Anda memahami fitur-fitur secara optimal.",
                      style: TextStyle(fontSize: 20, color: Color(0xFF424242)),
                    ),

                    SizedBox(height: 40),
                    Text(
                      "Umum",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    garis(),
                    SizedBox(height: 20),
                    PanduanTile(
                      icon: Icons.note,
                      title: "Unggah Profile",
                      subtitle: "Panduan untuk mengunggah profile pengguna",
                    ),

                    PanduanTile(
                      icon: Icons.note,
                      title: "Ganti Password",
                      subtitle: "Panduan untuk mengganti password pengguna",
                    ),

                    SizedBox(height: 40),
                    Text(
                      "Untuk Siswa",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    garis(),
                    SizedBox(height: 20),
                    

                    PanduanTile(
                      icon: Icons.note,
                      title: "Mengisi Jurnal",
                      subtitle: "Panduan untuk mengisi kegiatan sehari-hari",
                    ),

                    PanduanTile(
                      icon: Icons.note,
                      title: "Kelengkapan Profile",
                      subtitle: "Panduan untuk melengkapi profile",
                    ),

                    PanduanTile(
                      icon: Icons.photo,
                      title: "Mengelola Portofolio",
                      subtitle: "Panduan untuk menambah, edit dan hapus portofolio",
                    ),

                    PanduanTile(
                      icon: Icons.verified,
                      title: "Mengelola Sertifikat",
                      subtitle: "Panduan untuk mengelola sertifikat",
                    ),

                    PanduanTile(
                      icon: Icons.info_outline_rounded,
                      title: "Catatan Sikap Saya",
                      subtitle: "Panduan untuk melihat dan memahami catatan sikap",
                    ),

                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
