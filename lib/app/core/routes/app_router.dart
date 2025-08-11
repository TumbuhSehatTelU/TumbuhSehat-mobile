import 'package:go_router/go_router.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/family_check_page.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),

      GoRoute(
        path: '/family-check',
        builder: (context, state) => const FamilyCheckPage(),
      ),

      // GoRoute(
      //   path: '/register-new-family',
      //   builder: (context, state) => const RegisterNewFamilyPage(),
      // ),
      // GoRoute(
      //   path: '/join-family',
      //   builder: (context, state) => const JoinFamilyPage(),
      // ),
    ],

    // errorBuilder: (context, state) => const NotFoundPage(),
  );
}
