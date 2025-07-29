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
              minPixels: 1500,
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
              minPixels: 1500,
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
              minPixels: 1500,
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
              minPixels: 1500,
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
              minPixels: 1500,
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
              minPixels: 1500,
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

// TAHU GORENG
  'tahu_goreng': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Protein',
        satuan: 'potong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
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
      KategoriInfo(
        namaKategori: 'Lemak',
        satuan: 'potong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 54),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 108),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 162),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 216),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 270),
        ],
      ),
    ],
  ),

// AYAM GORENG
  'ayam_goreng': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Protein',
        satuan: 'potong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
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
        namaKategori: 'Lemak',
        satuan: 'potong',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 90),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 180),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 270),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 360),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 450),
        ],
      ),
    ],
  ),

// PISANG
  'buah_pisang': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Karbohidrat',
        satuan: 'buah',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 108),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 216),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 324),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 432),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 540),
        ],
      ),
      KategoriInfo(
        namaKategori: 'Serat',
        satuan: 'buah',
        satuanNutrisi: 'gram',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 3),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 6),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 9),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 12),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 15),
        ],
      ),
    ],
  ),

// SAYUR KANGKUNG
  'sayur_kangkung': FoodData(
    infoPerKategori: [
      KategoriInfo(
        namaKategori: 'Lemak',
        satuan: 'sdm',
        satuanNutrisi: 'kkal',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 6),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 12),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 18),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 24),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 30),
        ],
      ),
      KategoriInfo(
        namaKategori: 'Serat',
        satuan: 'sdm',
        satuanNutrisi: 'gram',
        aturanRentangPiksel: [
          PixelRangeRule(
              minPixels: 1500,
              maxPixels: 10000,
              kuantitas: 1,
              kuantitasNutrisi: 0.5),
          PixelRangeRule(
              minPixels: 10001,
              maxPixels: 25000,
              kuantitas: 2,
              kuantitasNutrisi: 1),
          PixelRangeRule(
              minPixels: 25001,
              maxPixels: 40000,
              kuantitas: 3,
              kuantitasNutrisi: 1.5),
          PixelRangeRule(
              minPixels: 40001,
              maxPixels: 50000,
              kuantitas: 4,
              kuantitasNutrisi: 2),
          PixelRangeRule(
              minPixels: 50001,
              // maxPixels: 60000,
              maxPixels: 409600,
              kuantitas: 5,
              kuantitasNutrisi: 2.5),
        ],
      ),
    ],
  ),
};
