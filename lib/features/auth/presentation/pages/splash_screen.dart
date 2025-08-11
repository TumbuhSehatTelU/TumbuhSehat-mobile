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
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/ts_button.dart';

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
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      // LOGO TUMBUH SEHAT
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(flex: 3),
                          Assets.image.logo.svg(height: isTablet ? 180 : 120),
                          const Spacer(flex: 2),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "T",
                                    style: isTablet
                                        ? TSFont.extraBold.h0ForTablet
                                              .withColor(
                                                TSColor.mainTosca.primary,
                                              )
                                        : TSFont.extraBold.h0.withColor(
                                            TSColor.mainTosca.primary,
                                          ),
                                  ),
                                  Text(
                                    "umbuh",
                                    style: isTablet
                                        ? TSFont.extraBold.h0ForTablet
                                              .withColor(
                                                TSColor.monochrome.black,
                                              )
                                        : TSFont.extraBold.h0.withColor(
                                            TSColor.monochrome.black,
                                          ),
                                  ),
                                ],
                              ),
                              Transform.translate(
                                offset: const Offset(0, -16),
                                child: Row(
                                  children: [
                                    Text(
                                      "S",
                                      style: isTablet
                                          ? TSFont.extraBold.h0ForTablet
                                                .withColor(
                                                  TSColor
                                                      .secondaryGreen
                                                      .shade400,
                                                )
                                          : TSFont.extraBold.h0.withColor(
                                              TSColor.secondaryGreen.shade400,
                                            ),
                                    ),
                                    Text(
                                      "ehat",
                                      style: isTablet
                                          ? TSFont.extraBold.h0ForTablet
                                                .withColor(
                                                  TSColor.monochrome.black,
                                                )
                                          : TSFont.extraBold.h0.withColor(
                                              TSColor.monochrome.black,
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(flex: 3),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        "Bantu Ibu Pantau Gizi,\n Jaga Tumbuh\n Kembang Anak!",
                        style: isTablet
                            ? TSFont.bold.h1ForTablet.withColor(
                                TSColor.monochrome.black,
                              )
                            : TSFont.bold.h1.withColor(
                                TSColor.monochrome.black,
                              ),
                      ),
                      const Spacer(flex: 2),
                      TSButton(
                        onPressed: () {
                          context.go("/family-check");
                        },
                        text: "Mulai",
                        textStyle: isTablet
                            ? TSFont.bold.largeForTablet
                            : TSFont.bold.large,
                        backgroundColor: TSColor.secondaryGreen.primary,
                        borderColor: TSColor.secondaryGreen.primary,
                        contentColor: TSColor.monochrome.black,
                        customBorderRadius: 48,
                        size: ButtonSize.medium,
                        boxShadow: TSShadow.elevations.weight300,
                      ),
                      const Spacer(),
                      Assets.image.illustrationSplashScreen.svg(
                        width: constraints.maxWidth * 0.9,
                        height: constraints.maxHeight * (isTablet ? 0.3 : 0.2),
                      ),
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
