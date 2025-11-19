import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FotoProfil extends StatefulWidget {
  const FotoProfil({super.key});

  @override
  State<FotoProfil> createState() => _FotoProfilState();
}

class _FotoProfilState extends State<FotoProfil> {
  File? imageFile;

  Future pickImage() async {
    final picked = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (picked != null) {
      setState(() {
        imageFile = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundColor: Colors.grey.shade300,
              backgroundImage:
                  imageFile != null ? FileImage(imageFile!) : null,
              child: imageFile == null
                  ? Icon(Icons.person, size: 80, color: Colors.white)
                  : null,
            ),

            GestureDetector(
              onTap: pickImage,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),
        GestureDetector(
          onTap: pickImage,
          child: const Text(
            "Klik untuk mengubah foto",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
