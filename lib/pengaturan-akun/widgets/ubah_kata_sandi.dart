import 'package:flutter/material.dart';
import 'password_field.dart';

class UbahKataSandi extends StatelessWidget {
  const UbahKataSandi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:  EdgeInsets.all(40),
      margin:  EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            "Ubah Kata Sandi",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
           SizedBox(height: 35),

           PasswordField(
            label: "Kata Sandi Lama",
            hint: "Masukkan password",
            helper: "Masukkan kata sandi lama anda",
          ),

           PasswordField(
            label: "Kata Sandi Baru",
            hint: "Masukkan password",
          ),

           SizedBox(height: 10),

          SizedBox(
            width: 260,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:  Color(0xff003f91),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                    content: Text("Dummy: Perubahan disimpan"),
                  ),
                );
              },
              child:  Text(
                "Simpan Perubahan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
