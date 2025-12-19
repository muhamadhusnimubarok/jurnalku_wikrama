import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_wikrama/components/user_guide_card.dart';

class UserGuidePage extends StatelessWidget {
  UserGuidePage({super.key});

  final Map<String, dynamic> cardItems = {
    'common': [
      {
        'title': 'Unggah Profile',
        'description': 'Panduan untuk mengunggah profile pengguna',
        'icon': Icons.description,
      },
      {
        'title': 'Ganti Password',
        'description': 'Panduan untuk mengganti password pengguna',
        'icon': Icons.description,
      },
    ],

    'forStudent': [
      {
        'title': 'Mengisi Jurnal',
        'description': 'Panduan untuk mengisi kegiatan sehari - hari',
        'icon': Icons.description,
      },
      {
        'title': 'Kelengkapan Profile',
        'description': 'Panduan untuk melengkapi profile',
        'icon': Icons.description,
      },
      {
        'title': 'Mengelola Portfolio',
        'description': 'Panduan untuk menambah, edit, dan hapus portfolio',
        'icon': Icons.folder_shared,
      },
      {
        'title': 'Mengelola Sertifikat',
        'description': 'Panduan untuk menambah, edit, dan hapus sertifikat',
        'icon': Icons.check_circle,
      },
      {
        'title': 'Catatan Sikap Saya',
        'description': 'Panduan untuk melihat dan memahami catatan sikap',
        'icon': Icons.info,
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        // backgroundColor: Colors.grey[200],
        leading: Icon(Icons.home_outlined, size: 20, color: Colors.grey[600]),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Loremmmm",
                        // textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                      Text(
                        "PPLG XII-3",
                        // textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                ClipOval(
                  child: Image.asset(
                    "assets/images/anonim.jpg",
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu_book_outlined,
                    color: Colors.indigo,
                    size: 24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Panduan Pengguna",
                    style: GoogleFonts.poppins(
                      color: Colors.indigo,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.",
                style: GoogleFonts.poppins(color: Colors.black87, fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                "Umum",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Divider(color: Colors.grey[200]),
              ListView.separated(
                itemCount: cardItems['common'].length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16,);
                },
                itemBuilder: (context, index) {
                  final item = cardItems['common'][index];

                  return GestureDetector(
                    onTap: () {

                    },
                    child: UserGuideCard(
                      title: item['title'],
                      description: item['description'],
                      icon: item['icon'],
                    ),
                  );
                },
              ),
              SizedBox(height: 20,),
              Text(
                "Untuk Siswa",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Divider(color: Colors.grey[200]),

              ListView.separated(
                itemCount: cardItems['forStudent'].length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15,);
                }, 
                itemBuilder: (context, index) {
                  final item = cardItems['forStudent'][index];
                  return GestureDetector(
                    child: UserGuideCard(
                      title: item['title'], 
                      description: item['description'], 
                      icon: item['icon']
                    ),
                  );
                }, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}