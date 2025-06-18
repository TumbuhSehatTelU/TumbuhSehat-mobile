import 'dart:convert';

ApiResponseModel apiResponseModelFromJson(String str) =>
    ApiResponseModel.fromJson(json.decode(str));

class ApiResponseModel {
  final String status;
  final List<Detection> detections;

  ApiResponseModel({
    required this.status,
    required this.detections,
  });

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) =>
      ApiResponseModel(
        status: json["status"],
        detections: List<Detection>.from(
            json["detections"].map((x) => Detection.fromJson(x))),
      );
}

class Detection {
  final String className;
  final int areaPixels;

  Detection({
    required this.className,
    required this.areaPixels,
  });

  factory Detection.fromJson(Map<String, dynamic> json) => Detection(
        className: json["class_name"],
        areaPixels: json["area_pixels"],
      );
}
