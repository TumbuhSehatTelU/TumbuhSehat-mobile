import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/data/datasources/food_database.dart';
import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/domain/entities/food_component.dart';
import 'package:mobile_tumbuh_sehat/app/core/models/api_response_model.dart';

class FoodProcessorService {
  List<KomponenMakanan> processDetections(List<Detection> detections) {
    List<KomponenMakanan> hasilKomponen = [];

    for (var detection in detections) {
      final foodData = foodDatabase[detection.className];

      if (foodData != null) {
        final komponen = _createKomponenFromFoodData(detection, foodData);
        hasilKomponen.add(komponen);
      } else {
        print("Peringatan: Makanan '${detection.className}' tidak ditemukan di database.");
      }
    }
    return hasilKomponen;
  }

  KomponenMakanan _createKomponenFromFoodData(Detection detection, FoodData foodData) {
    List<String> listKategori = [];
    List<double> listKuantitas = [];
    List<String> listSatuan = [];
    List<double> listKuantitasNutrisi = [];
    List<String> listSatuanNutrisi = [];

    for (var kategoriInfo in foodData.infoPerKategori) {
      for (var aturan in kategoriInfo.aturanRentangPiksel) {
        if (detection.areaPixels >= aturan.minPixels && detection.areaPixels <= aturan.maxPixels) {
          listKategori.add(kategoriInfo.namaKategori);
          listKuantitas.add(aturan.kuantitas);
          listSatuan.add(kategoriInfo.satuan);
          listKuantitasNutrisi.add(aturan.kuantitasNutrisi);
          listSatuanNutrisi.add(kategoriInfo.satuanNutrisi);
          break;
        }
      }
    }

    final displayName = detection.className
        .replaceAll('_', ' ')
        .split(' ')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
    
    
    return KomponenMakanan(
      nama: displayName,
      kategori: listKategori,
      kuantitas: listKuantitas,
      satuan: listSatuan,
      kuantitasNutrisi: listKuantitasNutrisi,
      satuanKuantitasNutrisi: listSatuanNutrisi,
    );
  }
}
