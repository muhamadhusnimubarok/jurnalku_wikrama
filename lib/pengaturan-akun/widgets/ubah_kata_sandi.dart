import 'package:flutter/material.dart';
import 'password_field.dart';

class UbahKataSandi extends StatelessWidget {
  const UbahKataSandi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ubah Kata Sandi",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 35),

          const PasswordField(
            label: "Kata Sandi Lama",
            hint: "Masukkan password",
            helper: "Masukkan kata sandi lama anda",
          ),

          const PasswordField(
            label: "Kata Sandi Baru",
            hint: "Masukkan password",
          ),

          const SizedBox(height: 10),

          SizedBox(
            width: 260,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff003f91),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Dummy: Perubahan disimpan"),
                  ),
                );
              },
              child: const Text(
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
