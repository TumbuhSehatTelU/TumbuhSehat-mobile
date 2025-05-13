import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mobile_tumbuh_sehat/pages/prediksi%20gizi/analisis_gizi_scan.dart';

class ScanMakanan extends StatelessWidget {
  const ScanMakanan({super.key});

  Future<CameraController> _initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) {
      throw Exception("Tidak ada kamera yang tersedia");
    }

    final controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller.initialize();
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Scan Makanan"),
        centerTitle: true,
      ),
      body: FutureBuilder<CameraController>(
        future: _initializeCamera(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData) {
            return const Center(child: Text("Gagal mengakses kamera"));
          }

          final controller = snapshot.data!;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<List<CameraDescription>>(
                future: availableCameras(),
                builder: (context, cameraSnapshot) {
                  if (!cameraSnapshot.hasData) return const SizedBox();
                  return Column();
                },
              ),
              const SizedBox(height: 10),

              // KOTAK KAMERA DENGAN ROUND EDGE DAN FILL
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Membulatkan sudut
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: FittedBox(
                    fit: BoxFit.cover, // Kamera memenuhi kotak
                    child: SizedBox(
                      width: controller.value.previewSize?.height,
                      height: controller.value.previewSize?.width,
                      child: CameraPreview(controller),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () async {
                        final picture = await controller.takePicture();
                        if (context.mounted) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AnalisisGiziScan(imagePath: picture.path),
                            ),
                          );
                        }
                      },
                      icon: const Icon(Icons.camera_front),
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.flash_on, size: 32),
                    onPressed: () {
                      // Aksi untuk mengaktifkan flash nanti
                    },
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
