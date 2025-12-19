import 'package:flutter/material.dart';
import 'sidebar_menu_item.dart';

class Sidebar extends StatelessWidget {
  final VoidCallback onClose; // ⬅️ TAMBAHKAN INI

  const Sidebar({
    super.key,
    required this.onClose, // ⬅️ TAMBAHKAN INI
  });

  @override@override
Widget build(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SidebarMenuItem(
        icon: Icons.home_outlined,
        title: 'Dashboard',
        onTap: () { onClose(); Navigator.pushNamed(context, '/dashboard'); },
      ),
      SidebarMenuItem(
        icon: Icons.person_outline,
        title: 'Profil',
        onTap: () { onClose(); Navigator.pushNamed(context, '/profile'); },
      ),
      SidebarMenuItem(
        icon: Icons.explore_outlined,
        title: 'Jelajahi',
        onTap: () { onClose(); Navigator.pushNamed(context, '/explore'); },
      ),

      const SizedBox(height: 8),

      SidebarMenuItem(
        icon: Icons.menu_book_outlined,
        title: 'Jurnal Pembiasaan',
        onTap: () { onClose(); Navigator.pushNamed(context, '/habituational-jurnal'); },
      ),
      SidebarMenuItem(
        icon: Icons.people_outline,
        title: 'Permintaan Saksi',
        onTap: () { onClose(); Navigator.pushNamed(context, '/witness-request'); },
      ),
      SidebarMenuItem(
        icon: Icons.bar_chart_outlined,
        title: 'Progress',
        onTap: () { onClose(); Navigator.pushNamed(context, '/progress'); },
      ),
      SidebarMenuItem(
        icon: Icons.warning_amber_outlined,
        title: 'Catatan Sikap',
        onTap: () { onClose(); Navigator.pushNamed(context, '/attitude-record'); },
      ),

      const SizedBox(height: 8),

      SidebarMenuItem(
        icon: Icons.book_outlined,
        title: 'Panduan Penggunaan',
        onTap: () { onClose(); Navigator.pushNamed(context, '/user-guide'); },
      ),
      SidebarMenuItem(
        icon: Icons.settings_outlined,
        title: 'Pengaturan Akun',
        onTap: () { onClose(); Navigator.pushNamed(context, '/account-setting'); },
      ),

      const Divider(height: 20),

      SidebarMenuItem(
        icon: Icons.logout,
        title: 'Log Out',
        onTap: () { onClose(); Navigator.pushNamed(context, '/login'); },
      ),
    ],
  );

  }
}
