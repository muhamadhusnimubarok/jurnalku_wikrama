// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardProggress extends StatelessWidget {
  final String title;
  final int countTasks;
  final String status;
  final IconData iconBadge;
  final Color colorStatus;

  const CardProggress({
    super.key,
    required this.title,
    required this.countTasks,
    required this.status,
    required this.iconBadge,
    required this.colorStatus,
    });

  
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200]!,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  countTasks.toString(),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: (colorStatus),
                      size: 12,
                    ),
                    SizedBox(width: 5),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 12,
                        color: (colorStatus),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ]
            ),
            Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    iconBadge,
                    size: 20,
                    color: (colorStatus),
                  ),
                ),
          ]
        ),
      );
  }
}