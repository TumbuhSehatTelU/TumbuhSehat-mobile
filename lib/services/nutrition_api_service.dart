import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class NutritionApiService {
  final Dio _dio = Dio();
  final String _apiUrl =
      'https://syahrezaadnanalazhar-tumbuh-sehat-food-segmentation.hf.space/predict';

  Future<String> getNutritionData(String imagePath) async {
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
        return response.data.toString();
      } else {
        return "Error: Server returned status code ${response.statusCode}";
      }
    } on DioException catch (e) {
      // Periksa apakah ada response dari server untuk info lebih detail
      if (e.response != null) {
        return "Error ${e.response?.statusCode}: ${e.response?.data.toString()}";
      }
      return "Error sending request: ${e.message}";
    } catch (e) {
      return "An unexpected error occurred: $e";
    }
  }
}
