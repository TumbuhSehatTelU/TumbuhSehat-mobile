import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_tumbuh_sehat/app/core/gen/assets.gen.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/ts_button.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/shadow/ts_shadow.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/widgets/auth_header.dart';

class FamilyCheckPage extends StatelessWidget {
  const FamilyCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth > 600;
        final double horizontalPadding = isTablet ? 60 : 24;
        return Scaffold(
          backgroundColor: TSColor.monochrome.white,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AuthHeader(),
                  const Spacer(flex: 1),
                  Text(
                    "Apakah anggota keluarga anda\nada yang menggunakan\nTumbuhSehat?",
                    style: isTablet
                        ? TSFont.bold.h2ForTablet.withColor(
                            TSColor.monochrome.black,
                          )
                        : TSFont.bold.h2.withColor(TSColor.monochrome.black),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(flex: 1),
                  TSButton(
                    text: "Ada",
                    textStyle: isTablet
                        ? TSFont.bold.h2ForTablet.withColor(
                            TSColor.monochrome.pureWhite,
                          )
                        : TSFont.bold.h2.withColor(
                            TSColor.monochrome.pureWhite,
                          ),
                    onPressed: () {
                      context.push('/join-family');
                    },
                    backgroundColor: TSColor.additionalColor.green,
                    borderColor: TSColor.additionalColor.green,
                    contentColor: TSColor.monochrome.pureWhite,
                    customBorderRadius: 248,
                    size: ButtonSize.medium,
                    boxShadow: TSShadow.elevations.weight300,
                  ),
                  const Spacer(flex: 1),
                  TSButton(
                    text: "Tidak Ada",
                    textStyle: isTablet
                        ? TSFont.bold.h2ForTablet.withColor(
                            TSColor.additionalColor.red,
                          )
                        : TSFont.bold.h2.withColor(TSColor.additionalColor.red),
                    onPressed: () {
                      context.push('/register');
                    },
                    backgroundColor: TSColor.monochrome.white,
                    borderColor: TSColor.additionalColor.red,
                    contentColor: TSColor.additionalColor.red,
                    customBorderRadius: 248,
                    size: ButtonSize.medium,
                    borderWidth: 4,
                    boxShadow: TSShadow.elevations.weight300,
                  ),
                  const Spacer(flex: 1),
                  Assets.image.illustrationYesOrNo.svg(
                    width: constraints.maxWidth * 0.9,
                    height: constraints.maxHeight * 0.25,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
