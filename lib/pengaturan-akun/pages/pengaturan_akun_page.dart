import 'package:flutter/material.dart';
import '../widgets/foto_profil.dart';
import '../widgets/field_profil.dart';
import '../widgets/navbar_dummy.dart';
import '../widgets/ubah_kata_sandi.dart';

class PengaturanAkunPage extends StatefulWidget {
  const PengaturanAkunPage({super.key});

  @override
  State<PengaturanAkunPage> createState() => _PengaturanAkunPageState();
}

class _PengaturanAkunPageState extends State<PengaturanAkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavbarDummy(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Pengaturan Akun",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Dashboard / Pengaturan Akun",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Informasi Profil",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 35),

                        // foto dan formnya
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FotoProfil(),
                            const SizedBox(width: 50),

                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FieldProfil(label: "Nama"),
                                  FieldProfil(label: "NIS"),
                                  FieldProfil(label: "Rombel"),
                                  FieldProfil(label: "Rayon"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const UbahKataSandi(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
