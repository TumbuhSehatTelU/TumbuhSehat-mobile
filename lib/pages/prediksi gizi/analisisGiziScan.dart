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
      body: Stack(
        children: [
          // Gambar di belakang
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 400, // Ukuran gambar tetap 200px
              color: Colors.green,
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
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('serving size'),
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 12,
                                width: double.infinity,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text('energi'),
                                  Row(
                                    children: [
                                      Text('32342 kal'),
                                      Text('70%'),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                      // List.generate(
                      //   30,
                      //   (index) => Padding(
                      //     padding: const EdgeInsets.symmetric(vertical: 8),
                      //     child: Text('Data Analisis $index',
                      //         style: const TextStyle(fontSize: 18)),
                      //   ),
                      // ),
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
}
