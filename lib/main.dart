import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/main_page.dart';
import 'package:mobile_tumbuh_sehat/pages/auth/splash_screen.dart';
import 'package:mobile_tumbuh_sehat/pages/prediksi%20gizi/analisis_gizi_scan.dart';
import 'package:mobile_tumbuh_sehat/pages/prediksi%20gizi/scan_makanan.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
      // home: SplashScreen(),
    );
  }
}
