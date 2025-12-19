import 'package:flutter/material.dart';

class PekerjaanPage extends StatefulWidget {
  const PekerjaanPage({super.key});
  

  @override
  State<PekerjaanPage> createState() => _PekerjaanPageState();
}

class _PekerjaanPageState extends State<PekerjaanPage> {

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

              // ================= B. Pekerjaan =====================
              Text(
                "B. Pekerjaan yang dilakukan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),

              Container(
                padding:  EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    _buildPekerjaanCard(
                      "Project Flutter",
                      "10 Januari 2025",
                      "Farhan",
                      "Done",
                    ),

                    _buildPekerjaanCard(
                      "Pekerjaan Project Progress Belajar",
                      "10 Januari 2025",
                      "Aqila",
                      "Done",
                    ),

                    _buildPekerjaanCard(
                      "Pekerjaan Jurnal Pembiasaan",
                      "10 Januari 2025",
                      "Arizqy",
                      "Pending",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  // ==================== WIDGET HELPER =====================

  Widget _buildPekerjaanCard(String title, String tanggal, String saksi, String status) {
    return Card(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      elevation: 2,
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Tanggal, $tanggal"),
        childrenPadding: EdgeInsets.all(16),
        children: [
          tampilData("Tanggal", tanggal),
          tampilData("Saksi", saksi),
          tampilData("Status", status),
        ],
      ),
    );
  }

}