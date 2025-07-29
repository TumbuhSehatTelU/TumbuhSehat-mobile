class KomponenMakanan {
  final String nama;
  final List<String> kategori;
  final List<double> kuantitas;
  final List<String> satuan;
  final List<double> kuantitasNutrisi;
  final List<String> satuanKuantitasNutrisi;

  KomponenMakanan({
    required this.nama,
    required this.kategori,
    required this.kuantitas,
    required this.satuan,
    required this.kuantitasNutrisi,
    required this.satuanKuantitasNutrisi,
  });

  @override
  String toString() {
    return 'KomponenMakanan(\n'
        '  nama: $nama,\n'
        '  kategori: $kategori,\n'
        '  kuantitas: $kuantitas,\n'
        '  satuan: $satuan,\n'
        '  kuantitasNutrisi: $kuantitasNutrisi,\n'
        '  satuanKuantitasNutrisi: $satuanKuantitasNutrisi\n'
        ')';
  }
}

class FoodData {
  final List<KategoriInfo> infoPerKategori;

  FoodData({required this.infoPerKategori});
}

class KategoriInfo {
  final String namaKategori;
  final String satuan;
  final String satuanNutrisi;
  final List<PixelRangeRule> aturanRentangPiksel;

  KategoriInfo({
    required this.namaKategori,
    required this.satuan,
    required this.satuanNutrisi,
    required this.aturanRentangPiksel,
  });
}

class PixelRangeRule {
  final int minPixels;
  final int maxPixels;
  final double kuantitas;
  final double kuantitasNutrisi;

  PixelRangeRule({
    required this.minPixels,
    required this.maxPixels,
    required this.kuantitas,
    required this.kuantitasNutrisi,
  });
}
