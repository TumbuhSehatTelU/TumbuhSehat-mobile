import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/button.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/text_style.dart';

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
              TSButton(
                onPressed: () {},
                backgroundColor: TSColor.secondaryGreen.primary,
                borderColor: TSColor.secondaryGreen.primary,
                contentColor: TSColor.monochrome.black,
                text: "Simpan",
                textStyle:
                    TSFont.bold.large.withColor(TSColor.monochrome.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
