import 'package:flutter/material.dart';
import 'pengaturan-akun/index.dart';

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
      home: const PengaturanAkunPage(),
    );
  }
}
