import 'package:flutter/material.dart';

class MateriPage extends StatefulWidget {
  const MateriPage({super.key});
  

  @override
  State<MateriPage> createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {

  // ==== FUNGSI tampilData (BIAR GAK ERROR) ====
  Widget tampilData(String title, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
          Text(value),
        ],
      ),
    );
  }

  // ================ BUILD ================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ================= BODY ====================
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ================= TITLE =================
              Text(
                "Jurnal Pembiasaan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 30),

              // ================= C. Materi =====================
              Text(
                "C. Materi yang dipelajari",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),

              Container(
                padding:  EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    _buildMateriCard("Materi Tentang Widget Flutter", "12 Januari 2025"),
                    _buildMateriCard("Materi Tentang ListView", "13 Januari 2025"),
                    _buildMateriCard("Materi Tentang ListTile", "14 Januari 2025"),
                  ],
                ),
              ),

            
              SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMateriCard(String title, String tanggal) {
    return Card(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      elevation: 2,
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Klik untuk melihat detail"),
        childrenPadding: EdgeInsets.all(16),
        children: [
          tampilData("Tanggal", tanggal),
          tampilData("Status", "Pending"),
        ],
      ),
    );
  }
}