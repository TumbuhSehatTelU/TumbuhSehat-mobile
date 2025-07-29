import 'package:flutter/material.dart';
// import 'package:mobile_tumbuh_sehat/app/presentation/pages/main_page.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/splash_screen.dart';
// import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/presentation/pages/analisis_gizi_scan.dart';
// import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/presentation/pages/scan_makanan.dart';
import 'app/core/di/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await di.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      home: SplashScreen(),
    );
  }
}
