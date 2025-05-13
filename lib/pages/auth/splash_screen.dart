import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/component/shadow/shadow.dart';
import 'package:mobile_tumbuh_sehat/theme/color.dart';
import 'package:mobile_tumbuh_sehat/theme/text_style.dart';
import 'package:mobile_tumbuh_sehat/component/button/button.dart';

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
        body: Center(
          child: Column(
            children: [
              const Row(
                children: [
                  Text('logo'),
                  Text('Tumbuh Sehat'),
                ],
              ),
              const Text('Bantu Ibu Pantau Gizi'),
              const Text('Button'),
              TS_button(
                onPressed: () {},
                backgroundColor: SecondaryGreen.c3,
                borderColor: SecondaryGreen.c3,
                contentColor: Monochrome.black,
                textStyle: Bold.large,
                text: "Mulai",
                size: ButtonSize.large,
                customBorderRadius: 240.0,
                width: 200,
                boxShadow: TS_shadow.light,
              ),
              const Text('ilustrasi'),
            ],
          ),
        ),
      ),
    );
  }
}
