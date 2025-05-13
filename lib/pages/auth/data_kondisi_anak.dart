import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/component/button/button.dart';
import 'package:mobile_tumbuh_sehat/theme/color.dart';
import 'package:mobile_tumbuh_sehat/theme/text_style.dart';

class DataKondisiAnak extends StatefulWidget {
  const DataKondisiAnak({super.key});

  @override
  State<DataKondisiAnak> createState() => _DataKondisiAnakState();
}

class _DataKondisiAnakState extends State<DataKondisiAnak> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.08,
          ),
          child: Column(
            children: [
              Text('Kondisi Anak'),
              TS_button(
                onPressed: () {},
                backgroundColor: TS_color.secondaryGreen.c3,
                borderColor: TS_color.secondaryGreen.c3,
                contentColor: TS_color.monochrome.black,
                text: "Simpan",
                textStyle:
                    TS_font.bold.large.withColor(TS_color.monochrome.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
