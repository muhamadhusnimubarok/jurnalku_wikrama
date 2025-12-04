import 'package:flutter/material.dart';
import 'package:jurnalku_wikrama/explore.dart';
import 'package:jurnalku_wikrama/login_page.dart';
import 'package:jurnalku_wikrama/progress-page.dart';
import 'package:jurnalku_wikrama/panduan-penggunaan/pages/panduan_penggunaan_page.dart';
import 'package:jurnalku_wikrama/pengaturan-akun/pages/pengaturan_akun_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'JurnalkuWikrama',
      home: const PanduanPenggunaanPage(),
    );
  }
}
