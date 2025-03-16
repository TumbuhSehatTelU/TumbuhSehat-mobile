import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/pages/prediksi%20gizi/analisisGiziScan.dart';

class ScanMakanan extends StatefulWidget {
  const ScanMakanan({super.key});

  @override
  State<ScanMakanan> createState() => _ScanMakananState();
}

class _ScanMakananState extends State<ScanMakanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Scan Makanan"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            alignment: Alignment.center,
            child: const Text('kamera'),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnalisisGiziScan(),
                      ),
                    );
                  },
                  icon: Icon(Icons.camera_front),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                icon: const Icon(Icons.flash_on, size: 32),
                onPressed: () {
                  // Aksi untuk mengaktifkan flash nanti
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
