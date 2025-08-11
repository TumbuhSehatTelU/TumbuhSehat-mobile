import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/core/bloc/app_bloc_observer.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/splash_screen.dart';
import 'app/core/di/service_locator.dart' as di;
import 'package:hive_flutter/hive_flutter.dart';

const String familyBoxName = 'family_box';
const String sessionBoxName = 'session_box';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

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
