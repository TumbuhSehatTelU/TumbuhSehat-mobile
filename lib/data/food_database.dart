import 'package:mobile_tumbuh_sehat/models/komponen_makanan.dart';

final Map<String, FoodData> foodDatabase = {
  'nasi': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Karbohidrat',
        satuan: 'centong',
        satuanNutrisi: 'kal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 50000,
              kuantitas: 0.5,
              kuantitasNutrisi: 80),
          PixelRangeRule(
              minPixels: 50001,
              maxPixels: 150000,
              kuantitas: 1,
              kuantitasNutrisi: 160),
          PixelRangeRule(
              minPixels: 150001,
              maxPixels: 999999,
              kuantitas: 1.5,
              kuantitasNutrisi: 240),
        ],
      ),
    ],
  ),

  
  'telur_dadar': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Protein',
        satuan: 'butir',
        satuanNutrisi: 'kal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 100000,
              kuantitas: 0.5,
              kuantitasNutrisi: 35),
          PixelRangeRule(
              minPixels: 100001,
              maxPixels: 200000,
              kuantitas: 1,
              kuantitasNutrisi: 70),
          PixelRangeRule(
              minPixels: 200001,
              maxPixels: 999999,
              kuantitas: 1.5,
              kuantitasNutrisi: 105),
        ],
      ),
      KategoriInfo(
        namaKategori: 'Lemak',
        satuan: 'butir', 
        satuanNutrisi: 'kal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 100000,
              kuantitas: 0.5,
              kuantitasNutrisi: 25),
          PixelRangeRule(
              minPixels: 100001,
              maxPixels: 200000,
              kuantitas: 1,
              kuantitasNutrisi: 50),
          PixelRangeRule(
              minPixels: 200001,
              maxPixels: 999999,
              kuantitas: 1.5,
              kuantitasNutrisi: 75),
        ],
      ),
    ],
  ),

  'kering_tempe': FoodData(
    infoPerKategori: [
    ],
  ),

  'cap_cay': FoodData(
    infoPerKategori: [
    ],
  ),

};
