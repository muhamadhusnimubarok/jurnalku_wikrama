import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final String hint;
  final String? helper;

  const PasswordField({
    super.key,
    required this.label,
    required this.hint,
    this.helper,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
         SizedBox(height: 12),

        TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true,
            fillColor:  Color(0xfff8fafd),
            hintText: widget.hint,
            hintStyle: TextStyle(color: Colors.grey.shade600),
            contentPadding:
                 EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            suffixIcon: IconButton(
              icon: Icon(
                obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                color: Colors.grey.shade600,
              ),
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.blue.shade400, width: 1.4),
            ),
          ),
        ),

        if (widget.helper != null)
          Padding(
            padding:  EdgeInsets.only(top: 8.0),
            child: Text(
              widget.helper!,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade600,
              ),
            ),
          ),

         SizedBox(height: 25),
      ],
    );
  }
}
