import 'package:flutter/material.dart';
import 'package:jurnalku_wikrama/permintaan-saksi/pages/permintaan_saksi_page.dart';


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
      home: const PermintaanSaksiPage(),
    );
  }
}
