import 'package:flutter/material.dart';
// import 'package:tugas_praktikum1/HomePage.dart';
// import 'package:tugas_praktikum1/NewsPage.dart';
// import 'package:tugas_praktikum1/bmii.dart';
// import 'package:tugas_praktikum1/tugas2.dart';
// import 'package:tugas_praktikum1/utama.dart';
// import 'package:tugas_praktikum1/Navigartor Ala Shoppe.dart';
// import 'package:tugas_praktikum1/whatsapp.dart';
// import 'package:tugas_praktikum1/shopsmart_app.dart';
import 'package:tugas_praktikum1/tugas_5_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}