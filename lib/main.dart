import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/core/bloc/app_bloc_observer.dart';
// import 'package:mobile_tumbuh_sehat/app/presentation/pages/main_page.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/splash_screen.dart';
// import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/presentation/pages/analisis_gizi_scan.dart';
// import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/presentation/pages/scan_makanan.dart';
import 'app/core/di/service_locator.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app/core/bloc/app_bloc_observer.dart';
import 'app/core/di/service_locator.dart' as di;

const String familyBoxName = 'family_box';
const String sessionBoxName = 'session_box';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  di.sl.registerSingleton(
    await Hive.openBox(familyBoxName),
    instanceName: familyBoxName,
  );
  di.sl.registerSingleton(
    await Hive.openBox(sessionBoxName),
    instanceName: sessionBoxName,
  );

  Bloc.observer = AppBlocObserver();

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
