import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/button.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/input_field/AllInputField.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/shadow/shadow.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/kondisi_ibu.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/text_style.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/input_field/text_field.dart';

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
                              color: TSColor.mainTosca.primary,
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
                              color: TSColor.secondaryGreen.shade400,
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
              Text(
                'No. Kartu Keluarga',
                style: TSFont.bold.large.withColor(TSColor.monochrome.black),
              ),

              const SizedBox(height: 8),

              TS_inputfield.text(
                key: emailFieldKey,
                placeholder: "Contoh: 1234567812345678",
                backgroundColor: TSColor.monochrome.pureWhite,
                borderColor: TSColor.monochrome.pureWhite,
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
              //   backgroundColor: TSColor.monochrome.pureWhite,
              //   borderColor: TSColor.monochrome.pureWhite,
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

              TSButton(
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
                backgroundColor: TSColor.secondaryGreen.primary,
                borderColor: TSColor.secondaryGreen.primary,
                contentColor: TSColor.monochrome.black,
                text: "Daftar",
                textStyle:
                    TSFont.bold.large.withColor(TSColor.monochrome.black),
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
