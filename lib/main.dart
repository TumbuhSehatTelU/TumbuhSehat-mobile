import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/mainPage.dart';
import 'package:mobile_tumbuh_sehat/pages/prediksi%20gizi/analisisGiziScan.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnalisisGiziScan(),
    );
  }
}
