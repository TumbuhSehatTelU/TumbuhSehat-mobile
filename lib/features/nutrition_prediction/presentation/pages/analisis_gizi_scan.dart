import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/domain/entities/food_component.dart';
import 'package:mobile_tumbuh_sehat/app/core/models/api_response_model.dart';
import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/data/datasources/food_processor_service.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/text_style.dart';

class AnalisisGiziScan extends StatefulWidget {
  final String imagePath;
  final Map<String, dynamic> apiResponse;
  const AnalisisGiziScan({
    super.key,
    required this.imagePath,
    required this.apiResponse,
  });

  @override
  State<AnalisisGiziScan> createState() => _AnalisisGiziScanState();
}

class _AnalisisGiziScanState extends State<AnalisisGiziScan> {
  String _debugOutput = "Memproses data...";
  bool _isLoading = true;
  List<KomponenMakanan> _hasilAnalisis = [];
  String _errorMessage = '';
  double _totalCalories = 0.0;

  @override
  void initState() {
    super.initState();
    _processApiResponse();
  }

  void _processApiResponse() {
    try {
      final apiData = ApiResponseModel.fromJson(widget.apiResponse);

      if (apiData.status == 'success') {
        final processor = FoodProcessorService();

        final List<KomponenMakanan> hasilProses =
            processor.processDetections(apiData.detections);

        double total = 0.0;
        for (var komponen in hasilProses) {
          for (var kalori in komponen.kuantitasNutrisi) {
            total += kalori;
          }
        }

        setState(() {
          _hasilAnalisis = hasilProses;
          _isLoading = false;
          _totalCalories = total;
          _debugOutput = hasilProses
              .map((komponen) => komponen.toString())
              .join('\n---\n');
        });
      } else {
        setState(() {
          _errorMessage = "Gagal memproses: Status API bukan 'success'.";
          _isLoading = false;
          _debugOutput = "Gagal memproses: Status API bukan 'success'.";
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "Terjadi error saat memproses data:\n$e";
        _isLoading = false;
        _debugOutput = "Terjadi error saat memproses data:\n$e";
      });
    }
  }

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
                              if (_isLoading)
                                const Center(child: CircularProgressIndicator())
                              else if (_errorMessage.isNotEmpty)
                                Center(
                                    child: Text(_errorMessage,
                                        style: TSFont.regular.body.withColor(
                                            TS_color.additionalColor.red)))
                              else
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Total Kalori',
                                            style: TSFont.semiBold.large),
                                        Text(
                                          '${_totalCalories.toStringAsFixed(0)} kal', // Tampilkan dari state
                                          style: TSFont.bold.large,
                                        ),
                                      ],
                                    ),
                                    Divider(
                                        color: TS_color.monochrome.lightGrey,
                                        thickness: 1.5,
                                        height: 24),

                                    // Tampilkan setiap seksi kategori sesuai urutan
                                    _buildCategorySection('Karbohidrat', '🍚',
                                        Colors.orange, _hasilAnalisis),
                                    _buildCategorySection('Protein', '🍗',
                                        Colors.red, _hasilAnalisis),
                                    _buildCategorySection('Lemak', '🍳',
                                        Colors.blue, _hasilAnalisis),
                                    _buildCategorySection('Serat', '🌿',
                                        Colors.green, _hasilAnalisis),

                                    // Tombol Kembali ke Beranda (contoh)
                                    const SizedBox(height: 24),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            TS_color.secondaryGreen.c3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        minimumSize:
                                            const Size(double.infinity, 50),
                                      ),
                                      onPressed: () => Navigator.of(context)
                                          .popUntil((route) => route.isFirst),
                                      child: Text('Kembali ke Beranda',
                                          style: TSFont.bold.large.withColor(
                                              TS_color.monochrome.black)),
                                    )
                                  ],
                                )
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

  Widget _buildFoodItemRow(
      String name, String quantity, String unit, String calories) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 3,
              child: Text(name,
                  style: TSFont.regular.body
                      .withColor(TS_color.monochrome.black))),
          Expanded(
              flex: 2,
              child: Text('$quantity $unit',
                  style: TSFont.semiBold.body.withColor(TS_color.mainTosca.c5),
                  textAlign: TextAlign.center)),
          Expanded(
              flex: 2,
              child: Text('$calories kal',
                  style: TSFont.semiBold.body
                      .withColor(TS_color.secondaryGreen.c5),
                  textAlign: TextAlign.right)),
        ],
      ),
    );
  }

  Widget _buildCategorySection(String title, String icon, Color titleColor,
      List<KomponenMakanan> allFoods) {
    Map<KomponenMakanan, int> foodsInCategory = {};
    for (var food in allFoods) {
      for (int i = 0; i < food.kategori.length; i++) {
        if (food.kategori[i] == title) {
          foodsInCategory[food] = i; // Simpan makanan dan indeks kategorinya
        }
      }
    }

    var sortedItems = foodsInCategory.entries.toList()
      ..sort((a, b) => b.key.kuantitasNutrisi[b.value]
          .compareTo(a.key.kuantitasNutrisi[a.value]));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(icon, style: const TextStyle(fontSize: 20)),
              const SizedBox(width: 8),
              Text(title, style: TSFont.bold.h3.withColor(titleColor)),
            ],
          ),
          const SizedBox(height: 8),
          if (sortedItems.isEmpty)
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                'Tidak ada mengandung $title',
                style: TSFont.regular.body.withColor(TS_color.monochrome.grey),
              ),
            )
          else
            ...sortedItems.map((entry) {
              final food = entry.key;
              final index = entry.value;
              return _buildFoodItemRow(
                food.nama,
                food.kuantitas[index].toInt().toString(),
                food.satuan[index],
                food.kuantitasNutrisi[index].toStringAsFixed(0),
              );
            }).toList(),
          const SizedBox(height: 8),
          Divider(color: TS_color.monochrome.lightGrey),
        ],
      ),
    );
  }
}
