import 'package:flutter/material.dart';

class ReadonlyInput extends StatefulWidget {
  final String value;
  const ReadonlyInput({super.key, required this.value});

  @override
  State<ReadonlyInput> createState() => _ReadonlyInputState();
}

class _ReadonlyInputState extends State<ReadonlyInput> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.forbidden,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: isHover ? Colors.grey.shade300 : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.value,
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
    );
  }
}




class SettingAccount extends StatelessWidget {
  const SettingAccount({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.home_outlined, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
      ),
    ),



      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pengaturan Akun',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              ),
        
            Text('Dashboard / Pengaturan Akun',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
              ),
        
              SizedBox(height: 20),
        
              Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Informasi Profile',
                    style: 
                    TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    ),
        
                    SizedBox(height: 20),
                      Center(
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/images/profile_2.jpg'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),

                      Center(
                        child: Text(
                          'Klik untuk mengubah foto',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
        
                    SizedBox(height: 20),
        
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Nama',
                        style: TextStyle(fontSize: 14, color: Colors.black87),),
        
                        SizedBox(height: 10),
        
                        ReadonlyInput(value: "Loremmmmmmm"),
                      ]),
                    ),
        
                    SizedBox(height: 20),
        
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('NIS',
                        style: TextStyle(fontSize: 14, color: Colors.black87),),
        
                        SizedBox(height: 10),
        
                        ReadonlyInput(value: "12345678"),
                      ]),
                    ),
        
                    SizedBox(height: 20),
        
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Rombel',
                        style: TextStyle(fontSize: 14, color: Colors.black87),),
        
                        SizedBox(height: 10),
        
                        ReadonlyInput(value: "PPLG XII-3"),
                      ]),
                    ),
        
                    SizedBox(height: 20),
        
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Rayon',
                        style: TextStyle(fontSize: 14, color: Colors.black87),),
        
                        SizedBox(height: 10),
        
                        ReadonlyInput(value: "Wikrama 10"),
                      ]),
                    ),
                  ],
                ),
              ),
        
              SizedBox(height: 20),
        
                  Container(
                    padding: EdgeInsets.all(30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1,
                          ),
                        ),
        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ubah kata Sandi',
                            style: 
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            ),
        
                            SizedBox(height: 20),
        
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'kata sandi lama',
                                    style: TextStyle(fontSize: 14, color: Colors.black87),
                                  ),
        
                                  SizedBox(height: 10),
        
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.grey.shade100,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    suffixIcon: Icon(Icons.visibility_outlined, color: Colors.grey),
                                  ),
                                ),
        
                                Text('Masukan Kata Sandi Lama Anda', 
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),)
        
                                ],
                              ),
                            ),
        
                            SizedBox(height: 20),
        
                            
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'kata sandi Baru',
                                    style: TextStyle(fontSize: 14, color: Colors.black87),
                                  ),
        
                                  SizedBox(height: 10),
        
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.grey.shade100,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    suffixIcon: Icon(Icons.visibility_outlined, color: Colors.grey),
                                  ),
                                ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20),

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[900],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 16), // biar lebih enak dilihat
                              ),
                              child: Text(
                                'Simpan Perubahan',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                          ],
                        ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}