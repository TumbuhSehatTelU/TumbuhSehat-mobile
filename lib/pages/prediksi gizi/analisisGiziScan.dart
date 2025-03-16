import 'package:flutter/material.dart';

class AnalisisGiziScan extends StatefulWidget {
  const AnalisisGiziScan({super.key});

  @override
  State<AnalisisGiziScan> createState() => _AnalisisGiziScanState();
}

class _AnalisisGiziScanState extends State<AnalisisGiziScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Hasil Analisis Gizi"),
        centerTitle: true,
      ),
      body: Center(
        child: Text('ini analisis'),
      ),
    );
  }
}
