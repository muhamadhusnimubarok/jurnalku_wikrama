import 'package:flutter/material.dart';

class PermintaanSaksi extends StatelessWidget {
  PermintaanSaksi({super.key});

  @override
  List<Map<String, String>> permintaanSaksi = [
    {
      'pengirim': 'Muhamad Rizki',
      'Keterangan': 'Saya Melaksanakan piket wc',
      'tanggal': '03-12-2020',
      'konfirmasi': 'sudah mengerjakan',
    },
    {
      'pengirim': 'Siti Aminah',
      'Keterangan': 'saya membersihkan kelas',
      'tanggal': '05-12-2020',
      'konfirmasi': 'Belum mngerjakan',
    },
    {
      'pengirim': 'Budi Santoso',
      'Keterangan': 'saya melaksanan sholat dhuha',
      'tanggal': '07-12-2020',
      'konfirmasi': 'sudah mengerjakan',
    },

    {
      'pengirim': 'Susanti Wijaya',
      'Keterangan': 'saya sudah sudah melaksanan tugas',
      'tanggal': '07-12-2020',
      'konfirmasi': 'Belum melaksanankan',
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.home_outlined, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              width: double.infinity,
              child: Text(
                'Loremm',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 2),
            SizedBox(
              width: double.infinity,
              child: Text(
                'PPLG XII-7',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Permintaan Saksi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Kelola permintaan menjadi saksi dari siswa lain",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 250,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(padding: const EdgeInsets.all(8.0)),
                  Text(
                    'Wednesday, 3 December 2020',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: permintaanSaksi.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) => ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                  childrenPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  leading: Text(
                    "${index + 1}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pengirim: ${permintaanSaksi[index]['pengirim']}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Keterangan: ${permintaanSaksi[index]['Keterangan']}",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanggal",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${permintaanSaksi[index]['tanggal']}",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        Divider(color: Colors.black, thickness: 2),
                        SizedBox(height: 10),
                        Text(
                          "Konfirmasi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${permintaanSaksi[index]['konfirmasi']}",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                              ),
                              child: Text(
                                "Tidak",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              child: Text(
                                "Ya",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildSummaryCard(
  String title,
  String value,
  IconData icon,
  Color color,
) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.shade200),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.03),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
      ],
    ),
  );
}
