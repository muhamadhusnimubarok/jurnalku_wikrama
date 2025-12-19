import 'package:flutter/material.dart';
import 'package:jurnalku_wikrama/attitude-record.dart';
import 'package:jurnalku_wikrama/dashboard.dart';
import 'package:jurnalku_wikrama/explore.dart';
import 'package:jurnalku_wikrama/habituational_jurnal.dart';
import 'package:jurnalku_wikrama/login_page.dart';
import 'package:jurnalku_wikrama/panduan-penggunaan/widgets/panduan_tile.dart';
import 'package:jurnalku_wikrama/permintaan_saksi.dart';
import 'package:jurnalku_wikrama/profile.dart';
import 'package:jurnalku_wikrama/progress-page.dart';
import 'package:jurnalku_wikrama/panduan-penggunaan/pages/panduan_penggunaan_page.dart';
import 'package:jurnalku_wikrama/pengaturan-akun/pages/pengaturan_akun_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JurnalkuWikrama',
      home: LoginPage(),
      initialRoute: '/login',
      

      routes: {
        // login
        '/login': (context) => const LoginPage(),
        // main
        '/dashboard': (context) =>  DashboardPage(),
        '/explore': (context) => const Explore(),
        '/profile': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as int?;
          return ProfilePage(initialTab: args ?? 0);
        }, // '/explore-murid': (context) => const ExploreMuridPage(),
        '/habituational-jurnal': (context) => HabitualJurnalPage(),
        '/witness-request': (context) => PermintaanSaksi(),
        '/progress': (context) => ProgressPage(),
        '/attitude-record': (context) => AttitudeRecordPage(),
        '/user-guide': (context) => UserGuidePage(),
        '/account-setting': (context) => SettingAccount(),
      },
    );
  }
}
