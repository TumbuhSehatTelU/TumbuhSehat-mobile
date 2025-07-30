import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/app/presentation/widgets/button/ts_button.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/pages/data_kondisi_anak.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';

class KondisiIbu extends StatefulWidget {
  const KondisiIbu({super.key});

  @override
  State<KondisiIbu> createState() => _KondisiIbuState();
}

class _KondisiIbuState extends State<KondisiIbu> {
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
              Text('Kondisi Ibu'),
              TSButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataKondisiAnak(),
                    ),
                  );
                },
                backgroundColor: TSColor.secondaryGreen.primary,
                borderColor: TSColor.secondaryGreen.primary,
                contentColor: TSColor.monochrome.black,
                text: "Tidak Hamil & Tidak Menyusui",
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
