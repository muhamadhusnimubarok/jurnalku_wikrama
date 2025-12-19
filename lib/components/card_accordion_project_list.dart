// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CardAccordionProjectList extends StatelessWidget {
//   final String title;
//   final String subtitleExpansion;
//   final List<Map<String, String>> projectList;

//   const CardAccordionProjectList({
//     super.key,
//     required this.title,
//     required this.subtitleExpansion,
//     required this.projectList,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadiusGeometry.circular(8),
//       ),
//       elevation: 2,
//       child: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(color: Colors.grey[200]),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: GoogleFonts.poppins(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               subtitleExpansion,
//               style: GoogleFonts.poppins(
//                 fontSize: 12,
//                 color: Colors.grey[600],
//               ),
//             ),
//             SizedBox(height: 20),
//             ListView.separated(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: projectList.length,
//               separatorBuilder: (context, index) {
//                 return SizedBox(height: 10,);
//               },
//               itemBuilder: (context, index) {
//                 final project = projectList[index];

//                 return ExpansionTile(
//                   title: Text(project['kompetensi'] ?? "Tidak ada kompetensi"),
//                   subtitle: Text("Klik untuk melihat detail!"),
//                   backgroundColor: Colors.white,
//                   tilePadding: EdgeInsets.all(8),
//                   childrenPadding: EdgeInsets.all(8),
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Guru :"),
//                         Text(project['guru'] ?? 'Tidak ada data'),
//                         Divider(color: Colors.grey[200]),
//                         Text("Tanggal :"),
//                         Text(project['tanggal'] ?? 'Tidak ada data'),
//                         Divider(color: Colors.grey[200]),
//                         Text("Status :"),
//                         Text(project['status'] ?? 'Tidak ada data'),
//                         Divider(color: Colors.grey[200]),
//                         Text("Catatan guru :"),
//                         Text(project['catatan_guru'] ?? 'Tidak ada data'),
//                         Divider(color: Colors.grey[200]),
//                         Text("Catatan siswa :"),
//                         Text(project['catatan_siswa'] ?? 'Tidak ada data'),
//                         Divider(color: Colors.grey[200]),
//                       ],
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAccordionProjectList extends StatelessWidget {
  final String title;
  final String subtitleExpansion;
  final List<Map<String, String>> projectList;

  const CardAccordionProjectList({
    super.key,
    required this.title,
    required this.subtitleExpansion,
    required this.projectList,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text(
              subtitleExpansion,
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projectList.length,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
              itemBuilder: (context, index) {
                final project = projectList[index];

                return ExpansionTile(
                  title: Text(project['kompetensi'] ?? "Tidak ada kompetensi"),
                  subtitle: Text("Klik untuk melihat detail!"),
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: Colors.white,
                  tilePadding: EdgeInsets.all(8),
                  childrenPadding: EdgeInsets.all(8),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDetail("Guru", project['guru']),
                        _buildDivider(),
                        _buildDetail("Tanggal", project['tanggal']),
                        _buildDivider(),
                        _buildDetail("Status", project['status']),
                        _buildDivider(),
                        _buildDetail("Catatan guru", project['catatan_guru']),
                        _buildDivider(),
                        _buildDetail("Catatan siswa", project['catatan_siswa']),
                        _buildDivider(),
                      ],
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

  Widget _buildDetail(String label, String? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("$label :"), Text(value ?? 'Tidak ada data')],
    );
  }

  Widget _buildDivider() {
    return Divider(color: Colors.grey[200]);
  }
}