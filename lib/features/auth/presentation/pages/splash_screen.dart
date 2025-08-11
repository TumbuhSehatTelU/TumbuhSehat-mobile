import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_tumbuh_sehat/app/core/di/service_locator.dart';
import 'package:mobile_tumbuh_sehat/app/core/gen/assets.gen.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/shadow/ts_shadow.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_event.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_state.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/daftar.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/ts_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>()..add(const AuthStatusChecked()),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isTablet = constraints.maxWidth > 600;
          final double horizontalPadding = isTablet ? 60 : 24;
          final double verticalPadding = isTablet ? 80 : 40;

          return Scaffold(
            backgroundColor: TSColor.monochrome.white,
            body: BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  authenticated: (family, activeParent) {
                    context.go('/home');
                  },
                );
              },
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Spacer(flex: 2),
                      Assets.image.logo.svg(height: isTablet ? 100 : 60),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
