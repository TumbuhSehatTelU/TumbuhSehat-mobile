import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_tumbuh_sehat/component/button/button.dart';
import 'package:mobile_tumbuh_sehat/component/input_field/AllInputField.dart';
import 'package:mobile_tumbuh_sehat/component/shadow/shadow.dart';
import 'package:mobile_tumbuh_sehat/pages/auth/kondisi_ibu.dart';
import 'package:mobile_tumbuh_sehat/theme/color.dart';
import 'package:mobile_tumbuh_sehat/theme/text_style.dart';
import 'package:mobile_tumbuh_sehat/component/input_field/text_field.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<CustomTextFieldState> emailFieldKey =
      GlobalKey<CustomTextFieldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
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
                              color: TS_color.mainTosca.c3,
                            ),
                          ),
                          Text(
                            "umbuh",
                            style: GoogleFonts.openSans(
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 4,
                              color: TS_color.monochrome.black,
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
                              color: TS_color.secondaryGreen.c4,
                            ),
                          ),
                          Text(
                            "ehat",
                            style: GoogleFonts.openSans(
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 4,
                              color: TS_color.monochrome.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Text(
                'No. Kartu Keluarga',
                style: TS_font.bold.large.withColor(TS_color.monochrome.black),
              ),

              const SizedBox(height: 8),

              TS_inputfield.text(
                key: emailFieldKey,
                placeholder: "Contoh: 1234567812345678",
                backgroundColor: TS_color.monochrome.pureWhite,
                borderColor: TS_color.monochrome.pureWhite,
                isPassword: false,
                borderRadius: 240,
                width: MediaQuery.of(context).size.width * 0.8,
                boxShadow: TS_shadow.light,
                controller: emailController,
                validationLogicList: [
                  (val) => val.isNotEmpty,
                  (val) => RegExp(r'^\d+$').hasMatch(val), // hanya angka
                  (val) => val.length == 16,
                ],
                validationMessageList: const [
                  "No. KK tidak boleh kosong",
                  "No. KK harus berupa angka",
                  "Panjang harus 16 angka",
                ],
              ),

              const SizedBox(height: 8),

              // TS_inputfield.text(
              //   key: emailFieldKey,
              //   placeholder: "Contoh: 1234567812345678",
              //   backgroundColor: TS_color.monochrome.pureWhite,
              //   borderColor: TS_color.monochrome.pureWhite,
              //   isPassword: false,
              //   borderRadius: 240,
              //   width: MediaQuery.of(context).size.width * 0.8,
              //   boxShadow: TS_shadow.light,
              //   controller: emailController,
              //   validationLogicList: [
              //     (val) => val.isNotEmpty,
              //     (val) => RegExp(r'^\d+$').hasMatch(val), // hanya angka
              //     (val) => val.length == 16,
              //   ],
              //   validationMessageList: const [
              //     "No. KK tidak boleh kosong",
              //     "No. KK harus berupa angka",
              //     "Panjang harus 16 angka",
              //   ],
              // ),

              TS_button(
                onPressed: () {
                  bool isValid =
                      emailFieldKey.currentState?.validate() ?? false;
                  if (isValid) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KondisiIbu(),
                      ),
                    );
                  }
                },
                backgroundColor: TS_color.secondaryGreen.c3,
                borderColor: TS_color.secondaryGreen.c3,
                contentColor: TS_color.monochrome.black,
                text: "Daftar",
                textStyle:
                    TS_font.bold.large.withColor(TS_color.monochrome.black),
                size: ButtonSize.medium,
                customBorderRadius: 240,
              )
            ],
          ),
        ),
      ),
    );
  }
}
