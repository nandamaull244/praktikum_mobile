import 'package:flutter/material.dart';
import 'package:tugas_praktikum1/bmii.dart';
import 'package:tugas_praktikum1/tugas2.dart';
import 'package:tugas_praktikum1/utama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const KalkulatorBMIScreen(),
    );
  }
}