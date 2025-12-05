import 'package:flutter/material.dart';
import 'package:jurnalku_wikrama/permintaan-saksi/widgets/navbar_dummy.dart';

class PermintaanSaksiPage extends StatelessWidget {
  const PermintaanSaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavbarDummy(),

          
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Permintaan Saksi",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Kelola permintaan menjadi saksi dari siswa lain",
                            style: TextStyle(
                              fontSize: 15.5,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                "PENGIRIM",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "TANGGAL",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "KONFIRMASI",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 12),

                 
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300, width: 1),
                      ),
                      child: Row(
                        children: [
                         
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  "Budi Santoso",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[850],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  "5 Des 2025",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[850],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        
                          Expanded(
                            child: Column(
                              children: [
                              
                                GestureDetector(
                                  child: Container(
                                    width: 120,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFCCF5D3), 
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Color(0xFF2E8B57), width: 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Accept",
                                        style: TextStyle(
                                          color: Color(0xFF2E8B57),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 10),

                              
                                GestureDetector(
                                  child: Container(
                                    width: 120,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF7B9B9), 
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Color(0xFFC62828), width: 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Decline",
                                        style: TextStyle(
                                          color: Color(0xFFC62828),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            top: 92,
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 242, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Friday, 5 December 2025",
                style: TextStyle(
                  color: Color.fromARGB(255, 23, 102, 182),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
