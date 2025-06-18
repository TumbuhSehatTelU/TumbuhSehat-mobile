import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class NutritionApiService {
  final Dio _dio = Dio();
  final String _apiUrl =
      'https://syahrezaadnanalazhar-tumbuh-sehat-food-segmentation.hf.space/predict';

  Future<Map<String, dynamic>> getNutritionData(String imagePath) async {
    try {
      String fileName = imagePath.split('/').last;

      // Tentukan tipe konten berdasarkan ekstensi file
      String fileExtension = fileName.split('.').last.toLowerCase();
      String contentType = 'image/jpeg'; // Default
      if (fileExtension == 'png') {
        contentType = 'image/png';
      }

      // INI BAGIAN YANG DIPERBAIKI
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          imagePath,
          filename: fileName,
          // TAMBAHKAN contentType SECARA EKSPLISIT
          contentType: MediaType.parse(contentType),
        ),
      });

      final response = await _dio.post(_apiUrl, data: formData);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(
            'Gagal mendapatkan data: Status ${response.statusCode}');
      }
    } on DioException catch (e) {
      // Periksa apakah ada response dari server untuk info lebih detail
      if (e.response != null) {
        throw Exception(
            'Error ${e.response?.statusCode}: ${e.response?.data.toString()}');
      }
      throw Exception('Error request API: ${e.message}');
    } catch (e) {
      throw Exception('Terjadi error tak terduga: $e');
    }
  }
}
