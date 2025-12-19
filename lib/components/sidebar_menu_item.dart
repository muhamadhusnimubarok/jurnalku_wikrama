import 'package:flutter/material.dart';

class SidebarMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool active;
  final VoidCallback onTap;

  const SidebarMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            margin: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: active ? Colors.blue : Colors.grey,
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    color: active ? Colors.blue : Colors.black,
                    fontWeight:
                        active ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),

          // BAR KANAN
          if (active)
            Positioned(
              right: 0,
              top: 10,
              bottom: 10,
              child: Container(
                width: 4,
                color: Colors.blue,
              ),
            ),
        ],
      ),
    );
  }
}
