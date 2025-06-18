import 'dart:io';
import 'package:flutter/material.dart';

class AnalisisGiziScan extends StatefulWidget {
  final String imagePath;
  final String apiResponse;
  const AnalisisGiziScan({
    super.key,
    required this.imagePath,
    required this.apiResponse,
  });

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
      body: Stack(
        children: [
          // Gambar di belakang
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 400, // Ukuran gambar tetap 200px
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(File(widget.imagePath)),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Container Analisis yang bisa di-scroll dan overlap gambar secara perlahan
          Positioned.fill(
            top: 200, // Menindihi gambar sejauh 10px
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                      height: 180), // Jarak agar awalnya tidak overlap
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), // Round kiri atas
                        topRight: Radius.circular(20), // Round kanan atas
                      ),
                    ),
                    padding: const EdgeInsets.all(24),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kalkulasi Gizi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),

                        // container di bawah itu yang "Makanan untuk anak"
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(const Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Makanan untuk anak',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (bool? value) {
                                      value = false;
                                    },
                                  ),
                                  const Text('Puri Lalita Anagata'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (bool? value) {
                                      value = false;
                                    },
                                  ),
                                  const Text('Syahreza Adnan Al Azhar'),
                                ],
                              )
                            ],
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius:
                                BorderRadius.all(const Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Informasi Gizi Makanan',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        // untuk detail gizi makanan
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                'API Response:\n${widget.apiResponse}',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Divider(thickness: 2, color: Colors.black),
                              buildNutritionRow('Energi', '160 kkal', '7.44%'),
                              buildBoldDivider(),
                              buildNutritionRow(
                                  'Lemak Total', '9.20 g', '13.73%'),
                              buildNutritionRow('Vitamin A', '0 mcg', '0%'),
                              buildNutritionRow('Vitamin B1', '0.15 mg', '15%'),
                              buildNutritionRow('Vitamin B2', '0 mg', '0%'),
                              buildNutritionRow('Vitamin B3', '0 mg', '0%'),
                              buildNutritionRow('Vitamin C', '0 mg', '0%'),
                              buildBoldDivider(),
                              buildNutritionRow(
                                  'Karbohidrat Total', '16 g', '4.92%'),
                              buildBoldDivider(),
                              buildNutritionRow('Protein', '3.30 g', '5.50%'),
                              buildNutritionRow(
                                  'Serat Pangan', '2.30 g', '7.67%'),
                              buildNutritionRow('Kalsium', '62 mg', '5.64%'),
                              buildNutritionRow('Fosfor', '55 mg', '7.86%'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNutritionRow(String name, String value, String percentage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(name, style: TextStyle(fontSize: 14))),
          Text(value, style: TextStyle(fontSize: 14)),
          Text(percentage, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget buildBoldDivider() {
    return Divider(thickness: 2, color: Colors.black);
  }
}
