import 'package:flutter/material.dart';

class FieldProfil extends StatelessWidget {
  final String label;

  const FieldProfil({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:  TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
         SizedBox(height: 8),

        AbsorbPointer(
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: label,
              hintStyle: TextStyle(
                color: Colors.grey.shade500,
              ),
              contentPadding:
                   EdgeInsets.symmetric(horizontal: 15, vertical: 14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
            ),
          ),
        ),

         SizedBox(height: 18),
      ],
    );
  }
}
