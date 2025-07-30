import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/shadow/shadow.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/daftar.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/text_style.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.translate(
                  offset: Offset(0, MediaQuery.of(context).size.height * 0.045),
                  child: SvgPicture.asset(
                    'lib/assets/image/Splash Screen Illustration.svg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: (MediaQuery.of(context).size.height * 0.025)),
                TSButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Daftar()),
                      (route) => false,
                    );
                  },
                  backgroundColor: TSColor.secondaryGreen.c3,
                  borderColor: TSColor.secondaryGreen.c3,
                  contentColor: TSColor.monochrome.black,
                  textStyle: TSFont.bold.large,
                  text: "Mulai",
                  size: ButtonSize.large,
                  customBorderRadius: 240.0,
                  width: (MediaQuery.of(context).size.width * 0.8),
                  boxShadow: TS_shadow.light,
                ),
                SizedBox(height: (MediaQuery.of(context).size.height * 0.12)),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: Text(
                        'Bantu Ibu Pantau Gizi\nJaga Tumbuh\nKembang Anak!',
                        style: TSFont.bold.h1
                            .withColor(TSColor.monochrome.darkGrey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: (MediaQuery.of(context).size.height * 0.05)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text('logo'),
                    SvgPicture.asset(
                      'lib/assets/image/Logo.svg',
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "T",
                              style: GoogleFonts.openSans(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 4,
                                color: TSColor.mainTosca.c3,
                              ),
                            ),
                            Text(
                              "umbuh",
                              style: GoogleFonts.openSans(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 4,
                                color: TSColor.monochrome.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "S",
                              style: GoogleFonts.openSans(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 4,
                                color: TSColor.secondaryGreen.c4,
                              ),
                            ),
                            Text(
                              "ehat",
                              style: GoogleFonts.openSans(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 4,
                                color: TSColor.monochrome.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ].reversed.toList(), // Agar urutan dari bawah ke atas
            ),
          ),
        ),
      ),
    );
  }
}
