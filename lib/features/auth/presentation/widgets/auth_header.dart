import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/app/core/gen/assets.gen.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth > 600;

        return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
                              ? TSFont.extraBold.h0ForTablet.withColor(
                                  TSColor.mainTosca.primary,
                                )
                              : TSFont.extraBold.h0.withColor(
                                  TSColor.mainTosca.primary,
                                ),
                        ),
                        Text(
                          "umbuh",
                          style: isTablet
                              ? TSFont.extraBold.h0ForTablet.withColor(
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
                                ? TSFont.extraBold.h0ForTablet.withColor(
                                    TSColor.secondaryGreen.shade400,
                                  )
                                : TSFont.extraBold.h0.withColor(
                                    TSColor.secondaryGreen.shade400,
                                  ),
                          ),
                          Text(
                            "ehat",
                            style: isTablet
                                ? TSFont.extraBold.h0ForTablet.withColor(
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
            // END OF LOGO
          ],
        );
      },
    );
  }
}
