import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HasilAnalisisGizi(),
  ));
}

class HasilAnalisisGizi extends StatelessWidget {
  const HasilAnalisisGizi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar di belakang
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://via.placeholder.com/400x200',
              height: 200, // Ukuran gambar tetap 200px
              fit: BoxFit.cover,
            ),
          ),

          // Container Analisis yang bisa di-scroll dan overlap gambar secara perlahan
          Positioned.fill(
            top: 10, // Menindihi gambar sejauh 10px
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                      height: 190), // Jarak agar awalnya tidak overlap
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: List.generate(
                        30,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text('Data Analisis $index',
                              style: const TextStyle(fontSize: 18)),
                        ),
                      ),
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
