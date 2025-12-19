import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_wikrama/components/card_accordion_project_list.dart';
import 'package:jurnalku_wikrama/components/card_project_list.dart';

class ProgressPage extends StatelessWidget {
  ProgressPage({super.key});

  List<Map<String, dynamic>> progress = [
    {
      "title": "Total Pengajuan",
      "total": 2,
      "status": "Semua status",
      "icon_badge": Icons.check_circle_outline,
      "color": Colors.indigo,
    },
    {
      "title": "Halaman Ini",
      "total": 0,
      "status": "Data ditampilkan",
      "icon_badge": Icons.calendar_today_outlined,
      "color": Colors.green,
    },
    {
      "title": "Status Pending",
      "total": 0,
      "status": "Perlu validasi",
      "icon_badge": Icons.watch_later_outlined,
      "color": Colors.amber,
    },
    {
      "title": "Total Halaman",
      "total": 1,
      "status": "Navigasi tersedia",
      "icon_badge": Icons.lightbulb_circle_outlined,
      "color": Colors.indigo,
    },
  ];

  final List<Map<String, dynamic>> projectList = [
    {
      "title": "Project Work",
      "subtitle": "Kompetensi dan materi pembelajaran",
      "table": [
        {
          "kompetensi": "Menganalisis kebutuhan sistem",
          "guru": "Pak Joko",
          "tanggal": "10-10-2025",
          "status": "Selesai",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
        {
          "kompetensi": "Membuat desain UI/UX",
          "guru": "Bu Rina",
          "tanggal": "12-10-2025",
          "status": "Proses",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
      ],
    },
    {
      "title": "Mobile Apps",
      "subtitle": "Kompetensi dan materi pembelajaran",
      "table": [
        {
          "kompetensi": "Membuat aplikasi Flutter",
          "guru": "Pak Dimas",
          "tanggal": "11-10-2025",
          "status": "Selesai",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
        {
          "kompetensi": "Integrasi API",
          "guru": "Bu Maya",
          "tanggal": "15-10-2025",
          "status": "Belum",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
      ],
    },
    {
      "title": "UKK (Uji Kompetensi Keahlian)",
      "subtitle": "Kompetensi dan materi pembelajaran",
      "table": [
        {
          "kompetensi": "Mempersiapkan proyek UKK",
          "guru": "Pak Andi",
          "tanggal": "20-10-2025",
          "status": "Proses",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
        {
          "kompetensi": "Finalisasi laporan",
          "guru": "Bu Diana",
          "tanggal": "25-10-2025",
          "status": "Belum",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
      ],
    },
    {
      "title": "GIM",
      "subtitle": "Kompetensi dan materi pembelajaran",
      "table": [
        {
          "kompetensi": "Game asset design",
          "guru": "Pak Putra",
          "tanggal": "05-10-2025",
          "status": "Selesai",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
        {
          "kompetensi": "Game development",
          "guru": "Bu Yuni",
          "tanggal": "09-10-2025",
          "status": "Proses",
          "catatan_guru": "-",
          "catatan_siswa": "-",
        },
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
         leading: IconButton(
          icon: Icon(Icons.home_outlined, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                        "Loremm",
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                      Text(
                        "PPLG XII-7",
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Progress Belajar",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Text(
              "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Wednesday, 3 December 2025",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListView.separated(
              itemCount: progress.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(height: 15);
              },
              itemBuilder: (context, index) {
                return CardProggress(
                  title: progress[index]["title"],
                  countTasks: progress[index]["total"],
                  status: progress[index]["status"],
                  iconBadge: progress[index]["icon_badge"],
                  colorStatus: progress[index]["color"],
                );
              },
            ),
            SizedBox(height: 10),
            ListView.separated(
              itemCount: projectList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(height: 15);
              },
              itemBuilder: (context, index) {
                final item = projectList[index];
                final data = item['table'] as List<Map<String, String>>;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardAccordionProjectList(
                      title: item['title'],
                      subtitleExpansion: item['subtitle'],
                      projectList: data,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}