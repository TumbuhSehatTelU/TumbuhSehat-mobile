import 'package:mobile_tumbuh_sehat/models/komponen_makanan.dart';

final Map<String, FoodData> foodDatabase = {
// NASI
  'nasi': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Karbohidrat',
        satuan: 'centong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 10000,
              kuantitas: 0.5,
              kuantitasNutrisi: 125),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 1,
              kuantitasNutrisi: 200),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 2,
              kuantitasNutrisi: 375),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 3,
              kuantitasNutrisi: 600),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 4,
              kuantitasNutrisi: 750),
        ],
      ),
    ],
  ),

// TELUR DADAR
  'telur_dadar': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Protein',
        satuan: 'butir',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 26),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 52),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 78),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 104),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 130),
        ],
      ),
      KategoriInfo(
        namaKategori: 'Lemak',
        satuan: 'butir',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 63),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 126),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 189),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 252),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 315),
        ],
      ),
    ],
  ),

// TEMPE GORENG
  'tempe_goreng': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Protein',
        satuan: 'potong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 26),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 52),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 78),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 104),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 130),
        ],
      ),
      KategoriInfo(
        namaKategori: 'Lemak',
        satuan: 'potong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 72),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 144),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 216),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 288),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 360),
        ],
      ),
      KategoriInfo(
        namaKategori: 'Karbohidrat',
        satuan: 'potong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 0,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 20),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 40),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 60),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 80),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 100),
        ],
      ),
    ],
  ),
};
