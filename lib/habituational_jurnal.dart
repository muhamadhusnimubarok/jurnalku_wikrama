import 'package:flutter/material.dart';

class HabitualJurnalPage extends StatefulWidget {
   HabitualJurnalPage({super.key});

  @override
  State<HabitualJurnalPage> createState() => HabitualJurnalPageState();
}

class HabitualJurnalPageState extends State<HabitualJurnalPage> {
  // Status untuk setiap tanggal (null = belum diisi, true = sudah diisi, false = tidak diisi)
  Map<int, bool?> dateStatus = {
    3: false, 4: false, 5: false, 6: false, 7: false,
    10: false, 11: false, 12: false, 13: false, 14: false,
    17: false, 18: false, 19: false, 20: false, 21: false,
    25: null, 26: null, 27: null, 28: null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon:  Icon(Icons.home_outlined, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Text(
                      'Loremm',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'PPLG XII-7',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                 SizedBox(width: 12),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade300,
                  child:  Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                 Text(
                  'Jurnal Pembiasaan',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                 SizedBox(height: 8),
                Text(
                  'NOVEMBER - 2025',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                    letterSpacing: 1,
                  ),
                ),
                 SizedBox(height: 20),

                // Button Bulan Sebelumnya
                ElevatedButton.icon(
                  onPressed: () {},
                  icon:  Icon(Icons.arrow_back, size: 18),
                  label:  Text('Bulan\nSebelumnya'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xFF0D47A1),
                    foregroundColor: Colors.white,
                    padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                 SizedBox(height: 30),

                // Section A: Pembiasaan Harian
                 Text(
                  'A. Pembiasaan harian',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                 SizedBox(height: 16),

                // Legend
                Row(
                  children: [
                    _buildLegend(Colors.green, 'Sudah diisi'),
                     SizedBox(width: 20),
                    _buildLegend(Colors.grey.shade400, 'Belum diisi'),
                     SizedBox(width: 20),
                    _buildLegend(Colors.red, 'Tidak diisi'),
                  ],
                ),
                 SizedBox(height: 20),

                // Calendar Grid
                _buildCalendarGrid(),

                 SizedBox(height: 40),

                // Section B: Pekerjaan yang dilakukan
                 Text(
                  'B. Pekerjaan yang dilakukan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                 SizedBox(height: 16),

                _buildWorkExpansion(),

                 SizedBox(height: 40),

                 Text(
                  'C. Materi yang dipelajari',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                 SizedBox(height: 16),

                _buildMaterialExpansion(),

                 SizedBox(height: 20),

                // Status Legend
                Row(
                  children: [
                    _buildStatusLegend(Colors.green, 'A : Approved'),
                     SizedBox(width: 16),
                    _buildStatusLegend(Colors.amber, 'P : Pending'),
                     SizedBox(width: 16),
                    _buildStatusLegend(Colors.red, 'R : Revisi'),
                  ],
                ),

                 SizedBox(height: 40),

                // Section D: Poin
                 Text(
                  'D. Poin',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                 SizedBox(height: 16),

                buildPointSection(
                ),

                 SizedBox(height: 40),
              ],
            ),
          ),
        ),
      );
    }

    Widget _buildLegend(Color color, String label) {
      return Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
           SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      );
    }

    Widget _buildStatusLegend(Color color, String label) {
      return Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
           SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      );
    }

    Widget _buildCalendarGrid() {
      final dates = [
        [3, 4, 5, 6, 7],
        [10, 11, 12, 13, 14],
        [17, 18, 19, 20, 21],
        [24, 25, 26, 27, 28],
      ];

      return Column(
        children: dates.map((row) {
          return Padding(
            padding:  EdgeInsets.only(bottom: 8),
            child: Row(
              children: row.map((date) {
                return Expanded(
                  child: _buildDateCell(date),
                );
              }).toList(),
            ),
          );
        }).toList(),
      );
    }

    Widget _buildDateCell(int date) {
      final status = dateStatus[date];
      Color bgColor;
      Widget? icon;

      if (status == null) {
        bgColor = Colors.grey.shade300;
        icon = null;
      } else if (status) {
        bgColor = Colors.green.shade50;
        icon =  Icon(Icons.check_circle, color: Colors.green, size: 20);
      } else {
        bgColor = Colors.red.shade50;
        icon =  Icon(Icons.cancel, color: Colors.red, size: 20);
      }

      return Container(
        margin:  EdgeInsets.symmetric(horizontal: 4),
        padding:  EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          children: [
            Text(
              date.toString().padLeft(2, '0'),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
            if (icon != null) ...[
               SizedBox(height: 4),
              icon,
            ],
          ],
        ),
      );
    }

   Widget _buildWorkExpansion() {
  // Dummy data
  final List<Map<String, String>> pekerjaanList = [
    {
      "pekerjaan": "Memperbaiki panel listrik utama",
      "tanggal": "02 Des 2025",
      "saksi": "Budi",
      "status": "Selesai"
    },
    {
      "pekerjaan": "Instalasi ulang kabel area lantai 2",
      "tanggal": "03 Des 2025",
      "saksi": "Siti",
      "status": "On Progress"
    },
    {
      "pekerjaan": "Pengecekan sistem grounding bangunan",
      "tanggal": "04 Des 2025",
      "saksi": "Agus",
      "status": "Pending"
    },
  ];

  return ExpansionTile(
    title: Text(
      "Pekerjaan yang dilakukan",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    ),
    children: [
      SizedBox(height: 8),

      // List pekerjaan (tanpa tabel)
      ...pekerjaanList.map((item) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item["pekerjaan"]!,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(item["tanggal"]!, style: TextStyle(color: Colors.grey[700])),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.person, size: 14, color: Colors.grey),
                  SizedBox(width: 4),
                  Text("Saksi: ${item["saksi"]}",
                      style: TextStyle(color: Colors.grey[700])),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.flag, size: 14, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    "Status: ${item["status"]}",
                    style: TextStyle(
                      color: item["status"] == "Selesai"
                          ? Colors.green
                          : item["status"] == "On Progress"
                              ? Colors.orange
                              : Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),

      SizedBox(height: 8),

      // 🔵 Tombol Selengkapnya (hanya 1 — bukan per item)
      Padding(
        padding: EdgeInsets.only(right: 16),
        child: Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              print("Menuju halaman selengkapnya...");
              // Navigator.push(context, MaterialPageRoute(builder: (_) => HalamanDetail()));
            },
            child: Text(
              "Selengkapnya",
              style: TextStyle(
                color: Color(0xFF0D47A1),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),

      Divider(),

      // Tombol Tambah Pekerjaan
      InkWell(
        onTap: () {
          print("Tambah Pekerjaan diklik");
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.add, color: Color(0xFF0D47A1), size: 20),
              SizedBox(width: 8),
              Text(
                'Tambah Pekerjaan',
                style: TextStyle(
                  color: Color(0xFF0D47A1),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _buildMaterialExpansion() {
  // Dummy data
  final List<Map<String, String>> materiList = [
    {
      "materi": "Pengenalan Dasar Kelistrikan",
      "tanggal": "02 Des 2025",
      "status": "Selesai",
      "catatanGuru": "Siswa aktif bertanya",
      "catatanSiswa": "Materi mudah dipahami"
    },
    {
      "materi": "Instalasi Rangkaian Seri & Paralel",
      "tanggal": "03 Des 2025",
      "status": "On Progress",
      "catatanGuru": "Perlu latihan tambahan",
      "catatanSiswa": "Masih bingung saat praktik"
    },
    {
      "materi": "Pengenalan Alat Ukur Listrik",
      "tanggal": "04 Des 2025",
      "status": "Pending",
      "catatanGuru": "Alat belum tersedia",
      "catatanSiswa": "Menunggu jadwal ulang"
    },
  ];

  return ExpansionTile(
    title: Text(
      "Materi yang digunakan",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    ),
    children: [
      SizedBox(height: 8),

      // List Materi
      ...materiList.map((item) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul materi
              Text(
                item["materi"]!,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),

              // Tanggal
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                  SizedBox(width: 6),
                  Text(item["tanggal"]!,
                      style: TextStyle(color: Colors.grey[700])),
                ],
              ),

              SizedBox(height: 6),

              // Status
              Row(
                children: [
                  Icon(Icons.flag, size: 14, color: Colors.grey),
                  SizedBox(width: 6),
                  Text(
                    "Status: ${item["status"]}",
                    style: TextStyle(
                      color: item["status"] == "Selesai"
                          ? Colors.green
                          : item["status"] == "On Progress"
                              ? Colors.orange
                              : Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 6),

              // Catatan Guru
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.school, size: 14, color: Colors.grey),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      "Catatan Guru: ${item["catatanGuru"]}",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  )
                ],
              ),

              SizedBox(height: 6),

              // Catatan siswa
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.person_pin, size: 14, color: Colors.grey),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      "Catatan Siswa: ${item["catatanSiswa"]}",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),

      SizedBox(height: 8),

      // 🔵 Tombol Selengkapnya (1 saja)
      Padding(
        padding: EdgeInsets.only(right: 16),
        child: Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              print("Menuju halaman materi selengkapnya...");
              // Navigator.push(context, MaterialPageRoute(builder: (_) => HalamanMateriDetail()));
            },
            child: Text(
              "Selengkapnya",
              style: TextStyle(
                color: Color(0xFF0D47A1),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),

      Divider(),

      // Tombol Tambah Materi
      InkWell(
        onTap: () {
          print("Tambah Materi diklik");
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.add, color: Color(0xFF0D47A1), size: 20),
              SizedBox(width: 8),
              Text(
                'Tambah Materi',
                style: TextStyle(
                  color: Color(0xFF0D47A1),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
 Widget buildPointSection() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      childrenPadding: const EdgeInsets.only(bottom: 16),

      title: Text(
        'Kategori Poin',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),

      children: [
        buildPointRow(),

        const SizedBox(height: 12),

        _buildWeekDetailView(4)
      ],
    ),
  );
}
Widget buildPointRow() {

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey.shade300),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      childrenPadding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      initiallyExpanded: true,
      collapsedIconColor: Colors.blue,
      iconColor: Colors.blue,
      shape: const Border(),
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.leaderboard, size: 20, color: Colors.blue),
          ),
          const SizedBox(width: 12),
          const Text(
            'Kategori Poin',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              // Tabs untuk minggu
              DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TabBar(
                        isScrollable: true,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                        indicator: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        tabs: const [
                          Tab(text: "Minggu 1"),
                          Tab(text: "Minggu 2"),
                          Tab(text: "Minggu 3"),
                          Tab(text: "Minggu 4"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 200, // Tinggi lebih besar
                      child: TabBarView(
                        children: List.generate(4, (index) {
                          return _buildWeekDetailView(index + 1);
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Ringkasan kategori
              Column(
                children: [
                  _buildSummaryCard(
                    title: "Project & Progress Belajar",
                    points: 0,
                    icon: Icons.assignment_turned_in,
                    color: Colors.purple,
                  ),
                  const SizedBox(height: 12),
                  _buildSummaryCard(
                    title: "Pertanyaan & Laporan Materi",
                    points: 0,
                    icon: Icons.question_answer,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 12),
                  _buildSummaryCard(
                    title: "Ceklist Pembiasaan",
                    points: 0,
                    icon: Icons.checklist_rounded,
                    color: Colors.green,
                  ),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Total poin card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue.shade50,
                      Colors.purple.shade50,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blue.shade100),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.emoji_events,
                        size: 32,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Poin Keseluruhan",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "Lihat Detail",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


Widget _buildWeekDetailView(int week) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Minggu $week",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "0 poin",
              style: TextStyle(
                color: Colors.blue.shade700,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      // Progress bar
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Progress Minggu",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                "0%",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: 0,
            backgroundColor: Colors.grey.shade200,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            borderRadius: BorderRadius.circular(10),
            minHeight: 10,
          ),
        ],
      ),
      const SizedBox(height: 20),
      // Detail points
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDetailPointItem(
            label: "Project",
            value: 0,
            color: Colors.purple,
          ),
          _buildDetailPointItem(
            label: "Pertanyaan",
            value: 0,
            color: Colors.orange,
          ),
          _buildDetailPointItem(
            label: "Laporan",
            value: 0,
            color: Colors.green,
          ),
        ],
      ),
    ],
  );
}

Widget _buildSummaryCard({
  required String title,
  required int points,
  required IconData icon,
  required Color color,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade200),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: color, size: 22),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Dapatkan hingga ${points * 5} poin",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(Icons.star, size: 16, color: color),
              const SizedBox(width: 6),
              Text(
                points.toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildDetailPointItem({
  required String label,
  required int value,
  required Color color,
}) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            value.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey.shade600,
        ),
      ),
    ],
  );
}




  }